# Milestone 1 - Home Feature Rebuild

## Goal
Rebuild the Tiempo-inspired Home feature as a working iOS feature/screen, not just a skeleton or generic state demo.

This milestone starts the professional-style rebuild flow:

```text
Original Tiempo Home feature/code
→ syntax/pattern study
→ iOS adaptation
→ manual-first rebuild
→ working Home artifact
→ mechanics explanation
```

## Original Tiempo Source to Inspect
- `Features/Home/View/HomeView.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/Model/HomeViewState.swift`
- `Features/Home/ViewModel/HomeViewModel.swift`
- `App/RootView.swift` if needed for entry flow
- `App/AppRouter.swift` if needed for route/navigation decisions

## Feature Milestone Guiding Questions

### 1. Original behavior question
- What does the Home feature do in the original Tiempo macOS app?
- What status does Home communicate before the user starts practicing?
- What can the user do from Home?
- What changes after the user taps the primary Home action?

### 2. Original syntax/pattern question
- How does `HomeViewState` represent possible Home states?
- What computed properties exist for title, subtitle, icon, button text, or primary action?
- How does `HomeStatusContentView` receive and render state?
- How does `HomeView` route primary button actions?
- What role does `HomeViewModel` play in deciding Home state?

### 3. Engineering tradeoff question
- Why might the original app separate `HomeViewState`, `HomeStatusContentView`, `HomeView`, and `HomeViewModel`?
- What does the original app gain from using enum state/action instead of raw `String` or many `Bool`s?
- Which parts are helpful engineering structure, and which parts may be too much for Milestone 1?
- If we simplify to `@State` inside an iOS view first, what tradeoff are we making?

### 4. iOS adaptation question
- Which Home behaviors should be brought into Tiempo iOS now?
- Which macOS-specific Home behaviors should be deferred?
- What is the smallest useful Home state/action set that still feels like Tiempo iOS?
- Does Milestone 1 need a ViewModel/router now, or can those wait until the feature flow demands them?

### 5. Execution mechanics question
- When the app launches, which file creates the first screen?
- When `HomeView` renders, what state does the UI read?
- When the primary button is displayed, when is its closure created vs executed?
- When the user taps the button, which function/action runs first?
- What state/data changes?
- Why does SwiftUI update the visible title/subtitle/button afterward?

### 6. Artifact/done question
- What proves Home is a working Tiempo iOS feature, not just a skeleton?
- Can the Home screen be opened as the first screen?
- Does Home display meaningful Tiempo presentation-practice copy/CTA?
- Does the primary action cause visible behavior/state/flow change?
- Can Fian explain the runtime path from app launch to Home action?

## iOS Rebuild Target
Build a smaller iOS Home feature that still feels like Tiempo:

- Home screen appears as the first screen.
- Home has presentation-practice copy/CTA, not placeholder text.
- Home content is driven by explicit state.
- Primary button action changes state or routes toward Practice flow.
- The implementation stays simple and manual-first; no forced MVVM/router unless the milestone needs it.

## Sub-questions / Linked Milestone Notes
- [[Milestone 1A - Home Entry Flow]]
- [[Milestone 1B - Home State Drives UI]]
- [[Milestone 1C - Home Primary Action Behavior]]

These are sub-questions inside Milestone 1, not separate day-by-day tasks.

## Manual-first Hands-on
Fian writes the core learning code manually:

1. Inspect original Tiempo Home files.
2. Answer the six guiding question groups at a lightweight level.
3. Decide the smallest useful iOS Home state/action.
4. Build or adjust the iOS Home screen.
5. Make title/subtitle/button driven by state.
6. Make primary action mutate state or route toward Practice.
7. Run/preview/simulate and verify the behavior.
8. Explain the runtime flow in Fian's own words.

Hermes/Codex can help with:
- source inspection and behavior map,
- explanation of original syntax/pattern,
- hints/pseudocode/snippets,
- review/debug,
- minimal patch if needed,
- artifact/log drafting after approval.

## Done Criteria
Milestone 1 is done when:

- [ ] Original Tiempo Home behavior/syntax has been inspected.
- [ ] iOS Home screen appears as the app entry screen.
- [ ] Home content is meaningful for Tiempo iOS, not empty placeholder/skeleton.
- [ ] Home state drives title/subtitle/button/action.
- [ ] Primary action behavior works or intentionally routes to a not-yet-built next milestone.
- [ ] Build/Preview/Simulator behavior is verified, or status is clearly marked `implemented, not verified` with reason.
- [ ] Fian can explain: app launch → Home render → state read → button tap → action/state update → UI update.

## Artifact Evidence
Expected evidence:

```text
original Home behavior/syntax inspected
→ iOS Home screen built/adjusted manually
→ Home state/action behavior verified
→ execution mechanics explained
```

## Future Adjustment Rule
Later milestones may require changing Home again. That is expected. Treat it like professional app development:

```text
Feature 1 works
→ Feature 2 reveals a better state/data flow
→ refactor Feature 1 minimally
→ verify the flow still works
```

Do not freeze Milestone 1 architecture too early.
