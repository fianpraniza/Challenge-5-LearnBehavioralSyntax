# Milestone 8C - Permissions Error States

## Goal
Represent permission and error states clearly in the iOS app.


## Learning Boundary
- **Behavior Target:** Blocked permission/error conditions become visible recoverable UI states.
- **Required Concepts:** permission checks, enum error/block state, conditional UI, recovery action.
- **Must Understand:** Unavailable permission/error maps to state; UI shows what user can do next.
- **Proof of Understanding:** Fian can explain blocked behavior as state, not just crash/error.
- **Out of Scope:** Every edge case, system settings automation complexity, production support copy.
- **Output:** Permission/error states are visible and recoverable enough for MVP.
- **Stop Rule / Timebox:** Stop when major blocked states are represented.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- original permission handling files
- Home status/error state files
- speech/audio permission checks


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
- What permissions/errors does original Tiempo surface to the user?

### 2. Original syntax/pattern question
- What state models represent permission missing, unavailable, or error cases?

### 3. Engineering tradeoff question
- Why show permission/error as app state instead of only console errors?
- How much error handling is useful before speech/audio is implemented?

### 4. iOS adaptation question
- Which iOS permissions/errors matter for current MVP?

### 5. Execution mechanics question
- Permission check → state set → UI message/action appears: what triggers what?

### 6. Artifact/done question
- Can the app display a useful blocked/error state and recovery action?

## Manual-first Task
- Inspect original permission states.
- Add minimal iOS permission/error state when the related feature needs it.
- Verify UI response.

## Done Criteria
- [ ] Original permission/error behavior inspected.
- [ ] iOS permission/error state is represented clearly.
- [ ] Fian can explain state-driven error UI.
