# Milestone 6 - Recap Screen

## Goal
Display the completed practice result as a recap screen.


## Learning Boundary
- **Behavior Target:** Completed practice result appears as readable recap UI.
- **Required Concepts:** data passing, struct/display formatting, computed summary, view composition.
- **Must Understand:** Result data flows into Recap; display text is derived from model.
- **Proof of Understanding:** Fian can explain raw data vs display meaning and rebuild recap from result.
- **Out of Scope:** History, persistence, advanced charts, complex feedback engine.
- **Output:** Recap screen displays completed practice result.
- **Stop Rule / Timebox:** Stop when recap shows result and flow is traceable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `Features/Recap/Model/RecapModel.swift`
- `Features/Recap/View/RecapView.swift`
- result-to-recap conversion logic


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
- What does original Tiempo show in recap after practice?

### 2. Original syntax/pattern question
- How does original code transform `PracticeResult` into recap display data?
- What view/model boundaries exist?

### 3. Engineering tradeoff question
- Why separate raw result data from recap display model?
- When is a computed property enough vs a transform function?

### 4. iOS adaptation question
- What recap fields are useful now without full speech/audio: duration, pace placeholder, feedback message?

### 5. Execution mechanics question
- PracticeResult created → recap data derived → RecapView renders: what runs when?

### 6. Artifact/done question
- Does the app show a recap after stopping practice?

## Manual-first Task
- Build a simple recap view.
- Pass or derive recap data from result.
- Verify Practice → Recap flow.

## Done Criteria
- [ ] Original recap behavior inspected.
- [ ] iOS Recap screen shows result summary.
- [ ] Fian can explain raw data → display data → UI.
