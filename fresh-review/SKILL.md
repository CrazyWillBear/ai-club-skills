---
name: fresh-review
description: Get an independent review of finished work (code, a document, a research brief, a data analysis, a plan) from a fresh subagent that didn't produce it. Use when work is done and should be checked, or when the user says "fresh review" or asks for an independent review.
---

Get an independent review of the work from a fresh subagent. Its value comes from not sharing your context or assumptions, so protect that.

## 1. Find out what is being reviewed, and against what

Work out what to review (a folder, files, a document). If it isn't obvious, ask me.

Then ask me: "Is there anything the reviewer should weigh this work against? For example a spec or requirements, an assignment or rubric, source material, a style guide, or notes. Give me paths, or paste it in." Don't skip this question, and don't assume the answer. If I say there's nothing, the reviewer judges on its own for correctness, completeness, and quality, and the report should say so.

## 2. Spawn one reviewer subagent

Use your subagent or delegation feature. Its brief must contain only:

- the location of the work
- the paths to the reference materials (point to them, don't summarize them)
- the review instructions below

Do not tell it what was built or how, what you changed, what you spent time on, or that you think the work is correct. Do not pass along conversation history.

## 3. Review instructions to put in the brief

- Read the reference materials first.
- Inspect the work itself. Run it, test it, or check it; don't only read it.
- Check the work against every requirement in the reference materials, then look for what they didn't anticipate: errors, gaps, risks, edge cases.
- Fit the checks to the kind of work:
  - Code: run it, try bad input and edge cases, and run any tests.
  - Writing or research: check that cited sources exist and actually say what's claimed, and that facts and numbers are right.
  - Data analysis: recompute key figures from the raw data.
  - Plans or designs: check against the goals and constraints, and look for missing steps.
- Do not edit, create, or delete anything.
- Report issues as HIGH, MEDIUM, or LOW. For each, say which requirement or area it affects, and give evidence: what you ran or read, and what happened.
- Say which requirements pass, and say plainly what you couldn't check.

## 4. Report back

Show me the reviewer's report exactly as it wrote it. Don't soften, re-rank, or summarize it. Then stop: don't fix anything until I tell you which items to fix.

## If you can't spawn a subagent

Say so. Offer two options: I start a new session and run this skill there, or you review the work yourself and note clearly that it isn't independent.
