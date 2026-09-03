# Milestone 1C - Home Primary Action Behavior

Part of [[Milestone 1 - Home Feature Rebuild]].

## Goal
Make the Home primary button produce clear app behavior: update Home state or move toward Practice Start Flow.


## Learning Boundary
- **Behavior Target:** Home primary button maps user tap to valid Home/practice action.
- **Required Concepts:** action enum, computed primaryAction, function parameter, switch, Button closure.
- **Must Understand:** Button stores closure; tap sends action; handler switches action; state/flow changes.
- **Proof of Understanding:** Fian can predict which action runs per state and rebuild handler manually.
- **Out of Scope:** Async flows, router unless needed, full practice screen implementation.
- **Output:** Primary button action produces visible behavior.
- **Stop Rule / Timebox:** Stop when action routing works for current Home states.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `Features/Home/View/HomeView.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/Model/HomeViewState.swift`
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
- What can the user do from the original Home screen?
- What happens when the primary Home action is tapped?

### 2. Original syntax/pattern question
- How is primary action represented?
- How does `handlePrimaryAction(_:)` or equivalent action handling work?

### 3. Engineering tradeoff question
- Why route through an action enum/function instead of putting all logic inside `Button`?
- When is action routing useful, and when is it overkill?

### 4. iOS adaptation question
- Should Milestone 1 primary action only mutate local state, or start navigation toward Practice?

### 5. Execution mechanics question
- Button declared when → closure executed when → action handler called when → state/route changes where?

### 6. Artifact/done question
- Does tapping Home primary button produce visible, meaningful app behavior?

## Manual-first Task
- Add/adjust primary action for Home.
- Route action through a small function or action enum if useful.
- Verify visible behavior.

## Done Criteria
- [ ] Original Home action pattern inspected.
- [ ] iOS Home primary action works.
- [ ] Fian can explain declaration vs execution of `Button` closure.
