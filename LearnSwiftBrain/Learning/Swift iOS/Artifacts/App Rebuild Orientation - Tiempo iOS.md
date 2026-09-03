# App Rebuild Orientation - Tiempo iOS

## Source App
Repository: https://github.com/sandeeffendi/keynote-companion-macos.git

Original app: **Tiempo / Keynote Companion macOS**

## Why This App
Fian wants to learn Swift/iOS through a rebuild-oriented workflow: studying behavior and execution mechanics from a real previously AI-built app, then rebuilding a useful iOS version manually/programmatically.

The goal is not to copy the macOS app 1:1 at the platform/UI-feature level. The goal is to understand the original code behavior and intentionally adapt relevant Swift/SwiftUI syntax, architecture patterns, framework usage, and tradeoffs into meaningful Tiempo iOS feature milestones.

“Not 1:1” does **not** mean skipping original reusable Swift patterns. If original Tiempo uses a relevant pattern such as enum state/action, computed properties, `switch`, view composition, closures, MVVM, Combine, concurrency, model structs, SwiftData, Speech, or AVFoundation, prefer studying and adapting it explicitly.

Simplify/defer only when the original code is macOS-specific, production-grade beyond the current milestone, or not needed for the current iOS behavior.

## Functional-Basic Definition
Basic does not mean toy/simple-only.

Basic means **minimum professional foundation required for real app behavior**.

For Tiempo iOS, these can be basic when the feature needs them:
- MVVM / ViewModel for practice session logic,
- Combine for timer/publisher/event streams,
- concurrency / async-await for system framework work,
- SwiftData for saving real practice history,
- Speech/AVFoundation for audio recording and transcript,
- permissions/error-state modeling for microphone/speech access.

The learning boundary is:
```text
Functional prototype drives the learning.
Learning must not delay the prototype.
Learn only deep enough to explain, predict, and rebuild the current real feature behavior.
```

## Original App Summary
Tiempo is a native macOS public-speaking coach.

Original macOS behavior:
- Detect live Keynote slideshow.
- Show floating overlay panel above Keynote.
- Record presenter voice.
- Recognize speech/transcript/word count.
- Calculate live words-per-minute (WPM).
- Detect filler words/silent pauses.
- Track slide number.
- Produce recap feedback.
- Save practice history using SwiftData.

Original high-level flow:
```text
Home
→ check permissions + Keynote status
→ start practice
→ record audio + speech recognition + slide tracking
→ stop
→ recap with WPM/filler feedback
→ history persisted with SwiftData
```

## Existing Tech Stack Observed
From repository inspection:
- Swift + SwiftUI + AppKit
- MVVM-style feature folders
- Combine/timer/reactive updates where needed
- SwiftData for local persistence
- Speech recognition
- Audio capture
- AppleScript / Apple Events for Keynote automation
- AppKit window management / floating overlay
- Tests for ViewModels, WPM, practice pipeline, history, permissions

## What Should Transfer to iOS
Good candidates for iOS rebuild:

### 1. Public speaking practice flow
```text
User starts practice
→ timer runs
→ app tracks practice state
→ user pauses/resumes/stops
→ transcript/feedback are produced
→ recap appears
→ session can be saved
```

### 2. Home state/action modeling
Original source references:
- `HomeViewState.swift`
- `HomeStatusContentView.swift`
- `HomeSessionStatus.swift`
- `HomeViewModel.swift`

Transferable patterns:
- enum state/action,
- computed properties for display/action,
- action handler,
- view composition.

### 3. Practice session state + ViewModel
Original source references:
- `PracticeViewModel.swift`
- `PracticeRecordingCoordinator.swift`
- `PracticeModels.swift`

Transferable patterns:
- View displays state,
- ViewModel owns session behavior,
- published state updates UI,
- timer/control state machine,
- async/service boundary when audio enters.

### 4. Audio recording + speech transcript
Original source references:
- `SpeechRecognitionService.swift`
- audio capture service files,
- coordinator transcript handling.

Transferable behavior:
```text
microphone/speech permission
→ start audio/speech service
→ transcript/word count callback
→ ViewModel state updates
→ UI/Result uses transcript
```

### 5. WPM + filler feedback from transcript
Original source references:
- `WPMCalculator.swift`
- `FillerModels.swift`
- `PracticeModels.swift`

Transferable behavior:
- calculate WPM from word count/timestamps + duration,
- detect lexical filler words from transcript,
- create feedback for Recap.

Defer only advanced parts:
- acoustic silent-pause detection,
- filled-pause DSP,
- advanced NLP/ML scoring,
- perfect speech accuracy.

### 6. Recap, history, SwiftData
Original source references:
- `PracticeModels.swift`
- `RecapModel.swift`
- `RecapView.swift`
- `HistoryView.swift`
- SwiftData model/store files.

Transferable behavior:
- result becomes recap display,
- result persists,
- history reloads saved sessions.

