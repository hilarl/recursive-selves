# Recursive Self

Research on **self-improving AI** — expert selves that revise themselves, and the evidence that
decides whether a revision was actually an improvement.

---

## The claim

A **self** is a persistent, addressable expert being — an engineer, a physician, a machinist, a
policy analyst. It holds one identity, one memory surface and one accountable principal, and is
internally a composition of several function-typed voices that are never separately addressable
from outside.

It persists. It accumulates. It is answerable for what it did under its own name. That is what
makes it a self rather than a session.

## Self-improvement is the object of study

A self proposes revisions to itself — to how it reasons, what it reaches for, what it treats as
settled. The interesting question is never whether it can generate revisions. It is whether any
given revision made it better, or only made it *look* better on the evidence that suggested it.

Almost everything that reads as self-improvement is regression to the mean, a budget the arms did
not share, or a result measured on the same draw that produced it. A system that cannot tell those
apart from real gains will improve itself confidently in the wrong direction, and compound.

So the loop is only as good as what closes it. Improvement has to be settled against evidence the
self did not select, and the decision has to survive a second draw.

**The field has arrived at the same sentence.** Across the 2025–26 literature, every controlled
positive result in self-evolving systems routes through an externally verified signal gating what
gets written, admitted, trusted or selected — and every negative result is the unverified version
of the same operation. Meanwhile the laboratories furthest along say in public that for cumulative
acceleration effects there is no measure. The measurement layer is the bottleneck, and it is the
thing built here.

## The first gated curve

This project now holds what we believe is the first self-improvement trajectory on record to be
rendered as a statistical verdict rather than a chart: an instruction-evolution loop, guided only
by mechanically attributed failures, adopted only on held-out improvement, run under a
pre-registered protocol with the drift floor measured inside the experiment. Net expansion was
real. The verdict was **tapering** — the rate fell within the run, the time-uniform bound did not
exclude zero, and most of the headline was churn. The system reported the bend in its own curve.

That is the point. A curve that read "twenty to thirty, fifty percent relative gain" would have
been publishable anywhere. What makes improvement *mean* something is machinery that refuses that
sentence when the evidence cannot carry it — including, especially, about itself.

## Persona text does not confer competence

Expert personas show no consistent benefit on hard reasoning across six model families.
Low-knowledge personas are actively harmful. Role prompting changes register and vocabulary while
leaving factual reliability exactly where it was. This finding has been replicated repeatedly
through 2026, including under randomized controls; the refinement is that persona buys register
and alignment — orthogonal to competence, sometimes at its expense.

So expertise cannot be a prompt field. It has to be a bundle of things a self can **reach** and be
**checked by**:

> **Competence = what it can reach × what checks it. Never what it is called.**

Everything else here is downstream of that sentence.

## What a self is made of

| Part | What it is |
|---|---|
| **Souls** | Function-typed internal voices — propose, critique, verify — not personalities |
| **Reach** | The tools, stores, procedures and corpora each soul may touch |
| **Verification** | A substrate the self cannot author |
| **Identity** | Principal, anchor, provenance, disclosure |
| **Bounds** | Depth, spawn, token and cost caps, inherited transitively |

The verification substrate is load-bearing. A self that authors its own ground truth can prove
anything, and a self-improving one will. **All seven regimes below now refuse to exist without
their substrate declared** — a self whose ground truth is a model's opinion is refused at
construction, not discouraged in documentation.

What closed is the construction layer: a self refuses to build without its declared protocol or
register. The live substrate those declarations point at — the raters behind the protocol, the
capture path behind the register — is a deployment that has not happened. Refusal at construction
proves the self demands its ground; only deployment supplies it.

## Expertise groups by how it is proved wrong

Expertise that shares a **way of being proved wrong** shares machinery. Expertise that merely
sounds similar does not.

