# Milestone 1 - Home Feature Rebuild

## Goal
Rebuild the Tiempo-inspired Home feature as a working iOS feature/screen, while learning how professional app behavior is modeled in Swift.

This milestone is not about making a generic UI skeleton. It is about understanding how the original Tiempo Home feature turns real app conditions into state, state into UI, and user action into the next behavior.

```text
Original Tiempo Home feature/code
→ domain modeling
→ syntax/pattern study
→ engineering tradeoff
→ iOS adaptation
→ manual-first rebuild
→ working Home artifact
→ mechanics explanation
```


## Learning Boundary
- **Behavior Target:** Home screen menampilkan status/CTA practice berdasarkan state.
- **Required Concepts:** enum state/action, computed property, @State, Button closure, switch, simple view composition.
- **Must Understand:** Home state → UI text/action → button tap → state/action update → UI re-renders
- **Proof of Understanding:** Home screen working; Fian can explain/predict/rebuild state-driven Home behavior.
- **Out of Scope:** SwiftUI rendering internals, compiler internals of property wrappers, full MVVM/router, polish animation, macOS Keynote automation.
- **Output:** Working Tiempo iOS Home feature.
- **Stop Rule / Timebox:** Stop when Home behavior works and Fian can explain, predict, rebuild it.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- `Features/Home/View/HomeView.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/Model/HomeViewState.swift`
- `Features/Home/Model/HomeSessionStatus.swift`
- `Features/Home/ViewModel/HomeViewModel.swift`
- `App/RootView.swift` if needed for entry flow
- `App/AppRouter.swift` if needed for route/navigation decisions

## Deep Behavior Lens
Use this lens before coding any Home behavior:

1. **Domain modeling** — What real app situation are we modeling?
2. **Representation** — Why does this situation fit enum/state/computed property/function?
3. **Behavior** — What UI/action changes when the data changes?
4. **Invariant / impossible state** — What invalid conditions should the code prevent?
5. **Tradeoff** — What do we gain/lose by simplifying original Tiempo for iOS?
6. **Runtime execution** — What code is declared, what code runs, and when?
7. **Artifact evidence** — What proves this is a working feature, not just a placeholder?

## Feature Milestone Guiding Questions

### 1. Domain modeling / original behavior
- Home screen is answering what real user/app question?
  - Example: “Can the user start practicing now?” or “What must happen before practice can start?”
- What domain is `HomeViewState` modeling in original Tiempo?
- Are the cases in `HomeViewState` one family of states, or mixed concerns?
- In Fian's iOS version, what domain is `PracticeStatus` modeling?
- Are `.ready`, `.practiceStarted`, `.paused`, and `.finished` all valid answers to the same question?
- Is Home modeling the whole practice session, or only the entry/control status shown on Home?

### 2. Original syntax/pattern
- Why does original Tiempo use `enum HomeViewState` instead of raw `String` values?
- What is the difference between `HomeSessionStatus` and `HomeViewState`?
- Why does `HomeViewState` have computed properties like `title`, `subtitle`, `iconName`, `primaryAction`, and `primaryActionTitle`?
- Are those computed properties storing data, or deriving display/action data from the current state?
- How does `HomeStatusContentView` receive state and render UI without owning the state?
- How does `HomeView` route a button tap through `handlePrimaryAction(_:)`?
- What does `HomeViewModel` own that the View should not own in the original macOS app?

### 3. Engineering tradeoff
- What does enum give us besides typo prevention?
- What impossible or confusing states could happen if Home used multiple `Bool`s instead of one enum?
- Why might a professional app separate:
  - state model,
  - status content view,
  - view model,
  - action handler?
- Which separation is valuable for iOS Milestone 1, and which separation is too early?
- If we keep everything in `HomeView` for now, what do we gain for learning simplicity?
- What might become painful later if `HomeView` owns too much behavior?
- When should we refactor because behavior demands it, not because architecture looks fancy?

