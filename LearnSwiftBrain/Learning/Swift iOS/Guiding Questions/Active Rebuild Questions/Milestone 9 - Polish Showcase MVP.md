# Milestone 9 - Polish Showcase MVP

## Goal
Integrate and polish the useful Tiempo iOS flow into a coherent MVP/showcase artifact.

## Learning Boundary
- **Behavior Target:** User can complete a 30–60 second useful practice demo flow.
- **Real Feature Requirement:** Showcase must demonstrate core value: practice, transcript/feedback, recap, saved history.
- **Required Concepts:** integration, minimal refactor, UI polish, verification checklist, honest defer list.
- **Must Understand:** Working behaviors connect into one explainable flow; polish supports clarity, not scope creep.
- **Proof of Understanding:** Fian can demo the app and explain architecture/behavior tradeoffs honestly.
- **Out of Scope:** Perfect UI, complete original parity, advanced Keynote features, production hardening.
- **Output:** Presentable Tiempo iOS MVP/showcase flow.
- **Stop Rule / Timebox:** Stop when demo flow is stable, explainable, and verified enough for showcase.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- final integrated user flow
- UI/copy patterns worth adapting
- intentional deferrals from original Tiempo

## Deep Behavior Lens
Use these checks while working through this milestone:

- **Domain modeling:** what real app situation is this code representing?
- **Real feature requirement:** what useful app behavior should not be replaced by dummy behavior?
- **Representation:** why is this represented with enum, struct, state, function, ViewModel, service, persistence, or framework API?
- **Behavior:** what UI/action/result changes when this value/event changes?
- **Invariant / impossible state:** what invalid condition should the code prevent?
- **Tradeoff:** what does original Tiempo choose, and what should the iOS rebuild simplify/defer?
- **Runtime:** what is declared, what executes, and when?
- **Artifact evidence:** what proves the feature works?

## Guiding Questions
### 1. Original behavior question
- Which original Tiempo behaviors are represented in the iOS MVP?
### 2. Original syntax/pattern question
- Which patterns survived across multiple features and are worth keeping?
### 3. Engineering tradeoff question
- What should be polished, refactored, or intentionally left simple?
### 4. iOS adaptation question
- What is the presentable iOS MVP scope?
### 5. Execution mechanics question
- Can Fian trace launch → practice → transcript/result → recap → history?
### 6. Artifact/done question
- Can the app be demoed clearly in 30–60 seconds?

## Manual-first Task
- Pick strongest working flow.
- Fix obvious UX gaps.
- Verify demo path.
- Write honest deferred-scope list.
- Prepare explanation of what Fian built manually and what AI helped with.

## Done Criteria
- [ ] Integrated MVP flow works.
- [ ] Deferred features are explicit.
- [ ] Fian can demo and explain behavior.
