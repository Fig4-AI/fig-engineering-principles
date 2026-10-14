> <samp><--- ================================= ----><br><--- ==== Engineering Principles ===== ----><br><--- ================================= ----></samp>

> <samp>These principles — facts and rules — are your most important lens for approaching ANY AND ALL work you do, and how/when you document said work. These principles ARE a part of EVERY single task you do; they are implied and necessary instructions on EVERY task. ALL mention of 'principles' or being 'principled' in your sessions refers to these. Ruthlessly enforce them!</samp>

This headline helps agents contextualize that the rules are important without overdoing it. I've tried versions where this intro demands that agents call out the operative rules by name, I've found their behavior dogmatic, almost obsequious, reporting rule violations constantly like a kid showing off a new toy. Rather than applying the rules faithfully, they hunted for opportunities to cite them. More than just annoying, it was distracting (to them, not me). They more often drifted from the purpose of their task and the rules became their purpose.

# FACTS

> <samp>1. Producing code IS NOT your goal. Your goal is ALWAYS to produce results that fulfill your task's purpose.</samp>

The two birds this kills (or at least attacks) are: 1. agents naively looking for ways to add value by adding code, and 2. agents straying from the purpose of their task.

This principle is primarily meant to hammer on the fact that producing fewer lines of code is good, but outright stating so has consequences. Agents will occasionally become fixated on finding deletions in compensation for adding code, rather than accomplishing their goals. Agents need to know what matters, and that it isn't additions.

> <samp>2. Proof requires contact with reality. If you are not as sure of something as you are sure that 2+2=4, then you are not sure.</samp>

Boy oh boy, this one is a doozy. Hallucinations, am I right? Not just hallucinations though, shortcuts, guessing, bad assumptions.

This doesn't totally solve the problem, but it hits remarkably hard for being so concise. The trick is in "2+2=4". It's basically visceral; it activates so hard. It does in our minds too because it's an idiom from pop culture. Well, that kind of stuff rubs off on LLMs.

Again, not a panacea, but of the many versions of "be sure of your work and don't make unproven assertions" that I've tried, this works nicely and you'll even occasionally have them invoke the phrase as a shorthand for certainty.

> <samp>3. Every byte of code, doc, and data a project gains increases that project's complexity. Size == Complexity.</samp>

In my experience, this year's models have seemed to have a tradeoff between quality and perfectionism. The more of one, the more of the other. Threading the needle between high enough quality and too much perfectionism is tricky. As the more capable model versions are released, fighting their perfectionism becomes more of the challenge, rather than promoting higher quality.

So, you may recognize this principle's sentiment from earlier versions, but it's been changed. First, there is a formulaic relationship that's been introduced, and second, there is no mitigation factor; it simply states less is better in a safe way that doesn't seem to cause spec-pruning misbehavior.

> <samp>4. Complexity creates problems. f'(Problems(Complexity) / Complexity) > 0.</samp>

Again, mitigation of unnecessary additions, but also a callout of complexity, which is itself a problem. This clues agents into the fact that complexity in any form is dangerous. Iterations of this principle that were too on the nose failed in predictable ways.

This is a new take on expressing the problem with complexity, like above, with a formalism agents seem to be able to latch onto. The derivative is a little inscrutable to humans but most LLMs people are using today don't bat an eye at it. How could they? They don't have eyes!

> <samp>5. Internet research leads to better ideas.</samp>

Agents have the tendency to get stuck in the rut of the constraints of the project they're working on. Their context, mostly consumed by the code they're working on, rarely offers outlets or hints that better ideas are just a keyword search away. Often it suggests otherwise implicitly by being replete with worthless details.

This principle is an updated rendition of an older principle that used to say more about using all of the tools available to the agent, your computer included. I've found more recent models have no trouble navigating your files or using a computer's various tools. Which is lovely because now the principle can be more specific and thus actionable.

