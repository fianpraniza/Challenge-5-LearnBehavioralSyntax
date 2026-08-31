# App Rebuild Orientation - Tiempo iOS

## Source App
Repository: https://github.com/sandeeffendi/keynote-companion-macos.git

Original app: **Tiempo / Keynote Companion macOS**

## Why This App
Fian wants to learn Swift/iOS through a rebuild-oriented workflow: studying behavior and execution mechanics from an app that was previously built with AI, then rebuilding an iOS version manually/programmatically.

The goal is not to copy the macOS app 1:1 at the platform/UI-feature level. The goal is to understand the original code behavior and intentionally adapt the relevant Swift/SwiftUI syntax, patterns, and tradeoffs into meaningful Tiempo iOS feature milestones.

“Not 1:1” does **not** mean skipping original reusable Swift patterns. If the original Tiempo code uses a relevant pattern such as enum state, enum action, computed properties, `switch`, view composition, closures, model structs, or async tasks, prefer studying and adapting it explicitly. Simplify/defer only when the original code is macOS-specific, too advanced for the current milestone, or not needed for the current iOS behavior.

## Original App Summary
Tiempo is a native macOS public-speaking coach.

Original macOS behavior:
- Detect live Keynote slideshow.
- Show floating overlay panel above Keynote.
- Record presenter voice.
- Calculate live words-per-minute (WPM).
- Track slide number.
- Produce per-slide recap.
- Save practice history using SwiftData.

Original high-level flow:
```text
Home
→ check permissions + Keynote status
→ start practice
→ record audio + speech recognition + slide tracking
→ stop
→ recap
→ history
```

## Existing Tech Stack Observed
From repository inspection:
- Swift + SwiftUI + AppKit
- SwiftData for local persistence
- Speech recognition
- Audio capture
- AppleScript / Apple Events for Keynote automation
- AppKit window management / floating overlay
- MVVM-style feature folders
- Tests for ViewModels, WPM, practice pipeline, history, permissions

Codebase size observed:
- 114 Swift files
- ~10,683 Swift lines
- 15 test files

## Rebuild Feasibility
### Learning feasibility
**High** — good source for learning because it contains real app behaviors:
- app lifecycle,
- state-driven UI,
- navigation,
- user actions,
- timers,
- async tasks,
- data modeling,
- recap generation,
- persistence,
- permissions,
- speech/audio later.

### Full parity feasibility
**Medium/low for an early learning MVP** — full macOS parity is not realistic or necessary because several features are macOS-specific.

## What Should Transfer to iOS
Good candidates for iOS rebuild:

### 1. Public speaking practice flow
```text
User starts practice
→ timer runs
→ app tracks practice state
→ user pauses/resumes/stops
→ recap appears
→ session can be saved later
```

### 2. Home state machine
Original source references:
- `HomeViewState.swift`
- `HomeStatusContentView.swift`
- `HomeViewModel.swift`

Original idea:
```text
state changes → title/subtitle/button changes
```

Possible iOS version:
```text
permissionMissing
readyToPractice
practiceActive
practiceFinished
```

### 3. Practice session state
Original source reference:
- `PracticeViewModel.swift`

Original behavior:
```text
startSession()
→ isRecording = true
→ startTimer()
→ elapsedTime updates
→ UI updates
```

Possible iOS learning version:
- start with `@State`, not full ViewModel,
- later refactor if architecture becomes learning topic.

### 4. WPM / pace logic
Original source references:
- `WPMCalculator.swift`
- `PracticeModels.swift`

Possible iOS learning version:
- start with manual word count or simulated WPM,
- later add speech recognition.

### 5. Recap / history
Original source references:
- `PracticeModels.swift`
- `RecapModel.swift`
- `RecapView.swift`
- `HistoryView.swift`

Possible iOS version:
- recap screen after stop,
- history list later,
- persistence later.

## What Should Be Deferred
Do not rebuild these in the first MVP:
- Keynote automation,
- AppleScript / Apple Events,
- floating macOS overlay,
- AppKit window management,
- full speech recognition pipeline,
- full audio recording pipeline,
- complex SwiftData migration,
- filler detection,
- full MVVM/Router architecture.

These can become later exploration topics if Fian chooses them.

## Rebuild Direction
Working title:
**Tiempo iOS Rebuild**

Product idea:
An iOS presentation-practice companion that helps the user run a speaking practice session, track time/pace, and review a recap.

This is an iOS reinterpretation, not a 1:1 macOS platform clone.

That means:
- adapt reusable Swift/SwiftUI syntax and behavior patterns from original Tiempo when they fit iOS learning,
- avoid copying macOS-only implementation details directly,
- explain every simplification/defer decision so original patterns are not silently skipped.

## MVP Scope
### Must-have for first iOS MVP
- Home screen.
- Start practice behavior.
- Timer runs.
- Pause/resume/stop.
- Recap screen after stop.
- Simple/manual/simulated pace or WPM.
- Clear state-driven UI.

### Nice-to-have later
- Speech recognition.
- Audio recording.
- Per-slide/manual segment tracking.
- SwiftData persistence.
- History list.
- Polished recap UI.

