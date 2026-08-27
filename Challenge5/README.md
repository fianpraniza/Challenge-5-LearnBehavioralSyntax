# Tiempo iOS Rebuild

This is Fian's iOS rebuild learning project based on the previous macOS app:

```text
https://github.com/sandeeffendi/keynote-companion-macos.git
```

The goal is not to clone the macOS app 1:1. The goal is to rebuild meaningful iOS behavior slices manually/programmatically to understand Swift/iOS execution mechanics.

## Learning Target

Behavior-of-code / execution-mechanics driven Swift:

- understand how Swift syntax behaves at compile-time and runtime,
- understand how an iOS app runs from entry point to UI update,
- understand how state, actions, functions, models, and views interact,
- build iOS UI and behavior through explicit Swift/SwiftUI code.

## Current Direction

Rebuild direction:

```text
Tiempo iOS — Presentation Practice Companion
```

Initial MVP idea:

```text
Home screen
→ start practice
→ timer runs
→ pause/resume/stop
→ recap screen
→ later: history / persistence / speech recognition
```

## Xcode-visible Structure

```text
Challenge5/
  Challenge5App.swift
  ContentView.swift
  Assets.xcassets/

  App/
  Features/
  Core/
```

Folder intent:

- `App/` — root app flow such as `RootView.swift` when needed.
- `Features/` — behavior-oriented slices such as Home, Practice, Recap.
- `Core/` — shared models/utilities only when reuse is real.

## Architecture Rule

No forced MVVM, Clean Architecture, Coordinator, or dependency injection at the start.

Start simple. Add structure only when the behavior or learning question requires it.

## Manual-first Rule

Fian writes core learning code manually.

AI help escalates gradually:

```text
hint → pseudocode → minimal snippet → minimal patch → full solution only if requested/stuck/boilerplate
```

## Source of Learning Questions

Guiding questions should come from the app being rebuilt:

```text
Original app behavior → iOS rebuild slice → guiding question → hands-on experiment → observation → note/artifact
```

Main Obsidian orientation note:

```text
LearnSwiftBrain/Learning/Swift iOS/Artifacts/App Rebuild Orientation - Tiempo iOS.md
```

Active rebuild questions:

```text
LearnSwiftBrain/Learning/Swift iOS/Guiding Questions/Active Rebuild Questions/
```

## Deferred From MVP

Do not rebuild these first:

- Keynote automation,
- AppleScript / Apple Events,
- AppKit floating overlay/window management,
- full speech/audio pipeline,
- complex SwiftData migration,
- full macOS feature parity.
