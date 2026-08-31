# Milestone 5 - Practice Result Model

## Goal
When practice stops, produce structured result data that can be displayed or saved later.

## Original Tiempo Source to Inspect
- `Features/Practice/Model/PracticeModels.swift`
- practice result/session model files
- any conversion into recap/history data


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
- What result data does original Tiempo create after practice ends?

### 2. Original syntax/pattern question
- What structs/models represent a practice session/result?
- Which properties are `let`, optional, arrays, dates, or computed?

### 3. Engineering tradeoff question
- Why use a model struct instead of passing loose values between views?
- What should be immutable after the session ends?

### 4. iOS adaptation question
- What minimal result data is enough now: duration, startedAt, endedAt, word count/WPM placeholder?

### 5. Execution mechanics question
- Stop action → result initialized → result passed/stored: where does data come from and where does it go?

### 6. Artifact/done question
- Does stopping practice produce a result object that the next feature can use?

## Manual-first Task
- Define a simple `PracticeResult`.
- Create result when stopping.
- Print/show/pass enough data to verify it exists.

## Done Criteria
- [ ] Original result model inspected.
- [ ] iOS stop action creates structured result data.
- [ ] Fian can explain model vs UI display data.