## What Should Be Deferred
Do not copy these directly into first iOS MVP:
- Keynote automation,
- AppleScript / Apple Events,
- floating macOS overlay,
- AppKit window management,
- per-slide Keynote tracking unless redesigned for iOS,
- production-grade audio DSP,
- speech accuracy tuning,
- complex SwiftData migration,
- CloudKit/multi-device sync,
- full Clean Architecture or DI framework.

Do **not** defer these just because they sound advanced if the useful feature needs them:
- basic MVVM/ViewModel,
- basic Combine/timer event flow,
- basic async/await/callback flow,
- basic Speech/AVFoundation transcript,
- basic SwiftData save/load,
- basic permission/error states.

## Rebuild Direction
Working title:
**Tiempo iOS Rebuild**

Product idea:
An iOS presentation-practice companion that lets the user practice speaking, record/transcribe speech, receive basic pace/filler feedback, review a recap, and save practice history.

This is an iOS reinterpretation, not a 1:1 macOS platform clone.

That means:
- adapt reusable Swift/SwiftUI syntax and behavior patterns from original Tiempo when they fit iOS learning,
- avoid copying macOS-only implementation details directly,
- do not dummy-away core speaking-coach value,
- explain every simplification/defer decision.

## Functional MVP Scope
### Must-have for first useful iOS MVP
- Home screen.
- Start practice behavior.
- Practice screen with timer and pause/resume/stop controls.
- Basic ViewModel/state separation when session behavior grows.
- Audio recording / speech transcript as real input path.
- Practice result generated from real available session data.
- WPM and filler summary from transcript when transcript exists.
- Recap screen after stop.
- SwiftData history/persistence.
- Permission/error states for microphone/speech.

### Defer / Parking Lot
- Keynote integration.
- Floating overlay.
- macOS-specific automation.
- Per-slide Keynote tracking.
- Advanced filler acoustic detection.
- Audio DSP / custom ML.
- Complex migration/sync.
- Full production architecture.

## Feature Milestone Path
Each milestone should leave a working feature artifact. Later milestones may refactor or adjust previous features, like a professional app build process. A skeleton alone is not a completed feature artifact unless the milestone was explicitly scoped as setup/boilerplate.

### Phase 1 — App Entry and Practice Flow
1. **Milestone 1 — Home Feature and State/Action Modeling**
   - Original source focus: Home view/state/action files.
   - Artifact: Home screen working as the iOS app entry feature.
2. **Milestone 2 — Practice Flow Navigation/Callback**
   - Original source focus: Home primary action, routing/root flow, practice start behavior.
   - Artifact: Home can move into a real Practice screen.

### Phase 2 — Real Practice Session
3. **Milestone 3 — Practice Session ViewModel + Timer/Controls**
   - Original source focus: practice ViewModel, session state, timer/control behavior.
   - Artifact: practice screen has timer and valid pause/resume/stop controls.
4. **Milestone 4 — Audio Recording + Speech Transcript**
   - Original source focus: speech recognition, audio capture, coordinator/service updates.
   - Artifact: real speech/audio input produces transcript updates or a verified framework/device blocker.

### Phase 3 — Result and Feedback
5. **Milestone 5 — Result Model + WPM/Filler From Transcript**
   - Original source focus: PracticeResult, WPMCalculator, FillerModels.
   - Artifact: stopping practice creates result with transcript-derived WPM/filler summary.
6. **Milestone 6 — Recap Screen**
   - Original source focus: recap model/view behavior.
   - Artifact: practice result appears on a useful recap screen.

### Phase 4 — Saved Practice and Robust MVP
7. **Milestone 7 — SwiftData History/Persistence**
   - Original source focus: SwiftData/history storage.
   - Artifact: practice sessions can be saved and reopened.
8. **Milestone 8 — Permissions/Error States**
   - Original source focus: permission/status/error handling.
   - Artifact: iOS permission/error states are represented clearly.
9. **Milestone 9 — Polish/Showcase MVP**
   - Original source focus: final integrated user flow and intentional deferrals.
   - Artifact: a presentable Tiempo iOS MVP/showcase flow.

## Guiding Question Format
For every milestone, ask questions in this structure:

0. **Deep behavior lens** — What domain is being modeled, what real feature requirement should not be dummy-replaced, why this representation, what behavior changes, what invalid states are prevented, what tradeoff is being made, and what code actually executes at runtime?

1. **Original behavior** — What behavior does this feature perform in the original Tiempo app?
2. **Original syntax/pattern** — What Swift/SwiftUI syntax, framework, architecture pattern, API, or service boundary does the original code use?
3. **Engineering tradeoff** — Why might the original app be built that way, and what simpler version keeps the useful iOS behavior?
4. **iOS adaptation** — Which original syntax/patterns should be brought over, and which macOS-specific or production-grade details should be simplified, redesigned, or deferred?
5. **Execution mechanics** — What code runs first, what state/data changes, and why does UI update?
6. **Artifact/done** — What proves this feature is working, not just a skeleton/dummy exercise?

## Current Decision
Use this app as the main learning source for the functional feature-based Swift/iOS workflow.

Rebuild target:
**a useful iOS version inspired by Tiempo, focused on real presentation-practice behavior, not macOS Keynote automation.**
