#!/usr/bin/env bash
# Installs the club skills (grill-me, to-spec, fresh-review) for Claude Code, GitHub Copilot CLI,
# and other agents that read the shared ~/.agents/skills location.
# Safe to re-run: it overwrites older copies of these skills.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS=(grill-me to-spec fresh-review)
TARGETS=("$HOME/.claude/skills" "$HOME/.copilot/skills" "$HOME/.agents/skills")

for target in "${TARGETS[@]}"; do
  mkdir -p "$target"
  for skill in "${SKILLS[@]}"; do
    rm -rf "$target/$skill"
    cp -R "$HERE/$skill" "$target/$skill"
  done
  echo "Installed ${SKILLS[*]} -> $target"
done

echo "Done. Start a new agent session and try: grill-me"
