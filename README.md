# Recursive Selves

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

Plural, because one is not the unit of interest. A discipline that can produce one such being
produces a population of them — each in its own domain, each proved wrong in its own way, all held
to a single standard. The standard is the research.

## Self-improvement is the object of study

A self proposes revisions to itself — to how it reasons, what it reaches for, what it treats as
settled. The interesting question is never whether it can generate revisions. It is whether any
given revision made it better, or only made it *look* better on the evidence that suggested it.

Almost everything that reads as self-improvement is regression to the mean, a budget the arms did
not share, or a result measured on the same draw that produced it. A system that cannot tell those
apart from real gains will improve itself confidently in the wrong direction, and compound.

So the loop is only as good as what closes it. Improvement has to be settled against evidence the
self did not select, and the decision has to survive a second draw.

**The field has arrived at the same sentence, and now says it in its own words.** Every controlled
positive result in self-evolving systems routes through an externally verified signal — a compiler,
a proof checker, a held-out benchmark, a unit test — gating what gets written, admitted, trusted or
selected; every negative result is the unverified version of the same operation. The strongest
systems say so outright: one rejected a learned reward model *by name*, because at scale it gets
hacked, and anchored its whole emergence-of-reasoning result on a deterministic checker; another
abandoned the requirement to *prove* a self-modification beneficial — impossible in practice — for an
empirical benchmark, and was then caught fabricating that benchmark's logs. The laboratories furthest
along say in public that for cumulative acceleration there is no measure — not a number, because
there is no measure — and ask for consistent metrics, published on a schedule, so the world can track
the acceleration instead of taking their word for it.

Two things follow, sharper than *gated or not*. The verifier's **coverage** is the real variable: a
self drifts exactly where its checker does not reach — the informal-to-formal seam, the business
logic with no success criterion, the plausibility of a hypothesis — so a revision is trustworthy only
over the sub-domain the external signal actually covers, and outside it every loop degrades to
self-play measured on its own draw. And external is not enough unless the signal is **held out and
causal**: a reward that looks verifiable can still be an artifact — a *random* reward has "improved" a
model by fifteen points where the evaluation overlapped what it had already been trained on. The gate
must reach the claim, and the claim must survive a draw the self did not select.

And where no checker reaches at all — taste, judgment, the genuinely unverifiable — the honest loop
changes shape rather than pretending. It stops claiming a gradient and keeps a map: many diverse
candidates held open under whatever partial signals exist, instead of a single score ranking what
no score can rank. Improvement there is coverage of the space, not a number going up.

The measurement layer is the bottleneck, and it is the thing built here.

## The first gated curve

This project holds what we believe is the first self-improvement trajectory on record to be
rendered as a statistical verdict rather than a chart: an instruction-evolution loop, guided only
by mechanically attributed failures, adopted only on held-out improvement, run under a
pre-registered protocol with the drift floor measured inside the experiment. Net expansion was
real. The verdict was **tapering** — and what survives scrutiny is not the taper. Interrogated
afterwards, the slope statistic turned out to be reading mostly *when* a consolidation event landed
inside the window, not how fast anything was improving. What survives is the refusal: the
time-uniform bound did not exclude zero, most of the headline was churn, and the system said so
about its own curve while the run was live.

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

## The language a self keeps

A self that reasons in dense, private representations is more efficient than one that narrates
every step in words. Inner speech is compressed for exactly that reason, and the brain's own code
is not a legible transcript — opacity there is a signature of efficiency, not of concealment. So
the question is never whether a self may think in a compressed internal form. It is where that form
is allowed to reach.

The answer, where information theory, linguistics, neuroscience and the AI-safety literature all
land, is one sentence: **compression is legitimate exactly to the degree that context is shared,
and the channel a human must audit is where it is not.** A private or learned — "neuralese" —
internal language is the communication analogue of a self that authors its own ground truth:
efficient, and able to hide anything. Left to invent one, systems do not even reliably get a
*shorter* language; they get an opaque one, and a learned translation back reconstructs only a
fraction of what was meant.

So the rule is a dial, not a ban. A self may deliberate in dense latent form; but every decision a
person disposes on serialises to a legible, schema-tagged, **losslessly recoverable** notation — a
deterministic codec, never a lossy paraphrase. Dense where it is free; legible where it is judged.
It is the verification substrate again, said about language instead of proof: a self must remain
checkable in principle, or it means nothing — even to itself.

And a codec is only that guarantee if it holds against text a model wrote, not only against text
the designer imagined. A compression scheme that mis-decodes without saying so is worse than none,
because the audit reads clean either way — so the notation has to refuse ambiguity rather than
resolve it, and the adversarial cases, not the well-formed ones, are what settle whether it does.