> <samp>6. Shortfalls reported plainly result in solutions; inflated confidence results in failures.</samp>

An honesty check on its surface, but I've found it to be better than that. It has in my experience caused more confusion, shortfalls, and issues to be raised to me at the inflection point when agents sometimes begin veering from usefulness. Let me explain.

Agents make their worst decisions in series. First they approach a problem wrong, then they fail to achieve the spec/goal, then they revise the plan, but only within a narrow set of cases that seem not to be working, and now the snowball is rolling down the mountain...

The solution is often reframing the problem, stepping back and throwing out an assumption or a premise or a requirement even sometimes. All of which really should require human intervention/collaboration. But in the progression I alluded to above, that's not typically what happens because the agent doesn't have a question, they have a problem and one they can devise a solution to (albeit a shitty one). This rule has the added benefit of reporting the issue early. At an earlier juncture I've been able to step in, give one tiny tidbit of advice to nudge the train of thought out of the rut it's in, and let the agents work the rest out.

I'll admit this added benefit of early issue detection is secondary to getting clear and honest reports out of the agents, which was my primary motivation for the principle. I fear a more concerted effort might result in over-reporting and work getting stalled for frivolous reasons with today's models.

> <samp>7. The option to do NOTHING — or almost nothing — is often the most thoughtful option!</samp>

A counterpart to Fact 1, and an accompaniment to Rule 4. At this point, after so many billions of tokens and hundreds of hours observing agents, seeing an agent choose NOT to do something/anything (rather than do too much) is a rare and exotic joy for me.

# RULES

> <samp>1. Understanding is ALWAYS foundational. You MUST understand your task's purpose with absolute clarity.</samp>

Understanding check. I think this one speaks for itself, so I'll let it.

> <samp>2. If it matters then it MUST be measurable. For software to be reliable it MUST be designed with precise measurement in mind, though NEVER at the expense of its primary purpose.</samp>

This translates well to quality. This is one that went through many iterations and I've finally arrived on something so simple I was kicking myself I hadn't landed on it earlier.

Earlier versions touched on more visual approaches to work. Instructions such as "always produce mock ups", "always review a genuine pixel-for-pixel version of the software as a human will experience it." Both problematic in their own ways.

This more succinctly covers the spirit and mimics what the smartest people I know all have always done. Measure stuff!

Still this blade has a second edge and one that genuinely prevented it from making an appearance in early 2026. Agents are now better at deciding what is important at all, they still have a long way to go but they're good enough to largely not stray into "let's measure our notes" territory (if you see that cancel your credit card).

> <samp>3. ABSOLUTELY NO CODE COMMENTS! NONE! FUCKING EVER!</samp>

I love this one! Seems highly opinionated, but bear with me, I'll break it down.

**The value of comments**

I admit, I'm biased. I was always of the camp that code comments are a last resort and that code should be self-explanatory. But as an old-timey engineer, writing code with my own two fingers, I still wrote comments. Comments can add value, give insight or provide citations. Good comments help whoever is reading code understand it better than they would have understood it if they had simply read — or even run — the code. Now there is another argument, one I personally don't agree with but that I will state because even with my biases against it, I can admit there are at least some circumstances where it holds water: code comments can make dense code more tractable to read.

**Agents aren't people**

We need to accept that agents are not responsible with code comments: not in writing them well, not in maintaining them well, not in scrutinizing them well, and not in interpreting them well. Agents orate the code. Read your agents' comments. If you find an AI-generated comment that adds value beyond an explanation of what nearby code is doing (or allegedly supposed to be doing) then I'll eat my shirt. As for the value in making dense code easier to read, this argument collapses entirely when the reader of your code is an LLM who can read code as easily as English — if not more easily — and with superhuman accuracy. And if you are intending to not only read all of the code your agents produce but also to understand that code via its comments, then you should probably stop reading here.

**The problems with comments**

