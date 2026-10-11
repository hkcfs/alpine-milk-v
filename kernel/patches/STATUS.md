# Patch status vs Linux 7.2.10 (audited 2026-10-11)

Method: `git apply --check` per patch on the pristine tree, then full
in-order application (001->025, as build.sh does). In-order result: all
patches apply EXCEPT 001/017/018. Order-dependent patches that fail the
solo check but apply in series are marked APPLIES (series).

Legend: APPLIES = applies (solo or in series) · DROP = already upstream,
removed from the tree · REFRESH = context changed, rework needed (none
remain in this cycle).

| Patch | Verdict | Notes |
|-------|---------|-------|
| 001 plic/clint doc | SKIP-R | No sophgo plic doc upstream, but bindings dir reorganized; refresh or drop |
| 002 SG2000 dtsi | APPLIES | |
| 003 thermal bindings | APPLIES | |
| 004 cv1800 thermal driver | APPLIES | Driver absent upstream — still needed |
| 005 thermal sensor DTS | APPLIES | |
| 006 MDIO mux bindings | APPLIES | |
| 007 thermal zones DTS | APPLIES (series) | Fails solo check; needs 005 context — keep order |
| 008 MDIO mux driver | APPLIES | |
| 009 timer DT node | APPLIES | |
| 010 MDIO mux DTS use | APPLIES | |
| 011 watchdog DT node | APPLIES (series) | Fails solo check; needs 009 context — keep order |
| 012 PWM bindings | APPLIES | |
| 013 remoteproc bindings | APPLIES | |
| 014 PWM driver | APPLIES | |
| 015 remoteproc C906L driver | APPLIES | Driver absent upstream — still needed |
| 016 DMA bindings | APPLIES | |
| 017 DMA driver support | DROP | `sophgo,cv1800b-axi-dma` is upstream — file deleted |
| 018 DMA mux DTS | DROP | Upstream with DMA — file deleted |
| 019 efuse bindings | APPLIES | |
| 020 eFuse driver | APPLIES (series) | No sophgo efuse upstream; needs 019 context — keep order (ph03 owns it) |
| 021 i2s/tdm DTS | APPLIES | |
| 022 PWM DTS nodes | APPLIES (series) | Fails solo check; needs PWM context — keep order |
| 023 mailbox DT node | APPLIES (series) | `cv1800-mailbox.c` IS upstream, node still needed; needs series context — keep order |
| 024 Duo 256M board support | APPLIES | No duo256m DTS upstream in 7.2.x — still needed; re-check on 7.3+ |
| 025 remoteproc probe fix | APPLIES (series) | Needs 015 context — keep order; re-verify if 015 refreshes |

Action: keep strict numeric order (series dependencies). Re-run this audit
every kernel bump; 024 re-checked on 7.3+ (Duo 256M board support expected
upstream).