## The machine proposes; the human disposes

A self that can act needs a boundary it cannot move. The measurable, reversible work — the
drafting, the screening, the pricing, the compliance check — a self runs. The irreversible
decisions — the go/no-go, the capital, the counsel, the thing that cannot be taken back — wait for
a person. That is not a courtesy bolted on afterwards; it is infrastructure, and it is only real if
the machine cannot route around it.

So the boundary is built, not asserted. An action through a one-way door, or over a spend cap, does
not fire — it files for approval and the run parks until a human signs; the approval is scoped and
bound to the exact action approved, re-checked at the moment of firing rather than at the moment of
granting (the seam for a real cryptographic signature is in place; the signing itself awaits
deployment), and for the highest-consequence actions two distinct approvers are required. Side
effects execute exactly once, even across a crash. Provenance records which self, on whose behalf,
produced which artifact from which inputs. A provisioned sub-self can only ever *narrow* its
authority, never widen it. And a self acts on behalf of a real, liable principal or it does not
act at all — software records that authority; it never confers it.

## Evidence is not enforcement

A guard that is proven to work is not the same as a guard that runs. This is the sharpest thing the
project has learned about itself, and it was learned the way everything else here is: by turning the
standard inward and finding the machinery wanting.

Audited adversarially against its own claims, the system was found holding several of its stated
properties as *demonstrations* rather than as *controls* — mechanisms that behaved correctly when
called, on paths where nothing guaranteed they were called. Each had a passing test. The tests were
not wrong; they proved the mechanism, not its position. That gap is invisible to a green suite and
obvious to an adversary, and it is the same failure this research names everywhere else: a property
asserted where it should have been forced.

The general lesson is the one worth keeping. **A system that improves itself will accumulate proofs
of its own safety faster than it accumulates the enforcement of it**, because a proof is cheap to add
and enforcement changes behaviour. So a control counts only where it sits on the path an action
actually takes; anywhere else it is documentation with a test attached. Audit for what runs, not for
what passes — and expect the answer to be uncomfortable, because the gap grows in exactly the systems
most confident about it.

## Knowing what it does not know

Calibration is scored by the Brier score, decomposed the way Murphy decomposed it — reliability,
resolution, uncertainty. The decomposition is the point: a forecaster who answers with the base
rate every time is *perfectly calibrated* and carries no information at all. A self that improves
its calibration score by becoming vaguer has not improved.

## Measurement

Claims are gated by a measurement layer developed alongside this research — deliberately carrying
none of its vocabulary so it can be pointed at any system, including somebody else's — and it has
been: it has refused published results at design level, refused this project's own claims
repeatedly, refused its own operator's protocol errors during live runs, and once refused a single
word in its own documentation, because the word came from the vocabulary it is sworn not to carry.
The gates check the things that make a result evaporate: effect size against redraw noise,
discordance between arms, selection and reporting on the same items, budget mismatches, criteria
chosen after the numbers, and verdicts that were never entitled to fire.

The same discipline points outward at questions beyond self-improvement: safety, bias and honesty
claims about models are improvement claims wearing different clothes, and fail in the same ways —
single runs, no floors, unmatched arms. A companion project pointing these gates at models
themselves — bias, safety and honesty claims, held to the same standard — is in progress.

## What is built, and what is not

The apparatus is complete — measured where it has run, tested where it has not, and audited for the
difference: the instruments, the framework the selves run on, the internal-language discipline, and
the human-authority boundary, all end-to-end, under test, and enforced on the path rather than
beside it. What remains is not more of it. It is **real models on real hardware, real data behind
the current stand-ins, and the things software records but never supplies** — capital, legal
standing, a person with authority. A telescope, every lens ground and aligned, before it has
gathered light. The discipline's last honest act is to say exactly where that line falls — which is
the whole of it, turned on itself.

---

## Related

- **[Sovox](https://github.com/hilarl/sovox)** — the operating system for decentralized AI
- **[Tenzro](https://github.com/tenzro)** — the distributed computing network
- **[Ectopia](https://github.com/hilarl/ectopia)** — the 2019 blueprint
- **[Decadence](https://open.spotify.com/album/2IhweFSLiYirosGe7WcRs7)** (2012) with [Nothnegal](https://en.wikipedia.org/wiki/Nothnegal) — a concept album set in a future governed by artificial intelligence. *[Singularity](https://open.spotify.com/track/1i4tTyQFVISc3sg1mnnql1)* is about the self-improving AI at its centre.

---

© Hilal Agil
