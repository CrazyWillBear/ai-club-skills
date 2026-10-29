---
name: fresh-review
description: For the main agent only. Get an independent review of finished work (code, a document, a research brief, a data analysis, a plan) by spawning one fresh reviewer subagent with a clean brief. Use when work is done and should be checked, or when the user asks for a fresh or independent review. Never use this skill if you are the reviewer.
---

If you were spawned as a reviewer subagent, or your brief tells you to review something, stop reading this file. Don't use this skill and don't spawn anything. Do the review yourself, using the instructions in your brief.

Everything below is for the main agent. Your job is to spawn one reviewer subagent with a clean brief, then pass its report to the user. You don't review the work yourself.

## 1. Find out what is being reviewed, and against what

Work out what to review (a folder, files, a document). If it isn't obvious, ask the user.

Then ask the user: "Is there anything the reviewer should weigh this work against? For example a spec or requirements, an assignment or rubric, source material, a style guide, or notes. Give me paths, or paste it in." Don't skip this question, and don't assume the answer. If they say there's nothing, the reviewer judges on its own for correctness, completeness, and quality, and the report should say so.

## 2. Spawn one reviewer subagent

Use your subagent or delegation feature, once. Write the brief yourself as plain text, using the template below. Fill in only the bracketed parts.

The brief must not contain: what was built or how, what you changed, what you spent time on, that you think the work is correct, any conversation history, or the name of this skill. The reviewer's value comes from not sharing your context.

### Brief template

> You are an independent reviewer. You have not seen how this work was made. Do the review yourself: don't use any skills and don't spawn other agents.
>
> Work to review: [location]
> Review it against: [paths to reference materials, or "nothing was provided; judge it on its own for correctness, completeness, and quality, and say so in your report"]
>
> How to review:
> - Read the reference materials first.
> - Inspect the work itself. Run it, test it, or check it; don't only read it.
> - Check it against every requirement in the reference materials, then look for what they didn't anticipate: errors, gaps, risks, edge cases.
> - Fit the checks to the kind of work. Code: run it, try bad input and edge cases, run any tests. Writing or research: check that cited sources exist and say what's claimed, and that facts and numbers are right. Data analysis: recompute key figures from the raw data. Plans or designs: check against the goals and constraints and look for missing steps.
> - Do not edit, create, or delete anything.
>
> Report: list issues as HIGH, MEDIUM, or LOW. For each, say which requirement or area it affects and give evidence: what you ran or read, and what happened. Then say which requirements pass, and say plainly what you couldn't check.

## 3. Report back

Show the user the reviewer's report exactly as it wrote it. Don't soften, re-rank, or summarize it. Then stop: don't fix anything until the user tells you which items to fix.

## If you can't spawn a subagent

Say so. Offer two options: the user starts a new session and pastes the brief template there, or you review the work yourself and note clearly that it isn't independent.
