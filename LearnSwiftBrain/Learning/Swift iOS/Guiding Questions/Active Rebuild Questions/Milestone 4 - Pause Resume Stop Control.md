# Milestone 4 - Pause Resume Stop Control

## Goal
Make practice controls behave as a clear state machine: start → pause → resume → stop.


## Learning Boundary
- **Behavior Target:** Practice controls allow only valid transitions: active, paused, stopped/finished.
- **Required Concepts:** enum state machine, switch, functions pause/resume/stop, valid action visibility.
- **Must Understand:** Current state determines valid actions; actions transition to next valid state.
- **Proof of Understanding:** Fian can explain impossible states and predict action results per state.
- **Out of Scope:** Formal state-machine libraries, advanced architecture, persistence, recap UI details.
- **Output:** Pause/resume/stop controls work and invalid actions are not shown.
- **Stop Rule / Timebox:** Stop when valid transitions work and are explainable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `Features/Practice/ViewModel/PracticeViewModel.swift`
- practice state/action methods
- stop/finalization behavior


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
- What happens in original Tiempo when practice is paused, resumed, or stopped?

### 2. Original syntax/pattern question
- What state variables or enum cases represent recording/paused/stopped?
- What functions mutate those states?

### 3. Engineering tradeoff question
- Why separate session state from UI labels/buttons?
- Is `Bool` enough, or does this need enum state?

### 4. iOS adaptation question
- What states/actions are enough for iOS control behavior now?

### 5. Execution mechanics question
- Button tap → action function → state transition → controls/timer/UI update: what changes in what order?

### 6. Artifact/done question
- Can the user start, pause, resume, and stop without invalid UI states?

## Manual-first Task
- Define practice control state/actions.
- Update button visibility/labels from state.
- Pause/resume timer behavior.
- Stop session cleanly.

## Done Criteria
- [ ] Original control behavior inspected.
- [ ] iOS controls work through valid transitions.
- [ ] Fian can explain the state machine.
