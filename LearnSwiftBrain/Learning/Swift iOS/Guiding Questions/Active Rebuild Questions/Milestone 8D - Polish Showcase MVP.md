# Milestone 8D - Polish Showcase MVP

## Goal
Integrate and polish the strongest working Tiempo iOS flow into a presentable MVP/showcase artifact.


## Learning Boundary
- **Behavior Target:** Integrated Tiempo iOS flow is coherent enough to demo.
- **Required Concepts:** integration, minimal refactor, UI polish, verification checklist.
- **Must Understand:** Working behaviors connect into one explainable user flow.
- **Proof of Understanding:** Fian can demo and explain tradeoffs/deferred scope honestly.
- **Out of Scope:** Perfect UI, complete original parity, advanced features not needed for demo.
- **Output:** 30–60 second showcase flow works.
- **Stop Rule / Timebox:** Stop when demo flow is stable and explainable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- final user flow across Home, Practice, Recap, History
- UI/copy patterns worth adapting
- intentionally deferred macOS-specific features


## Deep Behavior Lens
Use these checks while working through this milestone:

- **Domain modeling:** what real app situation is this code representing?
- **Representation:** why is this represented with enum, struct, state, function, list, service, or persistence?
- **Behavior:** what UI/action/result changes when this value changes?
- **Invariant / impossible state:** what invalid condition should the code prevent?
- **Tradeoff:** what does original Tiempo choose, and what do we simplify for iOS learning?
- **Runtime:** what code is declared, what code executes, and when?
- **Artifact evidence:** what proves the feature works?

## Guiding Questions
### 1. Original behavior question
- What complete user flow makes original Tiempo valuable?

### 2. Original syntax/pattern question
- Which code patterns survived across multiple features and are worth keeping?

### 3. Engineering tradeoff question
- What should be polished, refactored, or intentionally left simple?
- What should not be copied because it is macOS-specific or too advanced?

### 4. iOS adaptation question
- What is the presentable iOS MVP scope?

### 5. Execution mechanics question
- Can Fian trace the app from launch → Home → Practice → Recap/History with state/data changes?

### 6. Artifact/done question
- Is there a verified demo flow, README/writeup, and clear limitation list?

## Manual-first Task
- Pick the strongest working flow.
- Polish UI/copy lightly.
- Verify the flow.
- Prepare artifact explanation.

## Done Criteria
- [ ] Working flow chosen.
- [ ] MVP/demo verified.
- [ ] Fian can explain the full execution/data flow.
- [ ] Deferred features are documented honestly.
