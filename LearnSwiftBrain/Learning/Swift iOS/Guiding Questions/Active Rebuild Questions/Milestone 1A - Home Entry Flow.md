# Milestone 1A - Home Entry Flow

Part of [[Milestone 1 - Home Feature Rebuild]].

## Goal
Make the iOS app launch into a meaningful Tiempo Home screen, not an empty setup skeleton.


## Learning Boundary
- **Behavior Target:** App launch opens the intended Tiempo iOS Home screen.
- **Required Concepts:** @main App, WindowGroup, RootView, view composition.
- **Must Understand:** App entry creates root view; root decides the first visible screen.
- **Proof of Understanding:** Fian can trace launch → RootView → HomeView and change first screen intentionally.
- **Out of Scope:** Navigation architecture, coordinator/router, lifecycle internals, full app architecture.
- **Output:** App opens directly to Home.
- **Stop Rule / Timebox:** Stop when launch-to-Home flow is traceable and working.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `KeynoteCompanionMacosApp.swift`
- `App/RootView.swift`
- `App/AppRouter.swift`
- Home entry usage from `Features/Home/View/HomeView.swift`


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
- Where does the original macOS app start?
- How does it decide the first user-facing screen?

### 2. Original syntax/pattern question
- How are `@main`, `App`, `Scene`, `WindowGroup`, `RootView`, and routing used?

### 3. Engineering tradeoff question
- Why does the original app need a root/router layer?
- Is that structure useful now, or too early for iOS Milestone 1?

### 4. iOS adaptation question
- What is the simplest iOS entry flow that still supports the Home feature?

### 5. Execution mechanics question
- App starts where → first view created where → `body` evaluated when → Home appears how?

### 6. Artifact/done question
- Does the app open directly into a meaningful Tiempo Home screen?

## Manual-first Task
- Inspect original entry files.
- Identify the iOS app entry file.
- Make/confirm Home appears as the first screen.

## Done Criteria
- [ ] Original entry behavior inspected.
- [ ] iOS app launches to Home.
- [ ] Home is meaningful, not placeholder/skeleton.
- [ ] Fian can explain launch → first screen mechanics.
