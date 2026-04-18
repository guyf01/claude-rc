# Bookmarks

## Reference
*Guides, indexes, and catalogs to browse when learning or discovering new tools. Read, don't install.*

- [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — curated index of Claude Code skills, workflows, tooling, hooks, slash commands, CLAUDE.md files, status lines, and alternative clients. Pure reference — links with descriptions, no implementations in the repo itself.

- [shanraisshan/claude-code-best-practice](https://github.com/shanraisshan/claude-code-best-practice) — 41.6k stars. Knowledge base curated from Boris Cherny (Claude Code creator) and Thariq posts. 69 tips, best practice guides for skills/hooks/MCP/subagents, workflows, and reports. Most current and authoritative Claude Code reference available.
- [luongnv89/claude-howto](https://github.com/luongnv89/claude-howto) — comprehensive Claude Code learning guide. 10 modules covering skills, hooks, MCP, subagents, plugins, planning mode. Good reference when going deeper on any Claude Code feature.


## Inspiration
*Sources you've directly cherry-picked content from into your own config files.*

- [UI/UX Pro Max](https://lobehub.com/skills/qdleader-qdleader-ui-ux-pro-max) — 50+ styles, 97 color palettes, 57 font pairings, 99 UX guidelines, 25 chart types. Fully cherry-picked into frontend.md.

- [poshan0126/dotclaude](https://github.com/poshan0126/dotclaude) — lean, token-efficient `.claude/` config. Good reference for agent design, hooks, and scoped rules.
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) — skill for eliminating AI writing tells: banned phrases, structural clichés, sentence patterns. Installed as `stop-slop` skill.


## Installed Plugins
*Plugins currently active via `/plugin install`.*

- [superpowers](https://github.com/obra/superpowers) — core workflow skills: brainstorming, planning, debugging, code review, TDD, subagents, git worktrees, verification
- [frontend-design](https://github.com/anthropics/skills/tree/main/skills/frontend-design) — distinctive production-grade UI generation, avoids generic AI aesthetics
- [skill-creator](https://github.com/anthropics/skills/tree/main/skills/skill-creator) — full skill development lifecycle: write, evaluate, benchmark, and iterate on skills
- [code-review](https://github.com/anthropics/claude-code/tree/main/plugins/code-review) — PR code review
- [feature-dev](https://github.com/anthropics/claude-code/tree/main/plugins/feature-dev) — guided feature development with codebase understanding
- [ralph-loop](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/ralph-loop) — recurring prompt loop runner
- [security-guidance](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/security-guidance) — security review and guidance
- [wondelai/skills — code-craftsmanship](https://github.com/wondelai/skills) — clean-code, refactoring-patterns, software-design-philosophy, pragmatic-programmer, domain-driven-design
- [wondelai/skills — systems-architecture](https://github.com/wondelai/skills) — ddia-systems, system-design, clean-architecture, release-it, high-perf-browser
- [wondelai/skills — product-strategy](https://github.com/wondelai/skills) — jobs-to-be-done, negotiation, mom-test
- [wondelai/skills — marketing-cro](https://github.com/wondelai/skills) — cro-methodology, storybrand-messaging, scorecard-marketing, contagious, one-page-marketing
- [wondelai/skills — sales-influence](https://github.com/wondelai/skills) — influence-psychology, predictable-revenue, made-to-stick, hundred-million-offers
- [wondelai/skills — ux-design](https://github.com/wondelai/skills) — refactoring-ui, ios-hig-design, ux-heuristics, hooked-ux, improve-retention, web-typography, top-design, design-everyday-things, lean-ux, microinteractions
- [wondelai/skills — strategy-growth](https://github.com/wondelai/skills) — crossing-the-chasm, blue-ocean-strategy, traction-eos, obviously-awesome


## To Explore
*Worth evaluating for future install or cherry-picking.*

- [agamm/claude-code-owasp](https://github.com/agamm/claude-code-owasp) — 125 stars. Claude Code skill that bakes OWASP security into context: OWASP Top 10:2025, ASVS 5.0 verification requirements, safe/unsafe code pattern examples, input/auth/access control checklists, agentic AI risks (ASI01-ASI10), and language-specific guidance for 20+ languages. Auto-activates on security-related tasks. Potentially overlaps with security-guidance plugin — check before installing.

- [kepano/obsidian-skills](https://github.com/kepano/obsidian-skills) — 23.9k stars. 5 skills for Obsidian vault interaction: obsidian-markdown (wikilinks, embeds, callouts), obsidian-bases (views, filters, formulas), json-canvas (node/edge canvas files), obsidian-cli (vault CLI), and defuddle (strips web pages to clean markdown — useful outside Obsidian for token reduction). From kepano, Obsidian's Minimal theme creator. Only relevant if using Obsidian; defuddle is the one skill worth cherry-picking standalone.

- [massgen/MassGen](https://github.com/massgen/MassGen) — 946 stars. Multi-agent scaling system that runs 40+ models across 10+ providers (Claude, GPT, Gemini, Grok, etc.) in parallel, each tackling the full problem independently, then voting and refining across cycles. 4 coordination modes (normal, planning, decomposition, checkpoint), MCP integration, computer use via Docker, live terminal/web UI. Install: `pip install massgen`. Caveats: early stage with breaking changes expected, not Claude Code-specific — standalone Python framework.

- [anthropics/skills](https://github.com/anthropics/skills) — 117k stars. Anthropic's official skills collection: 17 skills across document creation (docx, pdf, pptx, xlsx), design (canvas-design, algorithmic-art, brand-guidelines, theme-factory), dev tools (claude-api, mcp-builder, web-artifacts-builder, webapp-testing), and communication (doc-coauthoring, internal-comms, slack-gif-creator). frontend-design and skill-creator already installed.

- [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) — automated persistent memory plugin for Claude Code. 5 lifecycle hooks capture tool usage and observations, compresses with AI summaries, stores in SQLite + Chroma vector DB, reinjects relevant context at session start. Natural language search via mem-search skill. Requires a worker service on port 37777.

- [ChristopherKahler/paul](https://github.com/ChristopherKahler/paul) — Plan-Apply-Unify Loop framework for Claude Code. Three phases: plan with BDD acceptance criteria → execute with per-task verification → mandatory closure that reconciles planned vs. actual and writes STATE.md + SUMMARY.md. Installs via npm as slash commands. Addresses context rot, orphaned plans, and state drift.

- [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) — methodology and toolset for turning any app with source code into an agent-controllable CLI. 7-phase automated pipeline (analyze → design → implement → test → document → publish) generates Click-based CLIs with REPL support and `--json` output. 23 pre-built harnesses for Blender, GIMP, LibreOffice, OBS, ComfyUI, etc. Drives real applications, not wrappers.

- [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) — large Claude Code plugin with 47 subagents, 181 skills, 34 rules (language-specific for TS, Python, Go, Swift, PHP, Java), 20+ hooks, and MCP configs. Covers coding standards, TDD, security review, and framework-specific patterns across multiple languages. Cross-platform (Claude Code, Cursor, Codex, OpenCode).

- [pbakaus/impeccable](https://github.com/pbakaus/impeccable) — frontend design skill that extends Anthropic's frontend-design with 7 reference files (OKLCH color, type scales, motion, interaction, responsive, UX writing) + 18 commands (/audit, /polish, /animate, etc.) + explicit anti-patterns (no Inter, no bounce easing, no cards-in-cards). Also includes a standalone CLI anti-pattern scanner. Replaces frontend-design if doing regular frontend work.

- [muratcankoylan/Agent-Skills-for-Context-Engineering](https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering) — 13 context engineering skills: degradation patterns, compression, tool design, multi-agent patterns, memory systems, LLM-as-judge, etc. Content quality is solid and research-grounded.

- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) — 66 `DESIGN.md` files extracted from popular brand sites (Stripe, Linear, Vercel, Apple, etc.). Drop one in your project root and agents generate UI matching that brand's aesthetic. AI-generated summaries, not official tokens — useful for quick prototyping, not production specs.

- [safishamsi/graphify](https://github.com/safishamsi/graphify) — AI coding assistant skill that turns any folder of code, docs, PDFs, images, or video into a queryable knowledge graph. AST extraction via tree-sitter (local, 23 languages), semantic analysis via Claude subagents in parallel, Leiden community detection for clustering. Install: `pip install graphifyy && graphify install && graphify claude install`. Use: `/graphify .` in Claude Code. Persistent graph.json, 71.5x claimed token reduction vs reading raw files. Genuinely useful for navigating large codebases.

- [AgriciDaniel/claude-ads](https://github.com/AgriciDaniel/claude-ads) — paid ads auditor: 225+ checks across Google, Meta, YouTube, LinkedIn, TikTok, Bing, Apple Search Ads. Health scoring (A–F), industry templates, creative fatigue detection, compliance checks. Analyzes pasted/exported data; optional Google Ads MCP for live access.
- [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) — deep SEO plugin: 19 sub-skills + 12 parallel subagents. Core Web Vitals, E-E-A-T, Search Console/GA4, backlinks, PDF reports. Requires Python 3.10+. Install: `/plugin marketplace add AgriciDaniel/claude-seo` then `/plugin install claude-seo@AgriciDaniel-claude-seo`.
- [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) — curated skill directory: 33+ skills (dev, data, marketing, security) + 78 Composio workflow skills that give Claude real API access to SaaS tools (GitHub, Slack, Notion, HubSpot, etc.) via MCP. Worth exploring when you want Claude to act inside your tools, not just advise.

- [yvgude/lean-ctx](https://github.com/yvgude/lean-ctx) — Rust MCP server + shell hook that compresses tool output before it hits context. Shell hook covers 90+ command patterns (git, npm, docker, etc.) for 60-95% savings; 34 MCP tools replace standard file reads with smarter variants (signatures, diffs, deltas). Claims 88% real-session reduction. Install: `lean-ctx mcp add lean-ctx lean-ctx`. Broader than context-mode — covers shell output, not just MCP tool output.

- [mksglu/context-mode](https://github.com/mksglu/context-mode) — MCP server that intercepts tool call outputs and sandboxes them out of context (315KB → 5.4KB claimed). Also adds session continuity via SQLite FTS5 indexed across compactions. Only useful if you're already using MCP heavily — it optimizes MCP tool output, not Claude Code plugin workflows. Install via `/plugin marketplace add mksglu/context-mode`. 7.1k stars.

- [husnainpk/SymDex](https://github.com/husnainpk/SymDex) — MCP server that pre-indexes symbols, call graphs, semantic embeddings, and HTTP routes so Claude does exact lookups instead of reading whole files. 15+ languages, claims 7,500 → 200 tokens per lookup. Low-friction install: `uvx symdex serve`. Similar to code-review-graph but adds semantic search and route extraction; simpler setup.

- [tirth8205/code-review-graph](https://github.com/tirth8205/code-review-graph) — MCP server that builds a Tree-sitter AST + SQLite dependency graph of your codebase. Claude queries it automatically to get blast-radius context instead of loading whole files. 8.2x average token reduction, 49x on monorepos. 22 MCP tools: impact analysis, call graph traversal, dead code detection, refactoring previews. Installs via `pip install code-review-graph && code-review-graph install && code-review-graph build`. Requires Python 3.10+. Flow detection 33% recall outside Python but structural impact is solid across 19 languages.

- [parcadei/Continuous-Claude-v3](https://github.com/parcadei/Continuous-Claude-v3) — persistent multi-agent environment with 109 skills, 32 agents, 30 hooks, PostgreSQL + vector DB memory, YAML session handoffs, and a 5-layer code analysis tool (AST → call graph → control flow → data flow → program slicing, claims 23k → 1.2k token reduction). Heavy setup: requires Python 3.11+, Docker, PostgreSQL, and a setup wizard.

- [SuperClaude-Org/SuperClaude_Framework](https://github.com/SuperClaude-Org/SuperClaude_Framework) — configuration framework for Claude Code with 30 slash commands, 20 specialized agents, 7 behavioral modes, and 8 pre-wired MCP servers (Tavily, Context7, Sequential-Thinking, Playwright, etc.). Installs via `pipx install superclaude`.

- [paperclipai/paperclip](https://github.com/paperclipai/paperclip) — "agents as a company" orchestration platform. Org charts, per-agent budgets with throttling, goal alignment, approval gates, persistent sessions via tickets. Self-hosted, Node.js + React + embedded Postgres. Distinct angle vs. other multi-agent tools: business governance layer, not just task routing.

- [BloopAI/vibe-kanban](https://github.com/BloopAI/vibe-kanban) — self-hosted kanban + AI agent orchestration platform. Describe tasks on a board, agents execute in isolated git branch workspaces, review diffs inline with integrated browser + DevTools, then merge. Supports Claude Code, Codex, Gemini CLI, Copilot, and others. Runs via `npx vibe-kanban` or Docker. Rust backend, TypeScript/React frontend.

- [devswarm.ai](https://devswarm.ai/) — spins up a full IDE per git worktree, each running its own AI agent (Claude Code, Codex, Gemini, Amazon Q, etc.) in parallel. Each agent gets isolated context, its own branch, and a dedicated editor pane — review and merge when done. Windows/Mac/Linux, bring your own API keys. Skipped: bundled VSCodium with no way to use your existing VS Code install.

- [conductor.build](https://www.conductor.build/) — Mac app (YC-backed) for running teams of Claude Code/Codex agents in parallel isolated worktrees. GUI for reviewing/merging agent output, tight Linear + GitHub integration for context injection. Windows/Linux coming soon. Similar to cmux/ruflo but polished native app vs terminal primitives.

- [manaflow-ai/cmux](https://github.com/manaflow-ai/cmux) — native macOS terminal built for AI coding agents. Vertical tabs, split panes, notifications, socket API. "claude-teams" mode spawns multiple Claude Code instances as native splits. Mac-only. Skill: [hummer98/using-cmux](https://github.com/hummer98/using-cmux) — auto-loads when Claude detects CMUX_SOCKET_PATH.
- [craigsc/cmux](https://github.com/craigsc/cmux) — "tmux for Claude Code." Wraps git worktree lifecycle so parallel agents get isolated checkouts without conflicts. Mac-only.

- [ruvnet/ruflo](https://github.com/ruvnet/ruflo) — multi-agent orchestration platform for Claude Code. NOT a plugin — adds via MCP (`claude mcp add ruflo -- npx -y ruflo@latest mcp start`). Runs 60+ specialized agents in parallel (planner, coder, tester, security, etc.) with swarm topologies and shared memory. Claims 75% API cost reduction via model routing and 84.8% on SWE-Bench. Heavy system — full agent framework, not a lightweight skill.

- [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done) — spec-driven dev system for Claude Code. NOT a plugin — installs via `npx get-shit-done-cc@latest`. Creates slash commands (/gsd-plan-phase, /gsd-execute-phase, /gsd-quick, etc.) and planning artifacts (PROJECT.md, ROADMAP.md, PLAN.md) to enforce fresh context windows per task. Overlaps with Superpowers planning skills; main differentiator is structured file artifacts and per-phase context isolation.

- [coleam00/context-engineering-intro](https://github.com/coleam00/context-engineering-intro) — 13k stars. A Claude Code project template that enforces a structured feature request workflow before any code is written. You fill in INITIAL.md (what to build, code examples to follow, relevant docs, edge cases), then run `/generate-prp` to produce a detailed implementation plan, then `/execute-prp` to execute it with built-in validation. The key insight: most AI implementation failures are context failures, not model failures. Cloning this as a project starter gives you CLAUDE.md, the two slash commands, and an examples/ folder for code patterns. Similar to superpowers planning skills but more opinionated about input quality.
- [alonw0/web-asset-generator](https://github.com/alonw0/web-asset-generator) — generates favicons, PWA/app icons, and OG social images via conversation. Framework-aware (Next.js, Astro). Requires Python + Pillow. Worth installing when bootstrapping web projects.

- [Figma MCP + Claude Code](https://github.com/figma/mcp-server-guide) — Figma ↔ Claude Code integration. Figma → production code with 1:1 fidelity, and code → editable Figma frames. Install via `/plugin install figma@claude-plugins-official`. Worth setting up if working with designers or doing client handoffs. Not needed for solo code-first workflow.

- [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — 40+ marketing skills: conversion optimization, copywriting, SEO, A/B testing, pricing, growth. Install via `/plugin marketplace add coreyhaines31/marketingskills`. Skip for coding-heavy periods — adds ~1,500 tokens always in context.
- [HKUDS/OpenSpace](https://github.com/HKUDS/OpenSpace) — self-evolving AI agent framework. Skills improve from successful executions and sync to a community. MCP-based, plugs into Claude Code. Low effort to try — worth experimenting with.
- [lobehub/lobehub](https://github.com/lobehub/lobehub) — self-hosted AI agent workspace. Multi-agent teams, persistent memory, 10,000+ MCP skills. Next.js/Docker. More of a productivity platform than a dev tool.

- [expo/skills — building-native-ui](https://github.com/expo/skills/tree/main/plugins/expo/skills/building-native-ui) — Expo Router, native iOS UI patterns, animations. Relevant if/when doing native mobile (iOS/Android), not needed for web.
- [vercel-labs/react-native-skills](https://lobehub.com/skills/vercel-labs-agent-skills-react-native-skills) — RN best practices across performance, animation, state, rendering, monorepo. ~Half applies to RN web (memoization, state, rendering rules). Other half is mobile-only. Cherry-pick rules into own rules/ rather than using as-is.

- [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) — 27.6k stars. Makes Claude talk like a caveman to cut output tokens ~65%. Viral meme with a real eval harness. The one useful piece: `caveman-compress` rewrites memory files to reduce session-start tokens ~46%.

## Ideas
*Original ideas for skills or tools to build.*

If it's empty it means all current ideas were already built (:
