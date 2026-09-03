# Milestone 8 - Permissions Error States

## Goal
Represent microphone/speech permission and recoverable errors as explicit app states.

## Learning Boundary
- **Behavior Target:** Blocked permission/error conditions become visible recoverable UI states.
- **Real Feature Requirement:** Audio/transcript features need real permission handling, not silent failure.
- **Required Concepts:** permission APIs, enum blocked/error states, async permission request, conditional UI, recovery action, error message model.
- **Must Understand:** Permission result maps to app state; UI shows blocked/recovery behavior; retry/grant updates flow.
- **Proof of Understanding:** Fian can explain blocked behavior as state, predict denied/authorized paths, and rebuild permission UI.
- **Out of Scope:** Every edge case, system-settings automation, production support copy, analytics logging.
- **Output:** Permission/error states are visible and recoverable enough for MVP.
- **Stop Rule / Timebox:** Stop when major blocked states are represented and tested manually.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Core/Services/Permissions/SpeechRecognitionPermissionService.swift
- HomeSessionStatus.swift
- HomeViewModel.swift permission handling
- SpeechRecognitionService.swift errors

## Deep Behavior Lens
Use these checks while working through this milestone:

- **Domain modeling:** what real app situation is this code representing?
- **Real feature requirement:** what useful app behavior should not be replaced by dummy behavior?
- **Representation:** why is this represented with enum, struct, state, function, ViewModel, service, persistence, or framework API?
- **Behavior:** what UI/action/result changes when this value/event changes?
- **Invariant / impossible state:** what invalid condition should the code prevent?
- **Tradeoff:** what does original Tiempo choose, and what should the iOS rebuild simplify/defer?
- **Runtime:** what is declared, what executes, and when?
- **Artifact evidence:** what proves the feature works?

## Guiding Questions
### 1. Original behavior question
- How does original Tiempo represent missing permissions or unavailable services?
### 2. Original syntax/pattern question
- What enum/status/error patterns map system state to UI state?
### 3. Engineering tradeoff question
- Why model blocked condition as state instead of just showing alert/crashing?
### 4. iOS adaptation question
- What mic/speech permission states must iOS handle?
### 5. Execution mechanics question
- Permission check → status result → state update → UI recovery action: what runs?
### 6. Artifact/done question
- Can user understand and recover from denied/missing permission?

## Manual-first Task
- Inspect original permission/status code.
- Define iOS permission/error states.
- Show blocked UI and recovery action.
- Verify authorized/denied paths where possible.

## Done Criteria
- [ ] Original permission behavior inspected.
- [ ] Major permission/error states represented.
- [ ] Fian can explain permission as app state.
