<h1 align="center">Fig: <a href="https://en.wikipedia.org/wiki/Fig#:~:text=According%20to%20the%20opinion%20of%20Rabbi,Christ%20withers%20in%20the%20Gospels">the fruit of knowledge</a></h1>

<p align="center"><em>Engineering principles for high quality code without babysitting.</em></p>

<p align="center">
  <a href="https://www.npmjs.com/package/fig-engineering-principles"><img src="https://img.shields.io/npm/v/fig-engineering-principles" alt="npm version"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-PolyForm%20Shield%201.0.0-blue" alt="license"></a>
</p>

<p align="center">
  <a href="#install">Install</a> ·
  <a href="#the-skills">The skills</a> ·
  <a href="#examples">Examples</a> ·
  <a href="#tips-for-using-these-skills">Tips</a> ·
  <a href="#explanations">Explanations</a> ·
  <a href="#orchestration">Orchestration</a> ·
  <a href="#license">License</a>
</p>

---

## Install

<details open>
<summary><strong>🌐 curl</strong></summary>

<br>

```
curl -fsSL https://raw.githubusercontent.com/abelmcelroy/fig-engineering-principles/main/install/install.sh | sh
```

Installs the `/fig` and `/fig-workflow` skills and the `/fig-agent` subagent into `~/.claude/`.

</details>

<details open>
<summary><strong>📦 npm</strong></summary>

<br>

```
npx fig-engineering-principles
```

Same — the `/fig` and `/fig-workflow` skills and the `/fig-agent` subagent.

</details>

<details open>
<summary><strong>🔌 Claude Code plugin</strong></summary>

<br>

```
/plugin marketplace add abelmcelroy/fig-engineering-principles
/plugin install fig@fig-principles
```

</details>

<details open>
<summary><strong>📋 Copy-paste</strong></summary>

<br>

| Copy | To |
| --- | --- |
| [`skills/fig/SKILL.md`](skills/fig/SKILL.md) | `~/.claude/skills/fig/SKILL.md` |
| [`skills/fig-workflow/SKILL.md`](skills/fig-workflow/SKILL.md) | `~/.claude/skills/fig-workflow/SKILL.md` |
| [`agents/fig-agent.md`](agents/fig-agent.md) | `~/.claude/agents/fig-agent.md` |

Tools that read an `AGENTS.md` (Codex, etc.): copy [principles.md](principles.md) into your project's `AGENTS.md`.

</details>

## The skills

| Skill | What it does | When to invoke
| --- | --- | --- |
| **`/fig`** | Makes agents better engineers | Session start |
| **`/fig-workflow`** | Orchestrated workflow for engineering tasks | When you want high quality engineering done autonomously |
| **`/fig-agent`** | Subagent with the same engineering principles | N/A: your agents will know when |

> [!TIP]
> Use `/fig` to review PRs, make small changes, and ask questions about your codebase.
> 
> Use `/fig-workflow` to design + implement in one task, ship ticket, even ship an epic (recommended).

## Examples

<details>
<summary><strong>1 &nbsp;·&nbsp; Clear a PR review, end to end</strong></summary>

<br>

> `/fig`
>
> look at github PR 123. Implement fixes for all the blocking findings, and any cheap, quick wins on the deferrable findings. Anything deferrable that's not a quick win, make a jira ticket under epic EN-1234 and assign it to me. Use a worktree to not interrupt my current branch. Commit, push, then reply to the PR comments, and prune the worktree.

</details>

<details>
<summary><strong>2 &nbsp;·&nbsp; Ship a ticket</strong></summary>

<br>

> `/fig`
>
> `/fig-workflow` jira ticket EN-1234

</details>

<details>
<summary><strong>3 &nbsp;·&nbsp; Three tickets at once, in parallel worktrees</strong></summary>

<br>

> `/fig`
>
> `/fig-workflow` use 3 separate worktrees to implement jira tickets EN-1234, EN-1235, EN-1236, then open PRs to development. Assign me, and request Alice and Bob as reviewers. Prune the worktrees when you're finished.

