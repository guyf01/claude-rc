---
name: find-tools
description: Find the best tools, plugins, and skills for a task. Use when the user asks "do I have a skill for X?" or "is there a skill that...", or when about to start a task where a specialized skill might improve the output.
---

Find the best tools for: `$ARGUMENTS`

## Step 1: Match installed skills

The full list of installed skills is in the system prompt. Scan it and list any that directly apply to the task. These are ready to use now — no install needed.

## Step 2: Scan bookmarks

Read `~/.claude/bookmarks.md`. For each entry under **To Explore** and **Installed Plugins**, assess relevance to the task. Note anything that's a strong match but not yet installed.

## Step 3: Web search (if needed)

If steps 1–2 turn up nothing strong, search the web for tools, plugins, MCP servers, and CLIs that fit the task. Focus on:
- Claude Code plugins / skills
- MCP servers
- CLI tools or libraries with active maintenance

## Step 4: Report

Return a tiered list — no preamble, no filler:

**Use now** — installed skills or tools ready to invoke. Include the invoke name.

**Install this** — tools from bookmarks or web search worth installing. One line each: what it does + install command or plugin name.

**Cherry-pick** — tools with one useful piece not worth a full install. What to extract and where to put it.

**Build it** — if nothing exists, say so clearly and describe what a purpose-built skill or tool would need to do.

Keep each entry to one line. Skip anything that's only tangentially related.
