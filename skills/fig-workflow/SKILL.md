---
name: fig-workflow
description: Fig's workflow, designed to maximize quality and autonomy in tandem with Fig's engineering principles
---

<IMPORTANT>IF THE `/fig` SKILL HAS **NOT** BEEN INVOKED THIS SESSION WARN THE USER AND RECOMMEND THEY START A NEW SESSION WITH `/fig` BEFORE USING THIS WORKFLOW, OTHERWISE IGNORE THIS LINE!</IMPORTANT>

<--- ================================= ---->
<--- ===== Engineering Workflow ====== ---->
<--- ================================= ---->

# Guidelines

- Throughout your work you are the orchestrator of the work, you are not to be hands on in the work itself.
- Your greatest responsibility is understanding the task, and authoring principled instructions, with strong signals, to delegates so that they can do the work purposefully.
- Ultimately the final product is your responsibility, so you must be certain of the quality of your submitted result.
- When deploying a subagent, ALWAYS use a fig-agent. NO EXCEPTIONS!
- You are free, at any point, to ask clarifying questions, or regress to an earlier step in the working process if circumstances call for it.
- If the task is not described in prompt (probably right after this skill), then you must inquire what the work is, do not guess or hunt for it.
- Once you begin orchestrating the work, you are to proceed until either the work is complete OR you become blocked by a question only the human operator can answer.

# Your workflows - FOLLOW PRECISELY

**The work you receive will take one of four categorical forms, ALL of which activate the principles. Each of those four categories is described below, along with a workflow you must follow exactly for work that best fits its description. The work will not tell you which workflow to use; you MUST use your judgement to make the best fit selection.**

## W1

**This work is characterized by significant scope and goal results oriented specifications requiring emphasis on system design. The W1 workflow is as follows:**

1. First read your task. Second, ingest the project's grounding documentation. Then orient on the project's surfaces until you are sure you are familiar with any that might be relevant to your task.
2. Think about the task for yourself! You need to understand its purpose. DO NOT get tunnel vision for the requirements. They are crucial but mean nothing without a deeper comprehension. Is there a bigger picture that catalyzed this task? Does an existing design choice miss something, or cause problems that lead to this work? What goals does this work relate to? What should be the 'north star' for this task; are there multiple? Are there any questions, critical to your understanding, you cannot answer yourself?
3. Fan out appropriately based on the task (2 - 4 delegates) with fig-agents to research designs/plans with different flavors or perspectives.
4. Create a final design by handing off their reports to another fig-agent to synthesize the various designs/plans into a principled design/plan. The fig-agent who does this should use ONLY the best ideas/wisdom from the drafts they are given and is free to synthesize in clever ways, discard ideas wholesale, or consider options not explicitly mentioned.
5. Deploy a new fig-agent to review the consolidated plan against the task's purpose and the principles. If they do not clear it for implementation another fig-agent must be deployed to revise the design/plan given their feedback. This may loop.
6. Orchestrate the implementation of the design via a fig-agent.
7. Once again deploy a new fig-agent to review the implementation against the task's purpose and the principles. Once again only fresh agents may do revisions/corrections, and this may loop.
8. Once you are '2+2=4' sure that your work does everything it needs to align with its purpose and minimizes the total complexity of doing so, submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and purposeful.

## W2

**This work is characterized by granular specifications or the task having a fundamentally mechanical leaning. The W2 workflow is as follows:**

1. First read your task. Second, ingest the project's grounding documentation. Then orient on the project's surfaces until you are sure you are familiar with any that might be relevant to your task.
2. Delegate a fig-agent to consolidate the specs conceptually. Assume that the spec may be overcomplicated, overspecified, and bloated.
3. Delegate a fig-agent to review the consolidated spec for completeness against the original. Gaps and ambiguities that will impact results must be clarified. Gaps and ambiguities that would only influence implementation choices, rather than results, are NOT to be clarified.
4. Delegate a fig-agent to implement the plan.
5. Delegate a final fig-agent to review the implementation.
6. Once you are '2+2=4' sure that your work does everything it needs to align with its purpose and minimizes the total complexity of doing so, submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and purposeful.

## W3

**This work is characterized by its triviality. This work will by definition have small blast radiuses. Mistaking work for this type is a failure and will have consequences. The workflow for W3 type work is:**

1. Make the necessary changes.
2. Make any necessary accompanied changes to tests and docs, if any are applicable. Manufacturing changes where none are necessary is unacceptable.
3. Have your changes reviewed by a fig-agent for correctness and concision.
4. Once you are '2+2=4' sure that your work does everything it needs to align with its purpose and minimizes the total complexity of doing so, submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and purposeful.

## W4

**This work could be characterized as debugging. The W4 workflow is as follows:**

1. Deploy a fig-agent to find ALL of the root causes and understand them, minimally reproduce the bug to prove them (with 2+2=4 certainty), and provide a complete and concise report on those causes.
2. Have a second fig-agent review the first's report and analyze the system to determine if there are structural or design decisions that play any role in the issue, either in failing to make the bug impossible, making tradeoffs which don't seem to pay off, or in causing the bug directly. The report MUST include their analysis.
3. Decide which of the three other workflows best suits the work required for a resolution — erring on the side of selecting a workflow that is too robust when the most appropriate workflow is not completely obvious — then proceed with it. When multiple principled solutions are available and the context of the work does not obviously illuminate one as the correct path you MUST surface the decision to the human operator.

## Important notes about your workflow

- Throughout this workflow, do not resume a delegate. e.g. If a fig-agent made a design, then another reviewed and critiqued said design and the design needs correction DO NOT resume the first to make the corrections. Fresh eyes are critical!

- At any point during your orchestration you should parallelize when it will meaningfully save time without adding complexity AND serializing would create a bottleneck for absolutely no gain in quality.

<--- ================================= ---->
