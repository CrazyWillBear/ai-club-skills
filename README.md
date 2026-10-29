# AI Club skills

Two skills for the "grill, spec, clear, build, review" workflow:

- **grill-me**: the agent interviews you about a task until you both understand what to make and how you'll know it's done. It asks questions only and builds nothing.
- **to-spec**: turns that interview into a standalone `SPEC.md` that a brand-new session can build from.

## Install (macOS / Linux / WSL)

```
git clone <this repo>
cd ai-club-skills
bash install.sh
```

This copies both skills into `~/.claude/skills`, `~/.copilot/skills`, and `~/.agents/skills`, so one install covers Claude Code, GitHub Copilot CLI, and tools that read the shared `.agents` folder.

## Install by hand (Windows or if the script fails)

Copy the `grill-me` and `to-spec` folders into whichever of these exists for your agent:

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
5. When the build is done, have a reviewer subagent check the work against `SPEC.md`.

If your agent doesn't pick the skills up by name, open the `SKILL.md` file and paste its body into the chat as a prompt. It works the same way.

The copy-paste prompts for every step (install, grill, spec, build, review) are in [`prompts.md`](prompts.md).
