# Milestone 2 - Practice Flow Navigation Callback

## Goal
Connect Home to a real Practice screen using simple app flow ownership and callback/action communication.

## Learning Boundary
- **Behavior Target:** User taps Start Practice and app enters the practice flow/screen.
- **Real Feature Requirement:** Start Practice must create an actual route toward practice behavior, not only change Home text.
- **Required Concepts:** RootView flow state, enum screen routing, closure callback, function action, parent-child data flow.
- **Must Understand:** Home sends user intent upward; RootView owns current screen; changing root state changes visible screen.
- **Proof of Understanding:** Fian can explain callback direction, predict what changes when active screen changes, and rebuild Home → Practice flow.
- **Out of Scope:** Complex coordinator/router, NavigationStack deep linking, full session model, audio/timer implementation.
- **Output:** Home can move to Practice screen through a clear callback/navigation flow.
- **Stop Rule / Timebox:** Stop when Home → Practice works and callback/state flow is explainable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Home primary action handling
- App/RootView.swift
- App/AppRouter.swift if original uses routing
- Features/Practice/ViewModel/PracticeViewModel.swift start entry points

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
- In original Tiempo, what happens after Home primary action starts practice?
### 2. Original syntax/pattern question
- What owns route/flow in original code?
- What functions or callbacks represent start intent?
### 3. Engineering tradeoff question
- Why should Home not own the entire app flow?
- When is simple RootView state enough?
### 4. iOS adaptation question
- Should iOS use RootView enum, NavigationStack, or a simple callback first?
### 5. Execution mechanics question
- Button tap → callback → parent state mutation → switch/body chooses PracticeView: what runs?
### 6. Artifact/done question
- Can user move from Home to Practice screen?

## Manual-first Task
- Inspect original start/routing behavior.
- Implement or review RootView screen state manually.
- Pass callback from RootView to HomeView.
- Verify Home → Practice transition.

## Done Criteria
- [ ] Original start flow inspected.
- [ ] Home can navigate/flow into Practice.
- [ ] Fian can explain child-to-parent callback.
- [ ] Behavior verified or marked not verified.
