# AI Club skills

Three skills for the "grill, spec, clear, build, review" workflow. Each one is also useful on its own, for any project.

- **grill-me**: the agent interviews you about a task until you both understand what to make and how you'll know it's done. It asks questions only and builds nothing.
- **to-spec**: turns that interview into a standalone `SPEC.md` that a brand-new session can build from.
- **fresh-review**: the agent spawns a fresh reviewer subagent that didn't do the work, asks what to check the work against (a spec, an assignment, source material, notes), and reports back. The reviewer edits nothing. It works on code, writing, research, data, and plans.

## Install (macOS / Linux / WSL)

```
git clone <this repo>
cd ai-club-skills
bash install.sh
```

This copies all three skills into `~/.claude/skills`, `~/.copilot/skills`, and `~/.agents/skills`, so one install covers Claude Code, GitHub Copilot CLI, and tools that read the shared `.agents` folder.

## Install by hand (Windows or if the script fails)

Copy the `grill-me`, `to-spec`, and `fresh-review` folders into whichever of these exists for your agent:

| Agent | Folder |
|---|---|
| Claude Code | `~/.claude/skills/` |
| GitHub Copilot CLI | `~/.copilot/skills/` |
| Other agents (shared) | `~/.agents/skills/` |

Each skill is a folder containing a `SKILL.md`. On Windows, `~` is your user folder (`C:\Users\<you>`).

## Use

Start a new agent session in an empty project folder, then:

1. Ask the agent to run `grill-me` and describe what you want to make.
2. Answer the questions. Say "wrap up" when you're ready to stop.
3. Ask it to run `to-spec`. Read `SPEC.md` and fix anything wrong.
4. Clear the session (or start a new one), then point the agent at `SPEC.md` to build it.
5. When the build is done, ask it to run `fresh-review`. When it asks what to review against, give it `SPEC.md`. Read the report, then tell the agent which findings to fix.

If your agent doesn't pick the skills up by name, open the `SKILL.md` file and paste its body into the chat as a prompt. It works the same way.
