# Milestone 7B - Persistence

## Goal
Save practice results so they can be reopened after the session/app changes.


## Learning Boundary
- **Behavior Target:** Practice results survive app/session restart.
- **Required Concepts:** save/load, Codable or SwiftData as chosen, model stability, source of truth.
- **Must Understand:** Result is written to storage; app reloads it into state/list.
- **Proof of Understanding:** Fian can explain memory vs storage and verify data survives restart.
- **Out of Scope:** Complex migrations, cloud sync, encryption, production data layer.
- **Output:** Saved practice history survives relaunch/reload.
- **Stop Rule / Timebox:** Stop when basic save/load is verified.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- SwiftData usage in original Tiempo
- history/session persistence models


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
- What practice data does original Tiempo persist?

### 2. Original syntax/pattern question
- How does original code use SwiftData or persistence models?

### 3. Engineering tradeoff question
- Why persist sessions instead of keeping them in memory?
- Is SwiftData worth learning now, or should persistence wait until core flow is stable?

### 4. iOS adaptation question
- What minimal data should Tiempo iOS persist first?

### 5. Execution mechanics question
- Save action → model context/storage update → history query/list updates: what triggers what?

### 6. Artifact/done question
- Does a completed practice remain available after saving/reopening?

## Manual-first Task
- Inspect original persistence pattern.
- Decide whether to use SwiftData or temporary persistence.
- Implement minimal save/read flow when ready.

## Done Criteria
- [ ] Original persistence pattern inspected.
- [ ] iOS app can save/read practice result data.
- [ ] Fian can explain persistence data flow.
