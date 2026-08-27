# App Rebuild Orientation - Tiempo iOS

## Source App
Repository: https://github.com/sandeeffendi/keynote-companion-macos.git

Original app: **Tiempo / Keynote Companion macOS**

## Why This App
Fian wants to learn Swift/iOS through a rebuild-oriented workflow: studying behavior and execution mechanics from an app that was previously built with AI, then rebuilding an iOS version manually/programmatically.

The goal is not to copy the macOS app 1:1, but to understand the code behavior behind it and rebuild meaningful iOS slices.

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
**Medium/low for 15 days** — full macOS parity is not realistic or necessary because several features are macOS-specific.

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

This is an iOS reinterpretation, not a 1:1 macOS clone.

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

## Initial Behavior Slices
### Slice 1 — App launch to first screen
Source references:
- `KeynoteCompanionMacosApp.swift`
- `RootView.swift`
- `AppRouter.swift`

Learning questions:
- Dari mana app mulai jalan?
- Apa fungsi `@main`?
- Kapan root view dibuat?
- Kapan `body` dievaluasi?
- Bagaimana screen pertama dipilih?

Possible iOS rebuild:
```text
Challenge5App → RootView → HomeView
```

### Slice 2 — Home state drives UI
Source references:
- `HomeViewState.swift`
- `HomeStatusContentView.swift`
- `HomeViewModel.swift`

Behavior:
```text
state berubah → title/subtitle/button berubah
```

Learning questions:
- Kenapa enum bisa drive UI?
- Bagaimana computed property seperti `title` dan `primaryActionTitle` bekerja?
- Apa yang terjadi saat state berubah?
- Kenapa UI ikut berubah?

Possible iOS rebuild:
```text
HomePracticeState → title/subtitle/button
```

### Slice 3 — Button action routes behavior
Source references:
- `HomeView.swift`
- `handlePrimaryAction(_:)`

Behavior:
```text
User tap button
→ action enum dikirim
→ switch action
→ function dipanggil
→ state berubah / navigation berubah
```

Learning questions:
- Kapan closure `Button` dieksekusi?
- Apa bedanya view declaration dan action execution?
- Kenapa action bisa direpresentasikan sebagai enum?
- Bagaimana event user mengalir ke function?

### Slice 4 — Practice session state
Source reference:
- `PracticeViewModel.swift`

Behavior:
```text
startSession()
→ isRecording = true
→ startTimer()
→ elapsedTime update
→ UI update
```

Learning questions:
- Apa yang menyimpan status practice?
- Apa yang berubah saat start/pause/resume/stop?
- Bagaimana timer mengubah UI?
- Kapan butuh `@State`, dan kapan mungkin butuh ViewModel?

### Slice 5 — Recap model
Source references:
- `PracticeModels.swift`
- `RecapModel.swift`
- `RecapView.swift`

Behavior:
```text
PracticeResult
→ transform to recap data
→ Recap screen displays summary
```

Learning questions:
- Bagaimana struct menyimpan result?
- Bagaimana function mengubah raw data jadi display model?
- Apa bedanya model data dan view display?

## Suggested Day 1
Title:
**Day 1 - App Rebuild Orientation + Home State Behavior**

Focus:
- Understand original app at high level.
- Understand iOS app entry flow.
- Start rebuilding a small Home screen behavior programmatically.

Guiding questions:
- App lama mulai dari mana?
- Di iOS app ini, entry point-nya di mana?
- Apa screen pertama?
- State apa yang menentukan isi Home?
- Button pertama harus melakukan behavior apa?

Hands-on target:
- Create a simple `HomePracticeState` enum.
- Display title/subtitle/button from state.
- Tap button changes state.
- Observe UI update.

Artifact evidence:
```text
state → UI changes
button tap → state changes
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

Avoid full AI implementation of core learning slices unless explicitly requested.

## Current Decision
Use this app as the main learning source for the 15-day Swift/iOS workflow.

Rebuild target:
**an iOS version inspired by Tiempo, focused first on presentation practice behavior, not macOS Keynote automation.**
