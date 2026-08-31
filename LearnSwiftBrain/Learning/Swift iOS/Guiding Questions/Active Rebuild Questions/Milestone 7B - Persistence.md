# Milestone 7B - Persistence

## Goal
Save practice results so they can be reopened after the session/app changes.

## Original Tiempo Source to Inspect
- SwiftData usage in original Tiempo
- history/session persistence models

## Guiding Questions
### 1. Original behavior question
- What practice data does original Tiempo persist?

### 2. Original syntax/pattern question
- How does original code use SwiftData or persistence models?

### 3. Engineering tradeoff question
- Why persist sessions instead of keeping them in memory?
- Is SwiftData worth learning now, or should persistence wait until core flow is stable?

### 4. iOS adaptation question
- What minimal data should Tiempo iOS persist first?

### 5. Execution mechanics question
- Save action → model context/storage update → history query/list updates: what triggers what?

### 6. Artifact/done question
- Does a completed practice remain available after saving/reopening?

## Manual-first Task
- Inspect original persistence pattern.
- Decide whether to use SwiftData or temporary persistence.
- Implement minimal save/read flow when ready.

## Done Criteria
- [ ] Original persistence pattern inspected.
- [ ] iOS app can save/read practice result data.
- [ ] Fian can explain persistence data flow.
