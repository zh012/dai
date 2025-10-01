#!/usr/bin/env uv run
"""
SDD Kit Project Installation Script

This script installs the SDD Kit (Spec-Driven Development Kit) into a target project,
"""

import sys
import shutil
from pathlib import Path


# Constants
SRC_DIR = Path(__file__).resolve().parent / "src"


def install_for_cursor(target_dir: Path):
    """Install the SDD Kit for Cursor."""
    # setup the ./docs directory for the project
    shutil.copytree(SRC_DIR / "docs", target_dir / "docs", dirs_exist_ok=True)
    print(f"Copied docs directory to: {target_dir / 'docs'}")

    # setup the commands
    cursor_sdd_dir = target_dir / ".cursor" / "commands" / "dai"
    shutil.copytree(SRC_DIR / "commands", cursor_sdd_dir, dirs_exist_ok=True)
    print(f"Copied commands directory to: {cursor_sdd_dir}")

    # copy the personas directory
    cursor_personas_dir = target_dir / ".cursor" / "personas"
    shutil.copytree(SRC_DIR / "personas", cursor_personas_dir, dirs_exist_ok=True)
    print(f"Copied personas directory to: {cursor_personas_dir}")

    # copy the rules directory
    cursor_rules_dir = target_dir / ".cursor" / "rules"
    cursor_rules_dir.mkdir(exist_ok=True)

    front_matter = """---
description: guidelines for using /dai/* commands
---


"""
    for fn in (SRC_DIR / "rules").iterdir():
        if fn.is_file() and fn.name.endswith(".md"):
            rule = fn.read_text()
            (cursor_rules_dir / fn.name).write_text(front_matter + rule)
    print(f"Copied rules directory to: {cursor_rules_dir}")

    # copy the tools directory
    cursor_tools_dir = target_dir / ".cursor" / "tools"
    shutil.copytree(SRC_DIR / "tools", cursor_tools_dir, dirs_exist_ok=True)
    print(f"Copied tools directory to: {cursor_tools_dir}")


if __name__ == "__main__":
    if len(sys.argv) == 1:
        target_dir = Path().resolve()
    else:
        target_dir = Path(sys.argv[1]).expanduser().resolve()
    install_for_cursor(target_dir)