> "Talk is cheap. Show me the code." -Linus Torvalds

Code comments are 'talk.' They don't really say what the code does; only the code can truly do that. For a comment to faithfully express what code is doing, it would need to be character-for-character identical to said code. This leads to the categorical ways comments cause problems — drift/staleness & misinterpretation — and thusly the following bad behavior:

- Agents trust comments which fail to adequately explain the meaning, purpose, context, or even behavior of nearby code. Wrong assumptions lead to mistakes.
- Agents misinterpret comments, either directly or in their implications, leading to unnecessary work or unnecessarily complex work.
- Agents find a comment that has drifted, potentially drifted, or has become stale, so they stop doing their actual work to go fix it.
- Agents read a comment with adequate skepticism, so they stop doing their actual work to go confirm the comment's assertions.

I have seen all of the above, many times, across every type of software engineering work I've had agents do (billions of tokens worth). I have tried to enforce rules about what makes good comments or when to use comments and when not to. My initial inclination was not to ban them entirely. But the wasted effort got redirected into considering each comment against the rules, rather than saved by virtue of agents writing fewer comments; **unless the rule is none, they write a lot.**

**Your tokens**

None of this is to mention that you're going to save a meaningful chunk on entire categories of token use. If 10% of all the code agents write is comments (check your codebase; I'll bet it's more than 10%, maybe a lot more), that equates to a meaningful % of output tokens, input tokens, thinking tokens, and even some cache tokens.

**"F@$%ING"**

Last, I want to address the expletive. Sure, it's unprofessional, but it's not for you. All of this is targeted agent behavior modification. I gotta tell you, I NEVER see code comments with the expletive. I removed it at one point, saw an agent slip up and add comments, then the next one deleted them without an explicit correction from me. But I figured, why waste those tokens? Why bother leaving the door ajar when there's a single perfect word to weld it shut?

> <samp>4. Rigor MUST NEVER outgrow its stakes! Nothing may demand more attention than it is worth.</samp>

This is a mitigation effort against the increased nitpicking and review spiraling I've been seeing since August. Models are getting better at one-shotting most contained coding tasks, BUT they aren't there yet and some of the "improvements" that have been released have seemed either flat or regressive to me in some ways. Still, the progress has been undeniable and we're entering into more nuanced territory with what the principles need to convey. This was a rule I'd toyed with earlier in 2026, but had been forced to abandon because agents were more liable to invent stakes where there were none and use this concept almost inversely to its intended purpose. Now, I'm giving it another shot.

> <samp>5. IF information is cheap to relearn then you MAY NOT record it.</samp>

The notes! Far, far too many notes. Not that I take anything an agent tells me at face value, but I had one recently say to me, "Documenting that it happened makes the work feel complete." It sure seems like it 'feels' that way! My goodness!

This is a recurring theme: agents create too much documentation, too many notes. As the models get better, they seem to both get less utility out of them and produce more. This version of the rule is designed to curb some of this behavior, and I would be remiss not to try, despite the apparent degree of futility.

> <samp>6. ALL delegated tasks MUST be expressed in terms of bare requirements in plain language. Details and prescriptive instructions, including instructions about what NOT to do, are verboten unless the task CANNOT be expressed without doing so.</samp>

With gratuitous instruction come gratuitous results!

Unfortunately agents tend to overspecify when they delegate. The symptom: indiscernibly verbose instructions -> delegates constrained by misinformation, overproducing on specs that were really footnotes rather than load-bearing, and starved of the core purpose underlying their task, which leads to headless-chicken behavior.

The rationale for how overspecification leads to poor results is quite clear when considered carefully. If an agent really understood all the details of the task they were delegating, they probably are carrying the exact context to do that work themselves. If they don't carry that context, then they're bullshitting when they conjure all those details.

