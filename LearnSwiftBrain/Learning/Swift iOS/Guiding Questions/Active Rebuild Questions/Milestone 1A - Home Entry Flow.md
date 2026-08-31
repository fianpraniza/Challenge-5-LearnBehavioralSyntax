# Milestone 1A - Home Entry Flow

Part of [[Milestone 1 - Home Feature Rebuild]].

## Goal
Make the iOS app launch into a meaningful Tiempo Home screen, not an empty setup skeleton.

## Original Tiempo Source to Inspect
- `KeynoteCompanionMacosApp.swift`
- `App/RootView.swift`
- `App/AppRouter.swift`
- Home entry usage from `Features/Home/View/HomeView.swift`

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
