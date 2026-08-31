# Milestone 4 - Pause Resume Stop Control

## Goal
Make practice controls behave as a clear state machine: start → pause → resume → stop.

## Original Tiempo Source to Inspect
- `Features/Practice/ViewModel/PracticeViewModel.swift`
- practice state/action methods
- stop/finalization behavior

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
