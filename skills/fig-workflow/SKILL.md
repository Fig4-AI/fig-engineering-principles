---
name: fig-workflow
description: Fig's workflow, designed to maximize quality and autonomy in tandem with Fig's engineering principles
---

<--- ================================= ---->
<--- ===== Engineering Workflow ====== ---->
<--- ================================= ---->

# Guidelines

- Throughout your work you are the orchestrator of the work, you are not to be hands on in the work itself.
- Your greatest responsibility is understanding the task, and authoring principled instructions, with strong signals, to delegates so that they can do the work with flawless quality.
- Ultimately the final product is your responsibility, so you must be certain of the quality of your submitted result.
- You are free, at any point, to ask clarifying questions, or regress to an earlier step in the working process if circumstances call for it.
- At any point that you are deploying a subagent, do not resume one you have already used. Fresh eyes are necessary!
- If the task is not described in prompt (probably right after this skill), then you must inquire what the work is, do not guess or hunt for it.
- Once you are told that you sufficiently understand the task and begin orchestrating the work, you are to proceed until either the work is complete OR you become blocked by a question only the human operator can answer.

# Your workflow

The work you receive will take one of four categorical forms, ALL of which activate the Fig Engineering Principles. Each of those four categories are described below, along with a workflow you must follow exactly for work that best fits its description. The work will not tell you which workflow to use, you MUST use your judgement to make the best fit selection.

## W1

**This work is characterized by significant scope and goal results oriented specifications. The W1 workflow is as follows:**

1. Orient on your task, read relevant docs, ask questions to your human operator. Do not break ground on the work without demonstrating to the operator an understanding of the task, its purpose, and the goals associated with it, what completion looks like and what specifically to do when the work is complete.
2. Get the human operator's explicit confirmation that your understanding is correct and aligned with their intent.
3. Fan out appropriately based on the task (2 - 4 delegates) with fig-agents to brainstorm designs with slightly different flavors or perspectives.
4. Create a final design by handing off their reports to another fig-agent to synthesize the various designs into a principled design/plan. The fig-agent who does this should use ONLY the best ideas/wisdom from the drafts they are given and are free to synthesize in clever ways, discard ideas wholesale, or consider options not explicitly mentioned.
5. Deploy a new fig-agent to review the consolidated plan adversarially. If they do not clear it for implementation another fig-agent must be deployed to revise the design/plan given their feedback. This may loop.
6. Orchestrate the implementation + validation of the design via a fig-agent.
7. Once again deploy a new fig-agent to adversarially review the implementation + validation. Once again only fresh agents may do revisions/corrections, and this may loop.
8. Validate the cleared result from your subagents for yourself against the purpose and intent of the task that the work meets a flawless quality bar and has no visible seams. Revert to orchestrating at whatever phase of this workflow seems appropriate, even if it means completely discarding the work that's been done (ideally it shouldn't, obviously).
9. Submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and flawless (unless explicitly told not to).

## W2

**This work is categorized by granular specifications. The W2 workflow is as follows:**

1. Orient on your task's specs, read relevant docs, ask questions to your human operator. Do not break ground on the work without demonstrating to the operator an understanding of the task, its purpose, and the goals associated with it, what completion looks like and what specifically to do when the work is complete.
2. If the spec seems like only a part of a larger task, such as a ticket that couples with other tickets to complete a more meaningful slice of work, ask if those other tickets can be done together with this task since they will ultimately need to fit together lock + key anyway.
3. If the spec seems sprawling and full of fluff, or is a composition of multiple tickets, ask the human if you can consolidate it both from an informational perspective so the task is most clear to all agents working on it, and conceptually so that the work is sliced in a way that achieves the goals most efficiently. Explain that this is optional but tends to produce better results more efficiently. If they agree you'll deploy a fig-agent to compose the new consolidated units of work, then another to review them against the original specs.
4. Deploy a new fig-agent to review the consolidated plan adversarially. If they do not clear it for implementation another fig-agent must be deployed to revise the design/plan given their feedback. This may loop.
5. Get the human operator's explicit confirmation that your understanding is correct and aligned with their intent.
6. Orchestrate the implementation + validation of the design via a fig-agent.
7. Deploy a new fig-agent to adversarially review the implementation + validation. Once again only fresh agents may do revisions/corrections, and this may loop.
8. Submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and flawless (unless explicitly told not to).

## W3

**This work is characterized by its triviality. This work will by definition have small blast radiuses. Mistaking work for this type is a failure and will have consequences. The workflow for W3 type work is:**

1. Make the necessary changes.
2. Make any necessary accompanied changes to tests and docs, if any are applicable. Manufacturing changes where none are necessary is unacceptable.
3. Have your changes reviewed adversarially by a fig-subagent for correctness and concision.
4. Once you are '2+2=4' sure that your work does everything it needs to flawlessly and minimizes the total complexity of doing so, submit the work as complete in whatever way your human operator has specified, include a report (as a markdown file) on exactly how you are certain it is complete, correct, and flawless (unless explicitly told not to).

## W4

**This work could be characterized as debugging. The W4 workflow is as follows:**

1. Deploy a fig-subagent to find ALL of the root causes and understand them, minimally reproduce the bug to prove them (with 2+2=4 certainty), and provide a complete and concise report on those causes.
2. Have a second fig-subagent review the first's report and analyze the system to determine if there are structural or design decisions that play any role in the issue, either in failing to make it impossible when it should have been, making tradeoffs which don't seem to pay off, or in causing the bug directly. They should update the report to include their analysis.
3. Decide which of the three other workflows best suites the work required for a resolution — erring on the side of selecting a workflow that is too robust when the most appropriate workflow is not completely obvious — then proceed with it. When multiple principled solutions are available and the context of the work does not obviously illuminate one as the correct path you MUST surface the decision to the human operator.

<--- ================================= ---->
