# Milestone 1B - Home State Drives UI

Part of [[Milestone 1 - Home Feature Rebuild]].

## Goal
Use explicit Home state to drive visible Home UI content: title, subtitle, button text, icon/status, and available action.

## Original Tiempo Source to Inspect
- `Features/Home/Model/HomeViewState.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/ViewModel/HomeViewModel.swift`


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
- What Home states exist in original Tiempo?
- What UI changes when Home state changes?

### 2. Original syntax/pattern question
- How does `HomeViewState` model finite states?
- Which computed properties translate state into UI display values?

### 3. Engineering tradeoff question
- Why use enum state instead of `String` or multiple `Bool`s?
- Why keep display text/icon/action near the state model?

### 4. iOS adaptation question
- What is the smallest useful Home state set for Tiempo iOS now?
- Which original Home states are macOS-specific and deferred?

### 5. Execution mechanics question
- State initialized where → `body` reads what → computed property runs when → UI changes why?

### 6. Artifact/done question
- Does changing Home state visibly change meaningful Home UI content?

## Manual-first Task
- Define/adjust iOS Home state.
- Add computed display values.
- Render UI from state.
- Verify state changes update UI.

## Done Criteria
- [ ] Original Home state pattern inspected.
- [ ] iOS Home state drives real Home content.
- [ ] Fian can explain state → computed property → body → UI.
