---
vertion: v1
---

# Purpose

I want to create a Spec-Driven Development kit, based on DDD (Domain-Driven Design) and TDD (Test-Driven Development) principle and practices, to guide the AI assisted software development.


# This kit will include the following artifacts:

- Documentation templates
- Dcoumentation structures
- `Commands` - the prompts to define persona/guidance for ai to play differenct roles while executing different tasks during the development process
- `Rules` - constrain the ai's input, output and behavior while making changes
- Scripts (sh, py or ts ...) to help preparing the context according to the task and docment linkages

# All these artifacts should be desigend to serve the following task during the development process:

## 1. Project initialization

    * Command: init

    * Green field project: Ai agent would interactively comminicate with user to clarify the produc vision, and setup the top level system architect, context map and ubiquitous language glossary.

    * Brown fied project: Ai agent would scan the current code base to identify product vision, and summary sytem arhictect, context map and ubiquitos language glossary. Then, confim the refine with user.

## 2. PRD creation

    * Command: prd

    * Create prd interactively with user

    * Output the prd doc with the given formate and to the defined location


## 3. Pick solution and finalize the tech design

    * Command: design

    * Analyize the requirement and determine the techincal solution

    * Breakdown the tasks to achieve the design for each use case

    * Output the design doc with the given format and to the defined location


## 4. Plan the tasks

    * Command: plan

    * Create task tracking doc, link the task doc to just enough contexts

    * Output the task tracking doc with the given foramt and to the defined location


## 5. Execute the task

    * Command: execute

    * Execute the give tasks and keep the task tracking file up to date


# Guidelines

- Document should be given unique ids and sturctured by convension, so that it could be easily referenced and located

- Be careful about the document templates, balance the graduality on each level. The goal is to give the executor enough context, also not overwhelmed.

- While design the prompts to ai agent, please give specific instructions about how to name the doc, determine input outout lcoation and how to link the documents together. Also, you can mention some industry classic books to the agent, and ask the agent to follow the principles from the book.