</details>

<details>
<summary><strong>4 &nbsp;·&nbsp; Combine the principles with your own skills</strong></summary>

<br>

> `/fig`
>
> `/custom-code-review-skill` github PR 1234

</details>

<details>
<summary><strong>5 &nbsp;·&nbsp; Audit an epic against its PRD</strong></summary>

<br>

> `/fig`
>
> audit jira epic EN-1234 as compared to the PRD at somewhere.atlassian.net/wiki/spaces/EN/pages/12345/project+PRD and make tickets for any gaps we missed

</details>

<details>
<summary><strong>6 &nbsp;·&nbsp; Port a demo to production</strong></summary>

<br>

> `/fig`
>
> `/fig-workflow` Port the demo app found at ~/Documents/code/demo-app into the current repo, matching our team code conventions in .claude/principles - make sure the app is fully WCAG accessible. This is going to be used as a proof of concept for a meeting next week, so needs to be a clean foundation we can iterate on.

</details>

<details>
<summary><strong>7 &nbsp;·&nbsp; Ship an entire epic</strong></summary>

<br>

> `/fig`
>
> `/fig-workflow` Complete the jira epic EN-1234 parallelizing where the work suits it.

</details>

## Tips for using these skills

> [!CAUTION]
> These skills are for software engineering tasks: system design, implementation, testing, debugging, review, or refactoring.

> [!WARNING]
> Don't Micromanage!

<table>
<tr>
<th width="50%">✅ Do</th>
<th width="50%">🚫 Don't</th>
</tr>
<tr>
<td valign="top">

- Provide the critical requirements for your task, project, ticket.
- Provide the goals and purpose of the task.
- Be concise.
- Provide "complete" tasks: entire vertical slices, features, or services.

</td>
<td valign="top">

- Tell agents **how** to do their work. They only need to know what to do.
- Provide excessive explanation, esp in the form of long documents. Distill external documentation first. Agents cannot tell what's important.
- Prescribe every detail of a task. This is wasteful, and will result in bloat.
- Prescribe what not to do. Do not preempt their failures unless there is an absolutely critical reason to do so. Agents will waste tokens producing code and docs about it. If you want something to be invisible, you must keep it invisible yourself.

</td>
</tr>
</table>

## Explanations

### The Problem

<table>
<tr><th align="left">📉&nbsp;&nbsp;Poor quality</th></tr>
<tr><td>

We've all seen it, but I'll spell out the cascade. Agents are literally designed to output text. They lean into this behavior by default, leaping ahead with wrong assumptions, poor designs, and stuff you didn't ask for. This problem compounds. Each new agent reads the bloated code from its predecessors; using more input tokens. It has to process longer and harder to understand the nonsense it's ingested; using more thinking tokens. Then its work needs to cover an overly complex surface of cases, features, and states that never needed to exist in the first place; creating more output tokens. This cascade is what encumbers contexts, grows code bases like algae in a fake pond, and causes token costs to explode whenever you even whisper the words "vibe coding."

</td></tr>
</table>

### The Thesis

<table>
<tr><th align="left">💪&nbsp;&nbsp;Principles -> Quality</th></tr>
<tr><td>

By emphasizing principles of software engineering that great engineers already use to mitigate tech debt, distilled into language that specifically targets the ways AI agents wander astray of those principles, agents will write the right code, and by definition produce less, minimize complexity, and cost less over time.

</td></tr>
</table>

### Motivation

<table>
<tr><th align="left">🍼&nbsp;&nbsp;I hate babysitting</th></tr>
<tr><td>

I devised these skills from obsessing over how to get more out of AI coding agents nearly round the clock for six months. My view is and was that AI coding tools aren't worth it, no matter how amazing the tech is, if I'm trapped at my desk the same number of hours a day. And the singular determining factor trapping me at my desk is whether or not I expect agents to produce code that is at least good _enough_. My bar is high (very) so it's been a real struggle.