### 4. iOS adaptation
- Which original Home syntax/patterns should be brought over because they are reusable Swift/SwiftUI learning targets?
- Which original Home states are macOS/Keynote-specific and should be deferred?
- What are the iOS equivalents of “ready”, “blocked”, “practice active”, “paused”, and “finished”?
- What is the smallest useful Home state set that still feels like Tiempo iOS?
- Should iOS Home start by controlling practice directly, or only route to a Practice screen?
- Does Milestone 1 need `ViewModel`, `Router`, or child views now?
- What UI shell can AI scaffold so Fian can focus on behavior logic manually?

Rule for Milestone 1:
- bring over/adapt `enum` state, action enum, computed properties, `switch`, and Button action routing when they help model Home behavior,
- defer AppKit, `NSWindow`, floating overlay, Keynote automation, and macOS permission implementation details.

### 5. Execution mechanics
- When the app launches, which file creates the first screen?
- When `HomeView` renders, what state value exists first?
- When `Text(practiceStatus.title)` appears in `body`, when does the computed property run?
- When the `Button` is displayed, is the action closure already executed or only stored for later?
- When the user taps the button, which code runs first?
- What assignment actually changes state?
- After state changes, why does SwiftUI evaluate `body` again?
- Which values are recalculated after re-render: title, subtitle, button title, visible buttons?
- How would you trace this flow line-by-line from app launch to UI update?

### 6. Artifact/done
- What proves Home is a working Tiempo iOS feature, not just a skeleton?
- Can the app open directly into Home?
- Does Home display meaningful presentation-practice copy/CTA?
- Does state control title/subtitle/button/action?
- Does tapping the primary action create visible behavior?
- Can Fian explain the domain, representation, tradeoff, and runtime flow in his own words?

## iOS Rebuild Target
Build a smaller iOS Home feature that still feels like Tiempo:

- Home screen appears as the first screen.
- Home has presentation-practice copy/CTA, not placeholder text.
- Home content is driven by explicit state.
- Primary button action changes state or routes toward Practice flow.
- AI may scaffold visual UI shell if it is not the current learning target.
- Fian writes the core behavior logic manually: state, computed properties, action handling, and explanation.
- The implementation stays simple; no forced MVVM/router unless the milestone needs it.

## Linked Milestone Notes
- [[Milestone 1A - Home Entry Flow]]
- [[Milestone 1B - Home State Drives UI]]
- [[Milestone 1C - Home Primary Action Behavior]]

## Manual-first Hands-on
Fian writes the core learning code manually:

1. Inspect original Tiempo Home files.
2. Answer the deep behavior lens at a lightweight level.
3. Decide the smallest useful iOS Home state/action.
4. Use or request AI scaffold for visual shell only if needed.
5. Build or adjust the iOS Home behavior manually.
6. Make title/subtitle/button/action derived from state.
7. Run/preview/simulate and verify the behavior.
8. Explain the runtime flow in Fian's own words.

Hermes/Codex can help with:
- source inspection and behavior map,
- explanation of original syntax/pattern,
- UI shell scaffold that leaves behavior TODOs,
- hints/pseudocode/snippets,
- review/debug,
- minimal patch if needed,
- artifact/log drafting after approval.

## Done Criteria
Milestone 1 is done when:

- [ ] Original Tiempo Home behavior/syntax has been inspected.
- [ ] Fian can explain what domain the Home state is modeling.
- [ ] Fian can explain why enum is appropriate beyond “avoiding typo”.
- [ ] iOS Home screen appears as the app entry screen.
- [ ] Home content is meaningful for Tiempo iOS, not empty placeholder/skeleton.
- [ ] Home state drives title/subtitle/button/action.
- [ ] Primary action behavior works or intentionally routes to a not-yet-built next milestone.
- [ ] Build/Preview/Simulator behavior is verified, or status is clearly marked `implemented, not verified` with reason.
- [ ] Fian can explain: app launch → Home render → state read → computed property → button tap → action/state update → UI update.

## Artifact Evidence
Expected evidence:

```text
original Home behavior/syntax inspected
→ domain/state modeled intentionally
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