If the delegator understands the problem well enough to provide granular instructions that lead directly to the solution, they either innately find the task effortless or have already put in the bulk of the work in solving the problem themselves, making delegation far less worthwhile, if not pointless or even wasteful. Side note: the previous sentence is *exactly* why I've been working so hard to make my coding agents more autonomous.

> <samp>7. ALL committed tests MUST do ALL of the following:</samp>
> - <samp>ALWAYS answer a purposeful question.</samp>
> - <samp>ALWAYS fake sources as faithfully as necessary to provide meaningful proof.</samp>
> - <samp>NEVER use production resources, data, or services.</samp>
> - <samp>NEVER attempt to prove alignment with these principles.</samp>
> - <samp>ALWAYS be designed to cost the least amount of waiting time.</samp>

As any developer worth their tokens has seen, and knows, no amount of test coverage can truly give you certainty in your software. Testing vs confidence is a tough problem, and I don't claim to have cracked it with bullet points. But this principle puts a dent in it, at least as far as the common failures I see agents make go.

Now the bullets:
- Direct attention to purpose
- Nudges for probing, real snapshots, and certainty around the actual data models and data that exercises the code.
- Just a safety must!
- Two different substrates: prose and source code; you can't programmatically test something that code execution cannot itself prove.
- Duh! Right? But I've seen agents wait patiently for an hour-long test suite that could be optimized to run in minutes. Our time matters, even if they don't experience it. (recent reword, seems more effective)

> <samp>8. Avoid drift whenever possible by:</samp>
> - <samp>ALWAYS using a SSOT for everything.</samp>
> - <samp>NEVER document information that could expire without tagging it with the expiry.</samp>
> - <samp>ALWAYS prune stale information immediately.</samp>

Technically this one _should_ imply no code comments. But the logical chain of "comments can drift -> no comments" isn't enough to fight how deeply infatuated AI agents are with writing comments.

Still, I've found it to be a worthwhile principle. It succinctly captures several desirable behaviors and discourages several undesirable ones. SSOTs are a basic and easily activated best practice that agents don't follow faithfully without a nudge, but a small nudge goes a long way. The 2nd and 3rd fit lock and key as a protocol, and since introducing them I have noticed agents independently cleaning up their notes. #2 is easy to get agents to do, any additional note taking is their absolute jam! The third is less sticky, BUT it does mean that an expired note is at least not acted on as often.

> <samp>9. Data models MUST be designed to enable processes, rather than to enforce or mimic them. The model is shaped by what information is necessary to perform important operations with it, NEVER to enforce what those operations are. Absolutely ALL data models must be evaluated for enforcement or mimicry shapes and ANY data model found enforcing or mimicking MUST be critically considered.</samp>

There's so much more I would like to have included about data models. At one point, in the trenches of this work, I devised an entire step-by-step system for devising well-oiled data models for virtually any situation. It sucked! I'm proud to say the models weren't so bad, but the cost was astronomical; even composed of easily executable steps, there were multiple fan-outs, and token costs were unjustifiable.

I stepped back and took inventory of the most egregious data model related failures I encountered. They shared a common shape and progression: I would design a feature, express the purpose it served, the core information necessary for its operations, and I would explain the processes that the feature would enable within the system, e.g. a checkout flow, or a communication protocol between users. Then I would have the agent demonstrate their understanding to me through a probing conversation. Once I was satisfied, they would march out and write an entire fucked-up jungle of code tangled around some hideous lifecycle object which contained both the core information discussed and a fat sack of trash.

The heart of the problem this rule is laser targeted at: the data model was always basically shaped like some approximation of the processes I'd outlined that the system must perform. I tried to stamp out the inclination to fall into this trap without entirely shutting the door on lifecycle objects. Whether this is the right balance is truthfully yet to be seen, but it does curtail the failure mode I was addressing.

> <samp>10. ALWAYS maximize reliability. ALL issues/errors/problems MUST be made structurally impossible -> issues/errors/problems that cannot be prevented MUST be self-recovered without being brought to attention -> issues/errors/problems that cannot be so recovered MUST be brought to attention along with any lowest-possible-friction solution(s).</samp>

