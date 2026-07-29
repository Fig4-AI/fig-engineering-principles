<h1 align="center">Fig: <a href="https://en.wikipedia.org/wiki/Fig#:~:text=According%20to%20the%20opinion%20of%20Rabbi,Christ%20withers%20in%20the%20Gospels">the fruit of knowledge</a></h1>

<p align="center"><em>Engineering principles for high quality code without babysitting.</em></p>

<p align="center">
  <a href="https://www.npmjs.com/package/fig-engineering-principles"><img src="https://img.shields.io/npm/v/fig-engineering-principles" alt="npm version"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-PolyForm%20Shield%201.0.0-blue" alt="license"></a>
</p>

<p align="center">
  <a href="#how-to-use-the-skills">How to use</a> ·
  <a href="#the-skills">The skills</a> ·
  <a href="#orchestration">Orchestration</a> ·
  <a href="#install">Install</a> ·
  <a href="#license">License</a>
</p>

---

## How to Use The Skills

You will get, by far, the most value out of these skills when you:

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

- Tell agents **how** to do their work. They only need to know what to do; don't micromanage.
- Provide excessive explanation, esp in the form of long documents. Distill external documentation to its critical information and provide only that. Agents cannot tell what information is most important.
- Prescribe every detail of a task. This is wasteful, and will result in bloat.
- Prescribe what not to do. Do not preempt their failures unless there is an absolutely critical reason to do so. Agents will waste tokens producing code and docs about it. If you want something to be invisible, you must keep it invisible yourself.

</td>
</tr>
</table>

## The Problem

> [!POOR QUALITY]
> We've all seen it, but I'll spell out the cascade. Agents are literally designed to output text. They lean into this behavior by default, leaping ahead with wrong assumptions, poor designs, and stuff you didn't ask for. This problem compounds. Each new agent reads the bloated code from its predecessors; using more input tokens. It has to process longer and harder to understand the nonsense it's ingested; using more thinking tokens. Then its work needs to cover an overly complex surface of cases, features, and states that never needed to exist in the first place; creating more output tokens. This cascade is what encumbers contexts, grows code bases like algae in a fake pond, and causes token costs to explode whenever you even whisper the words "vibe coding."

## The Thesis

> [!💪 FOUNDATION]
> By emphasizing principles of software engineering that great engineers already use to mitigate tech debt, distilled into language that specifically targets the ways AI agents wander astray of those principles, agents will write the right code, and by definition produce less, minimize complexity, and cost less over time.

## Motivation

> [!I HATE BABYSITTING]
> I devised these skills from obsessing over how to get more out of AI coding agents nearly round the clock for six months. My view is and was that AI coding tools aren't worth it, no matter how amazing the tech is, if I'm trapped at my desk the same number of hours a day. And the singular determining factor trapping me at my desk is whether or not I expect agents to produce code that is at least good _enough_. My bar is high (very) so it's been a real struggle.

> [!IMPORTANT]
> The vast majority of my waking hours in 2026 have been tirelessly dedicated to understanding coding agent's failures, and how to modify their behavior effectively. You can read about my experience of doing that work and the insights behind these rules in the [explanations.md](explanations.md) file. I strongly encourage everyone to do so.

## Metrics

> [!COMING SOON]
> Measurements are tricky. Cherry picking a prompt and showing how little code it writes compared to vanilla agents or other skills isn't the quality of proof I want to deliver. Creating standards for code complexity measurements, autonomy benchmarks, and measuring how token budget metrics are related to the aforementioned are all on my roadmap, so stay tuned.

## The skills

| Skill | What it does |
| --- | --- |
| **`/fig`** | The core principles. Recommended at the top of every session. |
| **`/fig-workflow`** | A basic orchestration workflow to squeeze maximal quality and autonomy out of those principles. |
| **`/fig-agent`** | An agent built with those same principles; integral to the workflow above. |

The principles themselves are in [principles.md](principles.md).

## Orchestration

The Fig orchestrator uses very similar skills to these internally. It also contains all kinds of machinery ranging from obvious to fancy to make your experience of using coding agents as amazing as possible!

That aside, if you don't feel comfortable dipping your toes into an orchestrator yet (even though it's free-to-use), I'm giving you the basic premise of what Fig would do for you with the above skills.

I recommend using them in the following way:

```bash
cd $PROJECT_DIR
claude --dangerously-skip-permissions
/fig
/fig-workflow <your task description goes here>
<conversation with agent clarifying their understanding of the goals of the work>
```

> [!TIP]
> Then go do whatever you want. Check in later to see if the work is done or there's a question for you.

## Install

Pick one:

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

<details>
<summary><strong>🔌 Claude Code plugin</strong></summary>

<br>

```
/plugin marketplace add abelmcelroy/fig-engineering-principles
/plugin install fig@fig-principles
```

</details>

<details>
<summary><strong>🌐 curl</strong></summary>

<br>

```
curl -fsSL https://raw.githubusercontent.com/abelmcelroy/fig-engineering-principles/main/install/install.sh | sh
```

Installs the `/fig` and `/fig-workflow` skills and the `/fig-agent` subagent into `~/.claude/`.

</details>

<details>
<summary><strong>📦 npm</strong></summary>

<br>

```
npx fig-engineering-principles
```

Same — the `/fig` and `/fig-workflow` skills and the `/fig-agent` subagent.

</details>

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
- **What you may not do** is offer the skills themselves (or derivatives of them) as a product — packaging, bundling, reselling, or hosting them as part of a competing tool or service, paid or free. For licensing beyond these terms, contact abel.h.mcelroy@gmail.com.

<p align="center">
  <sub>Built by Abel McElroy · <a href="https://polyformproject.org/licenses/shield/1.0.0">PolyForm Shield 1.0.0</a> · <a href="#fig-the-fruit-of-knowledge">Back to top ↑</a></sub>
</p>