| Regime | Ground truth |
|---|---|
| **Executable** | Code runs, tests pass, a query returns |
| **Formal** | Proof, dimensional analysis, simulation, spec check |
| **Instrument** | A physical measurement the self cannot fake — declared before the work, recorded by a party that is not the self |
| **Procedure** | A checklist, protocol or regulation with an owner |
| **Source** | A citation that resolves and says what was claimed |
| **Preference** | Blinded pairwise comparison against a failure taxonomy named before any comparison runs, with more than one rater — because position alone flips a double-digit share of verdicts, and one rater's preference carries no reliability estimate at all |
| **Outcome** | A delayed, noisy, real-world signal — predictions written down before the fact and settled later **by a party that is not the self** |

## What a human brings, built the way the evidence permits

A self that operates the way a person does needs more than voices: episodes, growth, reflection,
relationships, even something like dreams. Each of these has a costume version that measures
negative and an evidence-compliant version that survives:

- **Episodes** — append-only, reconstructed at read. Consolidating memory rewrites degrade
  fastest; conflict-preserving history is what buys honest abstention.
- **Reflection** — from *verified failures only*. Unguided self-critique turns correct answers
  wrong at measured double-digit rates; failure signals extracted mechanically fix what free-form
  self-diagnosis confabulates.
- **Growth** — adaptive competence-band admission, promoted on the demonstrated floor, demoted
  only when the optimistic reading fails. Fixed easy-to-hard ladders measure no better than
  random ordering.
- **Relationships** — standing earned from commitments settled by the counterparty, disclosure
  before anything else, corrections from the principal kept as ground. Ambient interaction
  history alone measurably fails to align an agent to its principal.
- **Dreams** — an idle pass that settles books and names what is due, and refuses to rewrite
  memories, settle its own evidence, or adopt its own lessons. Offline compute is amortization;
  consolidation harms once the raw record fits.
- **Many minds** — the deep result: no ensemble of models buys real independence (effective width
  ceilings near two, however many voices are added, and models converge hardest exactly on what
  they collectively get wrong). Genuine second opinions come from **different ground** — disjoint
  evidence, non-model verifiers — not from more voices.

## Knowing what it does not know

Calibration is scored by the Brier score, decomposed the way Murphy decomposed it — reliability,
resolution, uncertainty. The decomposition is the point: a forecaster who answers with the base
rate every time is *perfectly calibrated* and carries no information at all. A self that improves
its calibration score by becoming vaguer has not improved.

## Measurement

Claims are gated by a measurement layer developed alongside this research — deliberately carrying
none of its vocabulary so it can be pointed at any system, including somebody else's — and it
has been: it has refused published results at design level, refused this project's own claims
repeatedly, and refused its own operator's protocol errors during live runs. The gates check the
things that make a result evaporate: effect size against redraw noise, discordance between arms,
selection and reporting on the same items, budget mismatches, criteria chosen after the numbers,
and verdicts that were never entitled to fire.

The same discipline points outward at questions beyond self-improvement: safety, bias and honesty
claims about models are improvement claims wearing different clothes, and fail in the same ways —
single runs, no floors, unmatched arms. A companion project pointing these gates at models
themselves — bias, safety and honesty claims, held to the same standard — is in progress.

## Related

- **[Sovox](https://github.com/hilarl/sovox)** — the operating system: one-step installation of the entire stack, on any machine
- **[Tenzro](https://github.com/tenzro)** — the distributed computing network and infrastructure
- **[Furcate](https://github.com/furcateai)** — the distributed intelligence system
- **[Ectopia](https://github.com/hilarl/ectopia)** — the 2019 blueprint
- **[Decadence](https://open.spotify.com/album/2IhweFSLiYirosGe7WcRs7)** (2012) with [Nothnegal](https://en.wikipedia.org/wiki/Nothnegal) — a concept album set in a future governed by artificial intelligence. *[Singularity](https://open.spotify.com/track/1i4tTyQFVISc3sg1mnnql1)* is about the self-improving AI at its centre.

---

© Hilal Agil
