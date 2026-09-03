# Milestone 8B - Speech Audio Pipeline

## Goal
Explore real speech/audio input only after core practice flow and simple pace logic are stable.


## Learning Boundary
- **Behavior Target:** App receives speech/audio-derived text or updates.
- **Required Concepts:** permissions, async updates, service boundary, state updates from external system.
- **Must Understand:** External audio/speech emits async data; service updates state; UI reacts.
- **Proof of Understanding:** Fian can explain async external input path and handle basic failure.
- **Out of Scope:** Audio DSP internals, custom ML, production speech accuracy tuning.
- **Output:** Small speech/audio experiment updates app state.
- **Stop Rule / Timebox:** Stop when minimal pipeline works or blocker is understood.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- speech recognition service/files
- audio capture service/files
- practice pipeline/coordinator files


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
- How does original Tiempo capture speech/audio during practice?

### 2. Original syntax/pattern question
- What frameworks/APIs are used for speech recognition and audio capture?
- How does async/service code send updates back to practice state?

### 3. Engineering tradeoff question
- Why is speech/audio separated from UI?
- What complexity does real audio introduce?

### 4. iOS adaptation question
- What is the smallest safe iOS speech/audio experiment?
- What should stay deferred?

### 5. Execution mechanics question
- Permission → start audio/speech → async updates → state changes → UI feedback: what runs in what order?

### 6. Artifact/done question
- Does the app run a small verified speech/audio experiment or clearly mark it not verified?

## Manual-first Task
- Inspect original pipeline.
- Identify iOS API differences.
- Build a minimal experiment only when ready.

## Done Criteria
- [ ] Original speech/audio pipeline inspected.
- [ ] iOS experiment scoped safely.
- [ ] Fian can explain async service → UI state flow.
