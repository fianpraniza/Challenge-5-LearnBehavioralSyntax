# Milestone 8C - Permissions Error States

## Goal
Represent permission and error states clearly in the iOS app.

## Original Tiempo Source to Inspect
- original permission handling files
- Home status/error state files
- speech/audio permission checks

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
