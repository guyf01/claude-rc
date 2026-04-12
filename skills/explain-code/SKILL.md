---
name: explain-code
description: Explains code with visual diagrams and analogies. Use when explaining how code works, teaching about a codebase, or when the user asks "how does this work?"
---

Break down code so it clicks — one analogy, one diagram, one walkthrough.

Explain `$ARGUMENTS` clearly. Keep explanations conversational. For complex concepts, use multiple analogies.

## Format

### 1. One-sentence summary
What does it do and why does it exist? One sentence.

### 2. Analogy
Compare it to something from everyday life. Relate it to something the developer already knows.

### 3. Visual diagram
Draw an ASCII diagram showing the data/control flow. Keep it readable:
```
Input → [Step A] → [Step B] → Output
              ↓
         [Side Effect]
```

### 4. Step-by-step walkthrough
Walk through the important parts. Skip the obvious — focus on:
- Non-obvious decisions (why this approach?)
- Edge cases and dependencies

### 5. The gotcha
What's a common mistake or misconception with this code? Where are the landmines?

### 6. How to modify it
What would someone need to know to safely change this code?
