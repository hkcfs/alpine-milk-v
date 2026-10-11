# AGENTS.md — alpine-milk-v

Shell + C + YAML project: `build.sh` assembles bootable Alpine SD images for the
Milk-V Duo 256M. Terms in CONTEXT.md. Gates: `shellcheck` on shell scripts,
`python3 -c "import yaml"` on workflow YAML, `bash -n` as syntax fallback.

## Test baseline (thin — say so)

No unit tests. Proof today = QEMU boot-to-login + SSH diagnostics
(`scripts/capture-boot.sh` in CI). New driver work cannot be proven in QEMU
(`virt` supplies its own DTB): per-phase gate is static analysis
(shellcheck, yamllint, `dtc`-clean DTS, `git apply`-clean patches) + QEMU
regression. Add characterization around whatever you touch; real-hardware
proof happens in one flash session (see ROADMAP phase 07).

## Standing rules

- riscv-only for new work; arm64 rides the vendor tree untouched.
- Image-only: no upstream list submissions in this effort.
- Untested-until-HW: never claim tested, never tag a release as tested
  before the hardware session signs off.
- One final image for the HW session; no per-phase images or tags.

## Capabilities

- reviewers -> .opencode/agents/shell-review.md + kernel-patch-review.md (stack specials; ps-judge panel self-sufficient without them)
- parsimony -> ~/.config/opencode/skills/ponytail (DietrichGebert/ponytail)
- docs-grounding -> rung 2 websearch+webfetch (no rung-1 venv/node_modules in this repo)
- browser -> none (no UI in this project; add chrome-devtools-mcp to .mcp.json if a frontend appears)
- human-review -> ~/.claude/skills/human-review (node on PATH)
- craft -> ~/.config/opencode/skills/{prototype,diagnosing-bugs,domain-modeling,research} (mattpocock/skills engineering subset; resolving-merge-conflicts absent upstream, tdd + code-review deliberately excluded)
- craft-collision -> ~/.config/opencode/skills/code-reviewer FLAGGED (collides with /ps-review panel; do not invoke as model-invocable)
- gates -> ~/.local/bin/shellcheck + ~/.local/bin/yamllint (pip --user; sudo denied on this machine); fallback: bash -n + python3 yaml.safe_load
- subagents -> task tool native, no permission denials (no opencode.json)
- model-tiers -> deep = session model (opencode/muse-spark-1.3-contributor-free; no per-agent overrides — sanctioned fallback) · standard = ps-builder's model (unset) · mechanical = ps-mech's model (unset)