</td></tr>
</table>

> [!IMPORTANT]
> The vast majority of my waking hours in 2026 have been tirelessly dedicated to understanding coding agent's failures, and how to modify their behavior effectively. You can read about my experience of doing that work and the insights behind these rules in the [explanations.md](explanations.md) file. I strongly encourage everyone to do so.

### Metrics

<table>
<tr><th align="left">⏳&nbsp;&nbsp;Coming soon</th></tr>
<tr><td>

Measurements are tricky. Cherry picking a prompt and showing how little code it writes compared to vanilla agents or other skills isn't the quality of proof I want to deliver. Creating standards for code complexity measurements, autonomy benchmarks, and measuring how token budget metrics are related to the aforementioned are all on my roadmap, so stay tuned.

</td></tr>
</table>

## Orchestration

> [!IMPORTANT]
> The [Fig orchestrator](https://www.fig4.ai) is coming soon:
> - **Free** to use!
> - Use your own Anthropic account
> - Spending visibility
> - Work visibility
> - Budget controls
> - Easier parallelization
> - Even better quality

## General Claude Code Advice

I use Claude Code (not codex, cursor, copilot, ...). Here's some stuff I'd highly recommend you at least learn more about if you do too:

<details>
<summary><strong>1. NEVER AUTOCOMPACT!</strong></summary>

<br>

Don't even approach 100% context. Imagine all the tokens you'll spend in a session from 0% to 100%. At least as many tokens will likely be spent from 70% to 100% as will between 0% and 60%! You're sending the entire conversation on every request. ALSO, autocompaction dredges up long stale content from early on in a session back to the forefront of an agents awareness. Settled questions, reversed decisions, discussion points from completed work: it all comes back in no particular focus. Agent's are irreversibly incoherent after autocompaction.

</details>

<details>
<summary><strong>2. Turn off automemory.</strong></summary>

<br>

It's ass. It seems nice at first when agents magically know stuff that you want them to know, but the feature is additive and has no protocol for reaping/pruning stale information. Over time you'll find it wastes context and confuses agents more than it helps.

</details>

<details>
<summary><strong>3. Use <code>--dangerously-skip-permissions</code>.</strong></summary>

<br>

It IS dangerous. But the biggest danger is YOU. If you're wearing the paint off your enter key, consider how your use of the tool left you with so little confidence in its behavior.

</details>

<details>
<summary><strong>4. Consider purity checks.</strong></summary>

<br>

This suggestion has an expiration date on it, but if you're using Anthropic's Fable model and are annoyed by the false-positives in their safety check that degrades Fable agents to Opus try this: Have your Fable agent delegate their work -> have them instruct delegates to submit their final reports in files and only send a neutral final message containing almost no content, only pointing at those files -> when subagents finish have the delegator agent grep those subagent session files specifically for the models which were used on each message, nothing else. If the messages are purely Fable, it can read the files, if not it holds for you. Annoying but it will save you from poisoning conversations and work unnecessarily.

</details>

## License

[PolyForm Shield 1.0.0](https://polyformproject.org/licenses/shield/1.0.0) — see [LICENSE](LICENSE). In plain terms:

- **Use the skills freely, for anything** — including commercial work. Individuals and companies can use them to build and ship commercial products with no strings attached.
- **Anything you build with the skills is entirely yours.** Code produced by agents guided by these skills carries no obligations under this license.
- **What you may not do** is offer the skills themselves (or derivatives of them) as a product — packaging, bundling, reselling, or hosting them as part of a competing tool or service, paid or free. For licensing beyond these terms, contact abel@fig4.com.

<p align="center">
  <sub>Built by Abel McElroy · <a href="https://polyformproject.org/licenses/shield/1.0.0">PolyForm Shield 1.0.0</a> · <a href="#fig-the-fruit-of-knowledge">Back to top ↑</a></sub>
</p>
