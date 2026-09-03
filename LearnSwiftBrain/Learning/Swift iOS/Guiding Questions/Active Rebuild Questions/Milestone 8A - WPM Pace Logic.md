# Milestone 8A - WPM Pace Logic

## Goal
Add simple speaking pace feedback inspired by original Tiempo WPM behavior.


## Learning Boundary
- **Behavior Target:** Practice result includes simple WPM/pace feedback.
- **Required Concepts:** pure function, numeric calculation, guard edge cases, enum/category feedback.
- **Must Understand:** Input duration/word count produces WPM and pace label/feedback.
- **Proof of Understanding:** Fian can calculate, predict edge cases, and rebuild pure logic without UI.
- **Out of Scope:** Speech recognition, audio processing, advanced analytics, ML scoring.
- **Output:** WPM/pace logic works with manual/simulated input.
- **Stop Rule / Timebox:** Stop when calculation is correct enough for MVP.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `WPMCalculator.swift`
- practice models that store words/WPM/pace
- recap/feedback use of WPM


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