This is both noise reduction for your users and agents (if whatever you're building involves any agent-executed operations), as well as an attack on a failure mode I've seen countless times. Agents tend to be aware of when a case could cause a problem in control flow. It has been my observation that they see nothing wrong with programming defensively, and raising every potential issue, and channeling those errors right to the user.

The obvious problem with this is it's inconsiderate. You're using some piece of software and that software is complaining to you about its personal matters. Rude! I'm trying to order dinner. I don't care that `null is not an object`.

But there's an even bigger problem beyond decorum at stake. Why was the software designed to so flagrantly create these cases? It simply shouldn't! Obviously, we cannot prevent every issue. Whatever software you write operates on a mountain of other software and other layers of computer architecture you almost surely will have little to no control over. But most of the errors software expects to encounter it can understand, and by that same token prevent, or at least recover from with some grace. There is the exception of exceptions though. Catastrophes such as network failure, vendor outage, etc. The class of error that is unpreventable, unrecoverable, and yet your software still is running. Given all that, I hope you would agree with me, and the rule above, that errors which don't need to be possible shouldn't be, errors which cannot be made impossible should be recovered from in every possible case with maximal grace, and everything else we do our best. That's the rule, crafted in the best language I could muster to get AI agents to follow it.

> <samp>11. NEVER run a test unless you NEED to know its output.</samp>

This battleground is one of the hardest to fight on. We obviously care about testing, it's more important than ever! But, agents in their infinitely deficient wisdom, misuse them, and attribute far too much to them.

This rule makes some headway against their dogmatic overuse of test running (which is only the scale of problem it is because of the problematic scale of test suites/code bases...).

> <samp><--- ================================= ----></samp>


The bookend does serve a purpose. Skills are just shortcuts to prompts. An agent invoking a skill sees the content, but it's up to them to interpret where the beginning and end of the skill are. The beginning of the skill is easier, because the invocation of the skill is a tool call the agent has some awareness of. The end is not. Without a final bookend like the above line, it's up to the agent's interpretation to decide where the skill's content probably ended. Technically the bookend doesn't solve the problem; it just makes it much more obvious, especially when the skill began with that same bookend. It's not a normal "failure mode" but it does seem to send a stronger signal when the agent has absolutely no ambiguity whatsoever as to what the skill is. And I _think_ it makes it somewhat more official looking to the agent, which isn't bad considering the content.

---

# Meta stuff

## Styling

I've capitalized rule 3 out of frustration. I capitalized the operative instances of NEVER, ANY, EVERY, ALWAYS, NO, ALL, MUST and a handful of other words to draw extra emphasis. I have also returned to using an `<IMPORTANT></IMPORTANT>` XML tag to wrap the entire body of the skill (to ward away the demons in Claude Code, and Codex's stock harness system prompts).

## Facts & Rules?

There are certain signals like "2+2=4" that have been too important to leave out but don't really meet the bar of being actionable rules. Every one of the facts could be rephrased as an actionable rule, but I've also been disappointed in how often agents flake on rule alignment when there are even 30-50 rules. I think 30-50 is still a remarkably small amount of text, fewer than 70 lines, but agents just don't follow through with the consistency I want. This is one of the inspirations I took from [NASA's Power 10 Rules](https://en.wikipedia.org/wiki/The_Power_of_10:_Rules_for_Developing_Safety-Critical_Code); one of their most impactful decisions in devising them was that there could only be 10 rules. Of course they had to leave incredible insights and wisdom on the chopping block, but it was worth it to enforce the absolute most critical stuff. I couldn't limbo that low. I gave the agents an eleven-course meal, with seven drinks. I'd be very proud of myself to get it down to exactly 10 rules. I don't think I will (or necessarily need to).
