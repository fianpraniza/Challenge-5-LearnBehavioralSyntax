# Milestone 2 - Practice Start Flow

## Goal
Connect Home to the beginning of a practice session so the app starts behaving like a presentation-practice companion.

## Original Tiempo Source to Inspect
- Home primary action handling
- `Features/Practice/ViewModel/PracticeViewModel.swift`
- routing/root flow files if the original uses them


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
- In original Tiempo, what happens when practice starts from Home?

### 2. Original syntax/pattern question
- What function/action starts practice?
- What objects/state are created or updated?

### 3. Engineering tradeoff question
- Why does original Tiempo route start behavior through view model/coordinator layers?
- What is the simplest iOS version before full audio/speech exists?

### 4. iOS adaptation question
- Should iOS Milestone 2 navigate to a Practice screen, change root state, or show practice controls inside Home?

### 5. Execution mechanics question
- Tap Start → action handler → state/route changes → Practice UI appears: where does each step happen?

### 6. Artifact/done question
- Can the user go from Home into a practice-started flow/screen?

## Manual-first Task
- Inspect original start flow.
- Choose simple iOS navigation/flow approach.
- Implement/adjust start flow manually.
- Verify Home → Practice transition.

## Done Criteria
- [ ] Original start practice flow inspected.
- [ ] iOS Home can start/move into practice.
- [ ] Fian can explain the event-to-navigation/state path.
