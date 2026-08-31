# Milestone 6 - Recap Screen

## Goal
Display the completed practice result as a recap screen.

## Original Tiempo Source to Inspect
- `Features/Recap/Model/RecapModel.swift`
- `Features/Recap/View/RecapView.swift`
- result-to-recap conversion logic

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
