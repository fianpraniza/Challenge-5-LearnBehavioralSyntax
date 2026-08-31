# Milestone 3 - Practice Timer

## Goal
Show elapsed practice time that updates while a session is active.

## Original Tiempo Source to Inspect
- `Features/Practice/ViewModel/PracticeViewModel.swift`
- any timer/elapsed time logic in the practice feature


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
- How does original Tiempo track elapsed practice time?

### 2. Original syntax/pattern question
- Does original code use `Timer`, `Task`, observation, coordinator callbacks, or published state?

### 3. Engineering tradeoff question
- Why might timer logic live outside the View in the original app?
- What are the risks of timer logic inside a SwiftUI View?

### 4. iOS adaptation question
- Which original timer-related syntax/patterns are reusable for iOS and should be studied/adapted?
- What is the simplest timer approach that teaches mechanics without copying macOS-only or too-advanced original architecture?

### 5. Execution mechanics question
- Start session → timer begins → elapsed value changes → UI re-renders: what code runs repeatedly?

### 6. Artifact/done question
- Does elapsed time visibly update while practicing?

## Manual-first Task
- Add elapsed time state.
- Start timer when practice starts.
- Render formatted elapsed time.
- Verify it updates.

## Done Criteria
- [ ] Original timer/elapsed behavior inspected.
- [ ] iOS Practice screen shows running elapsed time.
- [ ] Fian can explain why timer changes update UI.
