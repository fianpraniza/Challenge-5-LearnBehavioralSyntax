# Milestone 1 - Home Feature and State Action Modeling

## Goal
Rebuild the Tiempo-inspired Home feature as the iOS app entry point while learning how Home state/action behavior is modeled.

## Learning Boundary
- **Behavior Target:** Home screen communicates practice readiness/status and exposes the primary action.
- **Real Feature Requirement:** Home must feel like the entry to a speaking-practice app, not a generic placeholder screen.
- **Required Concepts:** enum state/action, computed property, switch, @State or simple state ownership, Button closure, view composition.
- **Must Understand:** Home state represents one domain; UI display/action are derived from that state; button tap changes state or sends action.
- **Proof of Understanding:** Fian can explain why enum models finite Home states, predict UI changes per case, and rebuild state/action behavior manually.
- **Out of Scope:** AppKit, NSWindow/floating overlay, Keynote automation, full ViewModel/router unless behavior already demands it, polish animation.
- **Output:** Working Home screen with meaningful Tiempo iOS copy and state-driven action.
- **Stop Rule / Timebox:** Stop when Home works and Fian can explain/predict/rebuild state → action → UI update.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Features/Home/View/HomeView.swift
- Features/Home/View/HomeStatusContentView.swift
- Features/Home/Model/HomeViewState.swift
- Features/Home/Model/HomeSessionStatus.swift
- Features/Home/ViewModel/HomeViewModel.swift
- App/RootView.swift / AppRouter if needed

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
- What real app question does original Home answer before practice starts?
- Which Home states are about user readiness vs macOS/Keynote availability?
### 2. Original syntax/pattern question
- Why does original Tiempo use `HomeViewState` and `HomeStatusAction` enums?
- How do computed properties derive title/subtitle/icon/action from state?
### 3. Engineering tradeoff question
- What do enum states prevent compared with multiple Bools or raw Strings?
- Which original separation is useful now, and which would be premature?
### 4. iOS adaptation question
- Which reusable Home patterns should be brought over?
- Which Keynote/macOS states should become iOS practice states or be deferred?
### 5. Execution mechanics question
- App launch → RootView → HomeView → state read → button tap → state/action update → UI update: what runs in order?
### 6. Artifact/done question
- What makes Home a useful Tiempo entry feature, not a skeleton?

## Manual-first Task
- Inspect original Home files.
- Define/adapt Home states/actions manually.
- Make title/subtitle/button/action derived from state.
- Verify visible behavior.
- Explain runtime flow in Fian’s words.

## Done Criteria
- [ ] Original Home behavior/syntax inspected.
- [ ] iOS Home appears as app entry.
- [ ] Home state/action drives meaningful UI.
- [ ] Fian can explain enum beyond anti-typo.
- [ ] Behavior verified or marked not verified.