### Defer
- Keynote integration.
- Floating overlay.
- macOS-specific automation.
- Advanced filler detection.

## Feature Milestone Path

Each milestone should leave a working feature artifact. Later milestones may refactor or adjust previous features, like a professional app build process. A skeleton alone is not a completed feature artifact unless the milestone was explicitly scoped as setup/boilerplate.

### Phase 1 — Working Core Practice Flow
1. **Milestone 1 — Home Feature Rebuild**
   - Original source focus: Home view/state/action files.
   - Artifact: Home screen working as the iOS app entry feature.
2. **Milestone 2 — Practice Start Flow**
   - Original source focus: Home primary action, routing, practice start behavior.
   - Artifact: Home can move into a practice flow/screen.
3. **Milestone 3 — Practice Timer**
   - Original source focus: practice session timing / elapsed time behavior.
   - Artifact: timer runs and updates UI while practicing.
4. **Milestone 4 — Pause / Resume / Stop Control**
   - Original source focus: practice state transitions and action handling.
   - Artifact: start → pause → resume → stop works without invalid states.
5. **Milestone 5 — Practice Result Model**
   - Original source focus: practice/session/result models.
   - Artifact: stopping practice produces structured result data.
6. **Milestone 6 — Recap Screen**
   - Original source focus: recap model/view behavior.
   - Artifact: practice result appears on a recap screen.

### Phase 2 — Saved Practice
7A. **Milestone 7A — History List**
   - Original source focus: history feature and previous session display.
   - Artifact: previous practice sessions appear in a list, starting with mock/in-memory data if needed.
7B. **Milestone 7B — Persistence**
   - Original source focus: SwiftData/history storage.
   - Artifact: practice sessions can be saved and reopened.

### Phase 3 — Speaking Coach Behavior
8A. **Milestone 8A — WPM / Pace Logic**
   - Original source focus: WPM calculator and pace feedback.
   - Artifact: app can compute/display simple pace feedback.
8B. **Milestone 8B — Speech / Audio Pipeline**
   - Original source focus: speech recognition and audio capture.
   - Artifact: app can experiment with speech/audio input if ready.
8C. **Milestone 8C — Permissions / Error States**
   - Original source focus: permission/status/error handling.
   - Artifact: iOS permission/error states are represented clearly.
8D. **Milestone 8D — Polish / Showcase MVP**
   - Original source focus: final integrated user flow and intentional deferrals.
   - Artifact: a presentable Tiempo iOS MVP/showcase flow.

This is an “8 milestone” path with expandable advanced groups. Details for milestones 2+ should be refined after inspecting the relevant original Tiempo source, not guessed upfront.

## Guiding Question Format
For every milestone, ask questions in this structure:

0. **Deep behavior lens** — What domain is being modeled, why this representation, what behavior changes, what invalid states are prevented, what tradeoff is being made, and what code actually executes at runtime?

1. **Original behavior** — What behavior does this feature perform in the original Tiempo app?
2. **Original syntax/pattern** — What Swift/SwiftUI syntax, API, or pattern does the original code use?
3. **Engineering tradeoff** — Why might the original app be built that way, and what alternatives exist?
4. **iOS adaptation** — Which original syntax/patterns should be brought over, and which macOS-specific or too-advanced implementation details should be simplified, redesigned, or deferred?
5. **Execution mechanics** — What code runs first, what state/data changes, and why does UI update?
6. **Artifact/done** — What proves this feature is working, not just a skeleton?

## Current Milestone
Current focus:
**Milestone 1 — Home Feature Rebuild**

Focus:
- Inspect original Tiempo Home source before coding further.
- Understand Home state/action syntax and the reasons behind it.
- Rebuild a meaningful Home screen for Tiempo iOS, not a generic state demo.
- Verify Home behavior as a working feature artifact.

Guiding questions:
- Original Tiempo Home memakai state, action, computed properties, dan view composition bagaimana?
- Bagian mana yang perlu dibawa ke iOS, dan bagian mana yang macOS-specific/deferred?
- Saat user tap primary button, kode mana yang benar-benar dieksekusi?
- State apa yang berubah, dan kenapa UI ikut berubah?

Hands-on target:
- Build/continue a Tiempo-inspired Home screen.
- Use explicit state to drive title/subtitle/button/action.
- Route the primary action through a small function or action enum if it helps mirror the original behavior.
- Keep core code manual-first.

Artifact evidence:
```text
original Home behavior/syntax inspected
→ iOS Home screen built manually
→ Home state/action behavior verified
→ execution mechanics explainable
```

## Learning Rule for This Rebuild
This rebuild is manual-first.

Fian should write the core learning code manually. Hermes can help with:
- explanation,
- guiding questions,
- hints,
- pseudocode,
- minimal snippets,
- debugging,
- review.

Codex can help with:
- review,
- debug,
- scaffold/TODOs,
- refactor after behavior works.

Avoid full AI implementation of core learning milestones unless explicitly requested.

## Current Decision
Use this app as the main learning source for the feature-based Swift/iOS workflow.

Rebuild target:
**an iOS version inspired by Tiempo, focused first on presentation practice behavior, not macOS Keynote automation.**
