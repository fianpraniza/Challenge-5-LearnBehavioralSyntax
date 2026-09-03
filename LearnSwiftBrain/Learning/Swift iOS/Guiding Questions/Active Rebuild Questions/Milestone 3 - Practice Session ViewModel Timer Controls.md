# Milestone 3 - Practice Session ViewModel Timer Controls

## Goal
Build a real practice session screen with timer and pause/resume/stop controls, introducing basic MVVM/Combine/concurrency only as needed for the feature.

## Learning Boundary
- **Behavior Target:** Practice screen tracks active session time and valid controls.
- **Real Feature Requirement:** Practice must behave like an actual session: running, paused, resumed, stopped.
- **Required Concepts:** basic MVVM/ViewModel, @StateObject/@ObservedObject, @Published, enum session state, Timer/Combine or Task loop, functions for start/pause/resume/stop.
- **Must Understand:** View displays state; ViewModel owns session behavior; timer/event updates elapsed time; controls trigger valid transitions.
- **Proof of Understanding:** Fian can explain View vs ViewModel responsibility, predict state transition effects, and rebuild timer/control behavior.
- **Out of Scope:** Advanced Combine operators, actor isolation internals, background execution, production precision, Clean Architecture.
- **Output:** Practice screen has running timer and valid pause/resume/stop controls.
- **Stop Rule / Timebox:** Stop when session controls/timer work and Fian can explain/predict/rebuild the flow.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Features/Practice/ViewModel/PracticeViewModel.swift
- Features/Practice/View/PracticeControlBarView.swift
- Features/Practice/View/PracticeOverlayView.swift
- Features/Practice/Model/PracticeModels.swift

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
- How does original Tiempo represent recording/paused/finished practice?
### 2. Original syntax/pattern question
- What state is published from PracticeViewModel?
- Does timer behavior use Timer, Task, published state, or coordinator callbacks?
### 3. Engineering tradeoff question
- Why does practice behavior deserve ViewModel sooner than Home?
### 4. iOS adaptation question
- What is the minimum ViewModel that keeps real session behavior clear?
### 5. Execution mechanics question
- Start → timer event → published elapsed changes → View updates; pause/resume/stop transitions: what runs?
### 6. Artifact/done question
- Can user run, pause, resume, and stop a session without invalid UI states?

## Manual-first Task
- Inspect original PracticeViewModel/control behavior.
- Define simple PracticeSessionState.
- Create PracticeViewModel for timer/control behavior if needed.
- Render elapsed time and controls.
- Verify state transitions.

## Done Criteria
- [ ] Original practice control/timer behavior inspected.
- [ ] Practice screen timer and controls work.
- [ ] Invalid actions are hidden/prevented.
- [ ] Fian can explain basic MVVM and timer event flow.
