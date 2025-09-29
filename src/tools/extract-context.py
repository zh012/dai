#!/usr/bin/env uv run
# /// script
# dependencies = []
# ///

"""
Standalone Context Extractor Script
Usage: uv run extract-context.py --document-ids PRD-2025-01-15-001 --command execute --focus-areas implementation
"""

import re
import argparse
import os
import sys
from typing import List, Dict, Any, Optional
import logging
from dataclasses import dataclass

# Constants
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
DEFAULT_DOCS_ROOT = os.path.join(os.path.dirname(SCRIPT_DIR), "..", "docs")


@dataclass
class TaskContext:
    """Context about the current task"""

    command: str
    task_id: Optional[str] = None
    phase: Optional[str] = None
    document_type: Optional[str] = None
    focus_areas: List[str] = None
    constraints: List[str] = None

    def __post_init__(self):
        if self.focus_areas is None:
            self.focus_areas = []
        if self.constraints is None:
            self.constraints = []


class SmartContextExtractor:
    """Standalone context extractor without external dependencies"""

    def __init__(self, docs_root: str = DEFAULT_DOCS_ROOT):
        self.docs_root = docs_root
        self.logger = self._setup_logging()
        self.relevance_keywords = self._load_relevance_keywords()

    def _setup_logging(self):
        """Setup simple logging"""
        logging.basicConfig(
            level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
        )
        return logging.getLogger(__name__)

    def _load_document(self, document_id: str) -> Optional[Dict[str, Any]]:
        """Load document from file system"""
        doc_type = self._get_document_type_from_id(document_id)
        if not doc_type:
            return None

        # Construct search paths based on document type
        search_paths = self._get_search_paths(doc_type, document_id)

        for search_path in search_paths:
            if os.path.exists(search_path):
                try:
                    with open(search_path, "r", encoding="utf-8") as f:
                        content = f.read()

                    return {
                        "id": document_id,
                        "type": doc_type,
                        "content": content,
                        "path": search_path,
                    }
                except Exception as e:
                    self.logger.warning(f"Error reading {search_path}: {e}")
                    continue

        return None

    def _get_search_paths(self, doc_type: str, document_id: str) -> List[str]:
        """Generate possible file paths to search for the document"""
        paths = []

        # Try structured paths first
        type_mappings = {
            "PRD": "prd",
            "ARCH": "architecture",
            "DES": "design",
            "SPR": "sprint",
            "IMP": "implementation",
            "CM": "domain/context-map",
            "UL": "domain/ubiquitous-language",
            "RTM": "rtm",
        }

        base_dir = self.docs_root
        subdir = type_mappings.get(doc_type, "")

        if subdir:
            paths.append(os.path.join(base_dir, subdir, f"{document_id}.md"))
            paths.append(os.path.join(base_dir, subdir, f"{document_id}-*.md"))

        # Try root directory
        paths.append(os.path.join(base_dir, f"{document_id}.md"))
        paths.append(os.path.join(base_dir, f"{document_id}-*.md"))

        # Search for actual files matching wildcards
        import glob

        for pattern in paths:
            if "*" in pattern:
                matches = glob.glob(pattern)
                if matches:
                    return matches  # Return only the matches

        return paths

    def _get_document_type_from_id(self, document_id: str) -> Optional[str]:
        """Extract document type from document ID"""
        # Expected format: TYPE-YYYY-MM-DD-NNN-TITLE
        parts = document_id.split("-")
        return parts[0] if parts else None

    def _extract_relevant_content(
        self, content: str, doc_type: str, task_context: TaskContext
    ) -> str:
        """Extract relevant content based on document type and task"""
        extracted_parts = []

        # Always include metadata
        metadata = self._extract_metadata(content)
        if metadata:
            extracted_parts.append(f"## Document Metadata\n{metadata}\n")

        # Document-specific extraction
        if doc_type == "PRD":
            extracted_parts.extend(self._extract_prd_content(content, task_context))
        elif doc_type in ["ARCH", "DES"]:
            extracted_parts.extend(
                self._extract_architecture_content(content, task_context)
            )
        elif doc_type == "SPR":
            extracted_parts.extend(self._extract_sprint_content(content, task_context))
        else:
            extracted_parts.append(self._extract_generic_content(content, task_context))

        return "\n\n".join([p for p in extracted_parts if p.strip()])

    def _extract_metadata(self, content: str) -> str:
        """Extract document metadata section"""
        pattern = r"## Document Metadata[\s\S]*?(?=## [^#]|\Z)"
        match = re.search(pattern, content)
        return match.group(0).strip() if match else ""

    def _extract_prd_content(
        self, content: str, task_context: TaskContext
    ) -> List[str]:
        """Extract PRD-specific content"""
        parts = []

        if "requirements" in task_context.focus_areas or not task_context.focus_areas:
            # Extract requirements summary
            req_pattern = r"### 4\.\d+.*[\s\S]*?(?=### \d+\.\d+|$)"
            req_matches = re.findall(req_pattern, content)[:3]  # Limit to first 3
            if req_matches:
                parts.append("## Requirements Summary\n" + "\n".join(req_matches))

        if "acceptance" in task_context.focus_areas:
            # Extract acceptance criteria
            accept_pattern = r"\*\*- \d+\.\d+\.\d+ \*\*: .*"
            accept_matches = re.findall(accept_pattern, content)[:5]  # First 5
            if accept_matches:
                parts.append("## Acceptance Criteria\n" + "\n".join(accept_matches))

        if not task_context.focus_areas:
            # Default: executive summary and success criteria
            exec_pattern = r"## 1\. Executive Summary[\s\S]*?(?=## 2\.)"
            exec_match = re.search(exec_pattern, content)
            if exec_match:
                parts.append("## Executive Summary\n" + exec_match.group(0))

        return parts

    def _extract_architecture_content(
        self, content: str, task_context: TaskContext
    ) -> List[str]:
        """Extract architecture/design content"""
        parts = []

        if "tech_stack" in task_context.focus_areas or not task_context.focus_areas:
            # Extract technology stack
            tech_pattern = r"### \d+\.\d+ Technology Stack[\s\S]*?(?=### \d+\.\d+|$)"
            tech_match = re.search(tech_pattern, content)
            if tech_match:
                parts.append("## Technology Stack\n" + tech_match.group(0))

        if "patterns" in task_context.focus_areas:
            # Extract architectural patterns
            pattern_regex = (
                r"### \d+\.\d+ Architectural Patterns[\s\S]*?(?=### \d+\.\d+|$)"
            )
            pattern_match = re.search(pattern_regex, content)
            if pattern_match:
                parts.append("## Architectural Patterns\n" + pattern_match.group(0))

        if not task_context.focus_areas:
            # Default: overview and integration
            overview_pattern = r"## 1\. Executive Summary[\s\S]*?(?=## 2\.)"
            overview_match = re.search(overview_pattern, content)
            if overview_match:
                parts.append("## Architecture Overview\n" + overview_match.group(0))

        return parts

    def _extract_sprint_content(
        self, content: str, task_context: TaskContext
    ) -> List[str]:
        """Extract sprint planning content"""
        parts = []

        if "tasks" in task_context.focus_areas or not task_context.focus_areas:
            # Extract task assignments
            task_pattern = r"### \d+\.\d+ Task Assignments[\s\S]*?(?=### \d+\.\d+|$)"
            task_match = re.search(task_pattern, content)
            if task_match:
                parts.append("## Task Assignments\n" + task_match.group(0))

        if "dependencies" in task_context.focus_areas:
            # Extract dependencies
            dep_pattern = r"### \d+\.\d+ Dependencies[\s\S]*?(?=### \d+\.\d+|$)"
            dep_match = re.search(dep_pattern, content)
            if dep_match:
                parts.append("## Dependencies\n" + dep_match.group(0))

        if not task_context.focus_areas:
            # Default: sprint goal and success metrics
            goal_pattern = r"### \d+\.\d+ Sprint Goal[\s\S]*?(?=### \d+\.\d+|$)"
            goal_match = re.search(goal_pattern, content)
            if goal_match:
                parts.append("## Sprint Goal\n" + goal_match.group(0))

        return parts

    def _extract_generic_content(self, content: str, task_context: TaskContext) -> str:
        """Generic extraction for unknown document types"""
        # Extract first few major sections
        major_sections = re.findall(r"^## [^#]+$", content, re.MULTILINE)
        extracted = []

        for i, section_match in enumerate(major_sections[:3]):  # First 3 major sections
            section_name = section_match.strip("# ").strip()
            section_content = re.search(
                rf"{re.escape(section_match)}\s*([^#]*?)(?=^## |\Z)",
                content,
                re.MULTILINE | re.DOTALL,
            )
            if section_content:
                extracted.append(
                    f"## {section_name}\n{section_content.group(1).strip()}"
                )

        return "\n\n".join(extracted)


