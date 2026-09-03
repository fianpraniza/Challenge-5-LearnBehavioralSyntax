# Milestone 4 - Audio Recording Speech Transcript

## Goal
Add real speaking input through microphone/audio recording and speech transcript, scoped to a basic useful pipeline.

## Learning Boundary
- **Behavior Target:** Practice session receives real speech/audio input and produces transcript text.
- **Real Feature Requirement:** The app should not rely only on dummy/manual input for speaking-coach value.
- **Required Concepts:** AVFoundation basic audio session/capture, Speech framework, permission request, async/await, callback/closure updates, service boundary, @Published transcript state.
- **Must Understand:** System framework emits async transcript updates; service/ViewModel receives updates; UI displays transcript/state.
- **Proof of Understanding:** Fian can explain permission → start audio/speech → async callback → state update → UI transcript.
- **Out of Scope:** Audio DSP, custom ML, perfect recognition, background recording, acoustic filler detection, production retry system.
- **Output:** Practice screen can record/recognize speech enough to show transcript or clearly mark device/framework blocker.
- **Stop Rule / Timebox:** Stop when basic transcript pipeline works or blocker is understood and documented.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Core/Services/Audio/SpeechRecognitionService.swift
- Core/Services/Permissions/SpeechRecognitionPermissionService.swift
- Features/Practice/Model/PracticeRecordingCoordinator.swift
- audio capture service files

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
- How does original Tiempo capture audio and receive speech transcript/word count?
### 2. Original syntax/pattern question
- What uses Speech framework, audio buffers, async services, callbacks, or actors?
### 3. Engineering tradeoff question
- Why separate speech/audio from View?
- What complexity is essential vs production-grade?
### 4. iOS adaptation question
- What is the smallest real iOS audio/transcript path that is useful?
### 5. Execution mechanics question
- Permission → start service → transcript callback → ViewModel state → UI update: what runs?
### 6. Artifact/done question
- Does real speech produce visible transcript or a verified blocker?

## Manual-first Task
- Inspect original speech/audio pipeline.
- Define minimal iOS service/ViewModel boundary.
- Request permission.
- Start/stop recognition with session controls.
- Display transcript updates.
- Verify on device/simulator constraints.

## Done Criteria
- [ ] Original speech/audio pipeline inspected.
- [ ] Basic transcript path implemented or blocker documented.
- [ ] Fian can explain async callback/service flow.
- [ ] No production-grade audio scope creep.
