# Milestone 7 - SwiftData History Persistence

## Goal
Persist practice results and show saved sessions in History using SwiftData as a basic real-app persistence foundation.

## Learning Boundary
- **Behavior Target:** Practice results are saved and reopened from History.
- **Real Feature Requirement:** History should not remain mock/in-memory once persistence milestone starts.
- **Required Concepts:** SwiftData @Model, ModelContainer/model context, insert/save, @Query or fetch, Identifiable/list UI, simple schema design.
- **Must Understand:** Result is transformed/stored; app loads saved records; History list displays persisted data.
- **Proof of Understanding:** Fian can explain memory vs persistent storage, predict schema/property effects, and rebuild basic save/load.
- **Out of Scope:** Complex migration, CloudKit sync, multi-device sync, advanced relationships, production data recovery.
- **Output:** Saved practice history survives app relaunch/reload.
- **Stop Rule / Timebox:** Stop when basic save/load/history is verified.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- History feature files
- SwiftData/history storage files
- PracticeModels.swift / persisted model equivalents

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
- How does original Tiempo save and show practice history?
### 2. Original syntax/pattern question
- What SwiftData models/queries/context operations are used?
### 3. Engineering tradeoff question
- Why persist result data instead of recomputing from View state?
### 4. iOS adaptation question
- What simple persisted model is enough for useful iOS History?
### 5. Execution mechanics question
- Stop/save → model context insert → app reload/query → list updates: what runs?
### 6. Artifact/done question
- Does a saved session reappear after relaunch/reload?

## Manual-first Task
- Inspect original history/persistence code.
- Define simple SwiftData model.
- Save PracticeResult after recap/stop.
- Show History list from persisted records.
- Verify persistence.

## Done Criteria
- [ ] Original persistence/history inspected.
- [ ] SwiftData save/load works.
- [ ] History list shows persisted sessions.
- [ ] Fian can explain basic SwiftData flow.