class QuickContextExtractor:
    """Simplified interface for common usage patterns"""

    @staticmethod
    def get_implementation_context(
        document_ids: List[str],
        task_id: Optional[str] = None,
        include_testing: bool = False,
        include_quality: bool = True,
    ) -> str:
        """Get context for implementation tasks"""
        extractor = SmartContextExtractor()

        task_context = TaskContext(
            command="execute",
            task_id=task_id,
            phase="execute",
            focus_areas=["implementation", "acceptance"],
        )

        if include_testing:
            task_context.focus_areas.append("testing")
        if include_quality:
            task_context.focus_areas.append("quality")

        return extractor._multi_document_extract(document_ids, task_context)

    @staticmethod
    def get_design_context(
        document_ids: List[str], focus_areas: List[str] = None
    ) -> str:
        """Get context for design decisions"""
        extractor = SmartContextExtractor()

        task_context = TaskContext(
            command="design",
            phase="design",
            focus_areas=focus_areas or ["tech_stack", "patterns"],
        )

        return extractor._multi_document_extract(document_ids, task_context)

    @staticmethod
    def get_planning_context(
        document_ids: List[str], include_dependencies: bool = True
    ) -> str:
        """Get context for sprint planning"""
        extractor = SmartContextExtractor()

        task_context = TaskContext(command="plan", phase="plan", focus_areas=["tasks"])

        if include_dependencies:
            task_context.focus_areas.append("dependencies")

        return extractor._multi_document_extract(document_ids, task_context)


