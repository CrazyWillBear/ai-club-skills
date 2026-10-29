---
name: to-spec
description: Turn a grill-me interview (or any planning conversation) into a standalone SPEC.md that a fresh session can build from. Use when the user says "to-spec", or when an interview is finished and the intent needs to be captured in a document before the session is cleared.
---

Turn our conversation so far into a spec file, `SPEC.md` in the working directory (or wherever I tell you). Do **not** start building.

**Write for a reader with zero context** who has never seen this conversation and will read only this file. If something matters to the outcome, it must be in the spec.

Capture *what* and *why*, not *how*. Don't prescribe implementation steps, file structure, or a task breakdown; whoever builds this will plan after looking at the real state of the project. Use my words and my decisions. Don't add requirements I didn't state. If you inferred something, label it as an assumption.

Use these sections:

1. **Goal** — what we're making, why, and who it's for.
2. **What "done" looks like** — numbered, checkable acceptance criteria, specific enough that someone who wasn't in this conversation could verify each one.
3. **Constraints** — tools, time, data sources, format, audience, anything that limits the solution.
4. **Out of scope** — what we are deliberately not doing.
5. **Edge cases and failure modes** — what could go wrong and what should happen.
6. **Decisions and why** — each decision I made during the conversation, with the reasoning, including alternatives we rejected. This is the most important section: it's the part a summary usually loses.
7. **Open questions and assumptions** — anything unresolved or inferred. Don't invent answers; list them here.
8. **How to verify** — how to check the finished result against section 2 (run it, test the edge cases, check the sources, compare to the provided material).

When you're finished, give me a short summary of what's in the spec and ask me to review and correct it. I will clear the session only after I've approved it.
