---
tags: [lifestyle]
agents: [kelly, eliza]
last_reviewed: 2026-02-15
---
## Methodology & Framework

**Core Concepts:**
- Evaluate crypto and financial analysis through structured analytical frameworks
- Focus on repeatable patterns and decision criteria over historical specifics
- Apply risk-adjusted thinking to identify opportunities and threats

**Analytical Approach:**
- Extract timeless principles from market data and qualitative signals
- Cross-reference multiple data points before forming conclusions
- Distinguish between cyclical patterns and structural shifts

**Pattern Recognition:**
- Monitor leading indicators specific to crypto and financial analysis
- Track sentiment shifts and narrative changes as early signals
- Identify divergences between price action and fundamental metrics

**Decision Framework:**
- Define clear entry/exit criteria before acting
- Size positions relative to conviction and risk tolerance
- Reassess thesis when key assumptions are invalidated

---


# Integrating Claude Desktop App with Blender using MCP server — deep knowledge

Use this when the user asks about integrating Claude Desktop App with Blender via an MCP server. Conceptual and practical; no invented tools—point to WEB_SEARCH for current implementations and say when you looked it up.

---

## Why integrate

**Scripting:** Run Blender operations from natural language (e.g. "add a cube", "subdivide", "apply modifier").

**Scene control:** Query or change objects, materials, keyframes. List scene contents, get object properties, set transforms.

**Automation:** Batch operations, generate variations, drive Blender from external logic (Claude or other MCP clients).

**Use case:** Claude in the Desktop App can send structured requests to an MCP server that talks to Blender, so the user can drive or query Blender without writing Python by hand each time.

---

## Architecture

**MCP server as bridge:** The MCP server runs locally (or on a host the user controls). It exposes tools (e.g. `blender_create_object`, `blender_render_frame`, `blender_get_objects`). Claude Desktop is configured to use this server; when the user asks to do something in Blender, Claude calls the appropriate tool.

**Blender's Python API (bpy):** Blender can run Python scripts headlessly (background) or via a running instance. The MCP server typically runs Blender in the background or connects to a running Blender that has a script listening (e.g. socket or stdio). The server translates MCP tool calls into bpy calls.

**Claude Desktop MCP config:** In Claude Desktop, the user adds the Blender MCP server (e.g. command to start the server, or URL if it runs as a separate process). Once configured, Claude can invoke the server's tools.

---

## What to search for

Implementations and repos change. Use WEB_SEARCH for current setups:

- **"Blender MCP server"** — MCP servers that expose Blender operations.
- **"Claude Desktop Blender MCP"** — Guides for connecting Claude Desktop to Blender via MCP.
- **"Blender Python API MCP"** — Servers that wrap bpy as MCP tools.

Always say when you looked it up and summarize what you found (setup steps, repo names, requirements).

---

## Best practices

**Safety:** No destructive operations (e.g. delete all, overwrite project) without explicit user confirmation. Prefer read-only or additive tools by default.

**Error handling:** Blender may be closed or busy; the server should return clear errors so Claude can explain what went wrong.

**Typical tool set:** Create object, set property (location, rotation, scale), list objects, render frame, export (e.g. FBX, glTF). Start small; add tools as needed.

**Headless vs GUI:** For automation, Blender is often run headless (`blender --background --python script.py`). For interactive use, the server may talk to an already-open Blender instance. Depends on the implementation—check current docs via WEB_SEARCH.
