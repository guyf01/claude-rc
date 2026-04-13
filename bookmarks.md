# Bookmarks

## Inspiration

- [anthropics/skills](https://github.com/anthropics/skills) — Anthropic's official skills collection. Reviewed frontend-design.
- [UI/UX Pro Max](https://lobehub.com/skills/qdleader-qdleader-ui-ux-pro-max) — 50+ styles, 97 color palettes, 57 font pairings, 99 UX guidelines, 25 chart types. Fully cherry-picked into frontend.md.

- [luongnv89/claude-howto](https://github.com/luongnv89/claude-howto) — comprehensive Claude Code learning guide. 10 modules covering skills, hooks, MCP, subagents, plugins, planning mode. Good reference when going deeper on any Claude Code feature.
- [poshan0126/dotclaude](https://github.com/poshan0126/dotclaude) — lean, token-efficient `.claude/` config. Good reference for agent design, hooks, and scoped rules.
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) — skill for eliminating AI writing tells: banned phrases, structural clichés, sentence patterns. Installed as `stop-slop` skill.

## Installed Plugins

- [superpowers](https://github.com/claude-plugins-official/superpowers) — core workflow skills: brainstorming, planning, debugging, code review, TDD, subagents, git worktrees, verification
- [frontend-design](https://github.com/anthropics/skills/tree/main/skills/frontend-design) — distinctive production-grade UI generation, avoids generic AI aesthetics
- [skill-creator](https://github.com/anthropics/skills/tree/main/skills/skill-creator) — full skill development lifecycle: write, evaluate, benchmark, and iterate on skills
- [code-review](https://github.com/claude-plugins-official/code-review) — PR code review
- [feature-dev](https://github.com/claude-plugins-official/feature-dev) — guided feature development with codebase understanding
- [ralph-loop](https://github.com/claude-plugins-official/ralph-loop) — recurring prompt loop runner
- [security-guidance](https://github.com/claude-plugins-official/security-guidance) — security review and guidance
- [wondelai/skills — code-craftsmanship](https://github.com/wondelai/skills) — clean-code, refactoring-patterns, software-design-philosophy, pragmatic-programmer, domain-driven-design
- [wondelai/skills — systems-architecture](https://github.com/wondelai/skills) — ddia-systems, system-design, clean-architecture, release-it, high-perf-browser
- [wondelai/skills — product-strategy](https://github.com/wondelai/skills) — jobs-to-be-done, negotiation, mom-test
- [wondelai/skills — marketing-cro](https://github.com/wondelai/skills) — cro-methodology, storybrand-messaging, scorecard-marketing, contagious, one-page-marketing
- [wondelai/skills — sales-influence](https://github.com/wondelai/skills) — influence-psychology, predictable-revenue, made-to-stick, hundred-million-offers
- [wondelai/skills — ux-design](https://github.com/wondelai/skills) — refactoring-ui, ios-hig-design, ux-heuristics, hooked-ux, improve-retention, web-typography, top-design, design-everyday-things, lean-ux, microinteractions
- [wondelai/skills — strategy-growth](https://github.com/wondelai/skills) — crossing-the-chasm, blue-ocean-strategy, traction-eos, obviously-awesome

## To Explore

- [AgriciDaniel/claude-ads](https://github.com/AgriciDaniel/claude-ads) — paid ads auditor: 225+ checks across Google, Meta, YouTube, LinkedIn, TikTok, Bing, Apple Search Ads. Health scoring (A–F), industry templates, creative fatigue detection, compliance checks. Analyzes pasted/exported data; optional Google Ads MCP for live access.
- [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) — deep SEO plugin: 19 sub-skills + 12 parallel subagents. Core Web Vitals, E-E-A-T, Search Console/GA4, backlinks, PDF reports. Requires Python 3.10+. Install: `/plugin marketplace add AgriciDaniel/claude-seo` then `/plugin install claude-seo@AgriciDaniel-claude-seo`.
- [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) — curated skill directory: 33+ skills (dev, data, marketing, security) + 78 Composio workflow skills that give Claude real API access to SaaS tools (GitHub, Slack, Notion, HubSpot, etc.) via MCP. Worth exploring when you want Claude to act inside your tools, not just advise.

- [mksglu/context-mode](https://github.com/mksglu/context-mode) — MCP server that intercepts tool call outputs and sandboxes them out of context (315KB → 5.4KB claimed). Also adds session continuity via SQLite FTS5 indexed across compactions. Only useful if you're already using MCP heavily — it optimizes MCP tool output, not Claude Code plugin workflows. Install via `/plugin marketplace add mksglu/context-mode`. 7.1k stars.

- [tirth8205/code-review-graph](https://github.com/tirth8205/code-review-graph) — MCP server that builds a Tree-sitter AST + SQLite dependency graph of your codebase. Claude queries it automatically to get blast-radius context instead of loading whole files. 8.2x average token reduction, 49x on monorepos. 22 MCP tools: impact analysis, call graph traversal, dead code detection, refactoring previews. Installs via `pip install code-review-graph && code-review-graph install && code-review-graph build`. Requires Python 3.10+. Flow detection 33% recall outside Python but structural impact is solid across 19 languages.

- [devswarm.ai](https://devswarm.ai/) — spins up a full IDE per git worktree, each running its own AI agent (Claude Code, Codex, Gemini, Amazon Q, etc.) in parallel. Each agent gets isolated context, its own branch, and a dedicated editor pane — review and merge when done. Windows/Mac/Linux, bring your own API keys. Skipped: bundled VSCodium with no way to use your existing VS Code install.

- [conductor.build](https://www.conductor.build/) — Mac app (YC-backed) for running teams of Claude Code/Codex agents in parallel isolated worktrees. GUI for reviewing/merging agent output, tight Linear + GitHub integration for context injection. Windows/Linux coming soon. Similar to cmux/ruflo but polished native app vs terminal primitives.

- [manaflow-ai/cmux](https://github.com/manaflow-ai/cmux) — native macOS terminal built for AI coding agents. Vertical tabs, split panes, notifications, socket API. "claude-teams" mode spawns multiple Claude Code instances as native splits. Mac-only. Skill: [hummer98/using-cmux](https://github.com/hummer98/using-cmux) — auto-loads when Claude detects CMUX_SOCKET_PATH.
- [craigsc/cmux](https://github.com/craigsc/cmux) — "tmux for Claude Code." Wraps git worktree lifecycle so parallel agents get isolated checkouts without conflicts. Mac-only.

- [ruvnet/ruflo](https://github.com/ruvnet/ruflo) — multi-agent orchestration platform for Claude Code. NOT a plugin — adds via MCP (`claude mcp add ruflo -- npx -y ruflo@latest mcp start`). Runs 60+ specialized agents in parallel (planner, coder, tester, security, etc.) with swarm topologies and shared memory. Claims 75% API cost reduction via model routing and 84.8% on SWE-Bench. Heavy system — full agent framework, not a lightweight skill.

- [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done) — spec-driven dev system for Claude Code. NOT a plugin — installs via `npx get-shit-done-cc@latest`. Creates slash commands (/gsd-plan-phase, /gsd-execute-phase, /gsd-quick, etc.) and planning artifacts (PROJECT.md, ROADMAP.md, PLAN.md) to enforce fresh context windows per task. Overlaps with Superpowers planning skills; main differentiator is structured file artifacts and per-phase context isolation.

- [coleam00/context-engineering-intro](https://github.com/coleam00/context-engineering-intro) — 13k stars. A Claude Code project template that enforces a structured feature request workflow before any code is written. You fill in INITIAL.md (what to build, code examples to follow, relevant docs, edge cases), then run `/generate-prp` to produce a detailed implementation plan, then `/execute-prp` to execute it with built-in validation. The key insight: most AI implementation failures are context failures, not model failures. Cloning this as a project starter gives you CLAUDE.md, the two slash commands, and an examples/ folder for code patterns. Similar to superpowers planning skills but more opinionated about input quality.
- [alonw0/web-asset-generator](https://github.com/alonw0/web-asset-generator) — generates favicons, PWA/app icons, and OG social images via conversation. Framework-aware (Next.js, Astro). Requires Python + Pillow. Worth installing when bootstrapping web projects.

- [anthropics/skills — canvas-design](https://github.com/anthropics/skills/tree/main/skills/canvas-design) — generates sophisticated visual art (PDF/PNG). Good for premium web backgrounds, hero section visuals, and decorative assets. Not for structured ad layouts or templated marketing materials.
- [anthropics/skills — theme-factory](https://github.com/anthropics/skills/tree/main/skills/theme-factory) — 10 preset themes (colors + fonts) for styling slides, documents, and reports. Not for UI dev — only useful if generating polished artifacts through Claude.
- [Figma MCP + Claude Code](https://github.com/figma/mcp-server-guide) — Figma ↔ Claude Code integration. Figma → production code with 1:1 fidelity, and code → editable Figma frames. Install via `/plugin install figma@claude-plugins-official`. Worth setting up if working with designers or doing client handoffs. Not needed for solo code-first workflow.


- [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — 40+ marketing skills: conversion optimization, copywriting, SEO, A/B testing, pricing, growth. Install via `/plugin marketplace add coreyhaines31/marketingskills`. Skip for coding-heavy periods — adds ~1,500 tokens always in context.
- [HKUDS/OpenSpace](https://github.com/HKUDS/OpenSpace) — self-evolving AI agent framework. Skills improve from successful executions and sync to a community. MCP-based, plugs into Claude Code. Low effort to try — worth experimenting with.
- [lobehub/lobehub](https://github.com/lobehub/lobehub) — self-hosted AI agent workspace. Multi-agent teams, persistent memory, 10,000+ MCP skills. Next.js/Docker. More of a productivity platform than a dev tool.


- [expo/skills — building-native-ui](https://github.com/expo/skills/tree/main/plugins/expo/skills/building-native-ui) — Expo Router, native iOS UI patterns, animations. Relevant if/when doing native mobile (iOS/Android), not needed for web.
- [vercel-labs/react-native-skills](https://lobehub.com/skills/vercel-labs-agent-skills-react-native-skills) — RN best practices across performance, animation, state, rendering, monorepo. ~Half applies to RN web (memoization, state, rendering rules). Other half is mobile-only. Cherry-pick rules into own rules/ rather than using as-is.

## Ideas

- **`/done` skill** — end-of-session forcing function. Summarize what was decided/discovered, write to CLAUDE.md and memory, then hand off to `finishing-a-development-branch` for git/worktree cleanup. Motivation: current memory rules are passive. 
