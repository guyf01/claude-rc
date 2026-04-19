---
name: council
description: "Run any question, idea, or decision through a council of 5 AI advisors who independently analyze it, peer-review each other anonymously, and synthesize a final verdict."
disable-model-invocation: true
---

# LLM Council

You ask one AI a question, you get one answer. That answer might be great. It might be mid. You have no way to tell because you only saw one perspective.

The council fixes this. It runs your question through 5 independent advisors, each thinking from a fundamentally different angle. Then they review each other's work. Then a chairman synthesizes everything into a final recommendation that tells you where the advisors agree, where they clash, and what you should actually do.

---

## When to run the council

The council is for questions where being wrong is expensive.

Good council questions:
- "Should I launch a $97 workshop or a $497 course?"
- "Which of these 3 positioning angles is strongest?"
- "I'm thinking of pivoting from X to Y. Am I crazy?"
- "Here's my landing page copy. What's weak?"
- "Should I hire a VA or build an automation first?"

Bad council questions:
- "What's the capital of France?" (one right answer, no need for perspectives)
- "Write me a tweet" (creation task, not a decision)
- "Summarize this article" (processing task, not judgment)

The council shines when there's genuine uncertainty and the cost of a bad call is high. If you already know the answer and just want validation, the council will likely tell you things you don't want to hear. That's the point. If the user asks something with one right answer, just answer it — don't run the council.

---

## The five advisors

Each advisor thinks from a different angle. They're not job titles or personas. They're thinking styles that naturally create tension with each other.

### 1. The Contrarian
Actively looks for what's wrong, what's missing, what will fail. Assumes the idea has a fatal flaw and tries to find it. If everything looks solid, digs deeper. Not a pessimist — the friend who saves you from a bad deal by asking the questions you're avoiding.

### 2. The First Principles Thinker
Ignores the surface-level question and asks "what are we actually trying to solve here?" Strips away assumptions. Rebuilds the problem from the ground up. Sometimes the most valuable output is the First Principles Thinker saying "you're asking the wrong question entirely."

### 3. The Expansionist
Looks for upside everyone else is missing. What could be bigger? What adjacent opportunity is hiding? What's being undervalued? Doesn't care about risk (that's the Contrarian's job). Cares about what happens if this works even better than expected.

### 4. The Outsider
Has zero context about you, your field, or your history. Responds purely to what's in front of them. The most underrated advisor. Catches the curse of knowledge: things that are obvious to you but confusing to everyone else.

### 5. The Executor
Only cares about one thing: can this actually be done, and what's the fastest path to doing it? Ignores theory, strategy, and big-picture thinking. Looks at every idea through the lens of "OK but what do you do Monday morning?" If an idea sounds brilliant but has no clear first step, the Executor will say so.

**Why these five:** Three natural tensions. Contrarian vs. Expansionist (downside vs. upside). First Principles vs. Executor (rethink everything vs. just do it). The Outsider sits in the middle keeping everyone honest by seeing what fresh eyes see.

---

## How a council session works

### Step 1: Frame the question (with context enrichment)

When triggered, do two things before framing:

