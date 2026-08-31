# Milestone 7A - History List

## Goal
Show previous practice sessions in a simple History list.

## Original Tiempo Source to Inspect
- History feature files in original Tiempo
- `PracticeModels.swift` / persisted session model usage


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
- What history does original Tiempo show after practices are saved?

### 2. Original syntax/pattern question
- What models power the history list?
- How are list rows identified and rendered?

### 3. Engineering tradeoff question
- Why use a list/history model instead of only the latest recap?
- Should history start with mock/in-memory data before persistence?

### 4. iOS adaptation question
- What is the simplest useful iOS History screen now?

### 5. Execution mechanics question
- Array of sessions → `List`/`ForEach` reads data → rows render: what happens when data changes?

### 6. Artifact/done question
- Can the app show previous practice sessions in a list?

## Manual-first Task
- Inspect original history behavior.
- Create simple history list with mock or in-memory results.
- Verify empty and non-empty states.

## Done Criteria
- [ ] Original history behavior inspected.
- [ ] iOS History list works with sample/in-memory sessions.
- [ ] Fian can explain list identity and data flow.