def main():
    """Main CLI interface"""
    parser = argparse.ArgumentParser(
        description="Standalone Context Extractor for SDD Kit - run with: uv run extract-context.py"
    )

    parser.add_argument(
        "--document-ids",
        nargs="+",
        required=True,
        help="Document IDs to extract from (e.g., PRD-2025-01-15-001)",
    )

    parser.add_argument(
        "--command",
        choices=["init", "prd", "design", "plan", "execute"],
        required=True,
        help="Type of task/context needed",
    )

    parser.add_argument(
        "--task-id", help="Specific task ID for relevance (e.g., DEV-001)"
    )

    parser.add_argument("--focus-areas", nargs="*", help="Specific areas to focus on")

    parser.add_argument("--constraints", nargs="*", help="Constraints to consider")

    parser.add_argument(
        "--docs-root",
        default=DEFAULT_DOCS_ROOT,
        help="Root directory containing documents",
    )

    parser.add_argument(
        "--max-context",
        default=4000,
        type=int,
        help="Maximum context size in characters",
    )

    parser.add_argument("--output", help="Output file path (optional)")

    parser.add_argument(
        "--stats", action="store_true", help="Show extraction statistics"
    )

    parser.add_argument("--verbose", action="store_true", help="Enable verbose logging")

    args = parser.parse_args()

    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)

    print("🚀 Extracting context using uv run...")

    try:
        extractor = SmartContextExtractor(docs_root=args.docs_root)

        # Create task context
        task_context = TaskContext(
            command=args.command,
            task_id=args.task_id,
            phase=args.command,
            focus_areas=args.focus_areas or [],
            constraints=args.constraints or [],
        )

        # Perform extraction
        context = extractor.extract_multi_document_context(
            args.document_ids, task_context, max_size=args.max_context
        )

        if args.output:
            with open(args.output, "w", encoding="utf-8") as f:
                f.write(context)
            print(f"✅ Context saved to {args.output}")
        else:
            print(context)

        if args.stats:
            print("\n📊 Extraction Statistics:")
            print(f"   Documents: {len(args.document_ids)}")
            print(f"   Command: {args.command}")
            print(f"   Focus areas: {args.focus_areas or []}")
            print(f"   Output size: {len(context)} characters")
            print(f"   Approx. tokens: {len(context.split()) * 1.3:.0f}")

    except Exception as e:
        print(f"❌ Error during extraction: {e}")
        if args.verbose:
            import traceback

            traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