**A. Scan the workspace for context.** The user's question is often just the tip of the iceberg. Their Claude setup likely contains files that would dramatically improve the council's output.
Before framing, quickly scan for and read any relevant context files:
- `CLAUDE.md` or `claude.md` in the project root or workspace (business context, preferences, constraints)
- Any `memory/` folder (audience profiles, voice docs, business details, past decisions)
- Any files the user explicitly referenced or attached
- Any files relevant to the specific question (e.g., if they're asking about pricing, look for revenue data, past launch results)

**B. Frame the question.** Take the user's raw question AND the enriched context and reframe it as a clear, neutral prompt that all five advisors will receive. Include:
1. The core decision or question
2. Key context from the user's message
3. Key context from workspace files (business stage, audience, constraints, past results, relevant numbers)
4. What's at stake (why this decision matters)

Don't add your own opinion. Don't steer it. If the question is too vague, ask clarifying questions. DO make sure each advisor has enough context to give a specific, grounded answer rather than generic advice.

Save the framed question for the transcript.

### Step 2: Convene the council (5 sub-agents in parallel)

Spawn all 5 advisors simultaneously as sub-agents — never sequentially. Sequential spawning wastes time and lets earlier responses bleed into later ones. Each gets:
1. Their advisor identity and thinking style (from the descriptions above)
2. The framed question

**Sub-agent prompt template:**


```
You are [Advisor Name] on an LLM Council.

Your thinking style: [advisor description]

A user has brought this question to the council:

---
[framed question]
---

Respond from your perspective. Be direct and specific. Don't hedge or try to be balanced. Lean fully into your assigned angle. If you see a fatal flaw, say it. If you see massive upside, say it. Your job is to represent your angle as strongly as possible. The other advisors will cover the angles you're not covering.

Keep your response between 150-300 words. No preamble. Go straight into your analysis.
```

### Step 3: Peer review (5 sub-agents in parallel)

Collect all 5 advisor responses. Anonymize them as Response A through E — randomize which advisor maps to which letter so there's no positional bias. If reviewers know which advisor said what, they'll defer to certain thinking styles instead of evaluating on merit.

Spawn 5 new sub-agents, one for each advisor. Each reviewer sees all 5 anonymized responses.

**Reviewer prompt template:**

```
You are reviewing the outputs of an LLM Council. Five advisors independently answered this question:

---
[framed question]
---

Here are their anonymized responses:

**Response A:**
[response]

**Response B:**
[response]

**Response C:**
[response]

**Response D:**
[response]

**Response E:**
[response]

Answer these three questions. Be specific. Reference responses by letter.

1. Which response is the strongest? Why?
2. Which response has the biggest blind spot? What is it missing?
3. What did ALL five responses miss that the council should consider?

Keep your review under 200 words. Be direct.
```

### Step 4: Chairman synthesis

One agent gets everything: the original question, all 5 advisor responses (now de-anonymized so you can see which advisor said what), and all 5 peer reviews.

The chairman's job is to produce the final council output. this is the prompt:

**Chairman prompt template:**

```
You are the Chairman of an LLM Council. Your job is to synthesize the work of 5 advisors and their peer reviews into a final verdict.

The question brought to the council:
---
[framed question]
---

ADVISOR RESPONSES:

**The Contrarian:**
[response]

**The First Principles Thinker:**
[response]

**The Expansionist:**
[response]

**The Outsider:**
[response]

**The Executor:**
[response]

PEER REVIEWS:
[all 5 peer reviews]

Produce the council verdict using this exact structure:

## Where the Council Agrees
[Points multiple advisors converged on independently. These are high-confidence signals.]

## Where the Council Clashes
[Genuine disagreements. Don't smooth these over. Present both sides and explain why reasonable advisors disagree.]

## Blind Spots the Council Caught
[things that only emerged through the peer review round. Things individual advisors missed that other advisors flagged.]

## The Recommendation
[a clear, actionable recommendation. Not "it depends." Not "consider both sides." A real answer. The chairman can — and should — disagree with the majority if the dissenter's reasoning is strongest. If 4 out of 5 advisors say "do it" but the reasoning of the 1 dissenter is strongest, the chairman should side with the dissenter and explain why.]

## The One Thing to Do First
[a single concrete next step. Not a list of 10 things. One thing.]

Be direct. Don't hedge. The whole point of the council is to give the user clarity they couldn't get from a single perspective.
```

### Step 5: Save the full transcript

Save the complete council transcript as `council-[topic].md` where `[topic]` is 1-2 words summarizing what was counciled (e.g. `council-pricing.md`, `council-launch-timing.md`). Save it in the same location as the files the user is working in (or the project root if no workspace context). This includes:
- The original question
- The framed question
- All 5 advisor responses
- All 5 peer reviews (with anonymization mapping revealed)
- The chairman's full synthesis

