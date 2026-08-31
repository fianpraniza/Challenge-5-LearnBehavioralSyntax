# Milestone 8A - WPM Pace Logic

## Goal
Add simple speaking pace feedback inspired by original Tiempo WPM behavior.

## Original Tiempo Source to Inspect
- `WPMCalculator.swift`
- practice models that store words/WPM/pace
- recap/feedback use of WPM

## Guiding Questions
### 1. Original behavior question
- How does original Tiempo calculate and display speaking pace/WPM?

### 2. Original syntax/pattern question
- What functions/models calculate WPM?
- What inputs and outputs does the calculator use?

### 3. Engineering tradeoff question
- Why isolate WPM logic from UI?
- Should iOS start with manual/simulated words before real speech?

### 4. iOS adaptation question
- What simple WPM/pace behavior is useful before full speech/audio?

### 5. Execution mechanics question
- Input words/time → calculation function → pace state/result → UI feedback: what runs when?

### 6. Artifact/done question
- Does the app compute/display simple pace feedback from practice data?

## Manual-first Task
- Inspect original WPM calculator.
- Build simple iOS calculation with manual/simulated input.
- Show feedback in Practice or Recap.

## Done Criteria
- [ ] Original WPM behavior inspected.
- [ ] Simple iOS pace calculation works.
- [ ] Fian can explain pure calculation vs UI rendering.
