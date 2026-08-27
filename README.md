# Swift/iOS Rebuild Learning Journey

## What This Is

This repository documents my Swift/iOS learning journey through a rebuild-oriented project.

I am using this workspace to move from **“I can slice UI”** into understanding **how Swift/iOS code actually behaves when an app runs** — from the app entry point, state changes, user actions, rendering, data flow, and eventually a working iOS artifact.

This is not just a repo for a finished app. It is also a learning trail.

## Why I’m Doing This

I previously built an app mostly with AI assistance. The app is interesting enough that I want to rebuild it again, but this time as a learning process.

Instead of only asking AI to generate code, I want to understand:

- when code is executed,
- how Swift syntax behaves at compile-time and runtime,
- where state is stored,
- why UI updates,
- how user interaction flows into code,
- how data moves between views/models,
- and how an iOS app can be built explicitly through programmatic Swift/SwiftUI code.

## Learning Goal

My current learning goal is:

> Learn Swift/iOS through behavior-of-code / execution-mechanics driven Swift.

In practice, that means I want to rebuild app behavior manually and be able to explain:

```text
App starts here
→ this view is created/rendered
→ this state is read
→ this user action runs this closure/function
→ this state/data changes
→ UI updates because of that change
```

## Source App

Original app repository:

```text
https://github.com/sandeeffendi/keynote-companion-macos.git
```

Original app:

```text
Tiempo / Keynote Companion macOS
```

The original app is a macOS public-speaking coach that can detect Keynote, record practice, calculate WPM, and show recap/history.

This project is not intended to clone the macOS app 1:1. The goal is to rebuild meaningful behavior slices into an iOS app.

## Rebuild Direction

Working direction:

```text
Tiempo iOS Rebuild — Presentation Practice Companion
```

Initial MVP idea:

```text
Home screen
→ Start Practice
→ Timer runs
→ Pause / Resume / Stop
→ Recap screen
→ later: history, persistence, speech recognition
```

Deferred from the first MVP:

- Keynote automation,
- AppleScript / Apple Events,
- AppKit floating overlay,
- macOS window management,
- full speech/audio pipeline from day one,
- complex SwiftData migration,
- full macOS feature parity.

## How I Learn

The core learning loop is:

```text
Original app behavior
→ iOS rebuild slice
→ guiding question
→ hands-on experiment
→ observation
→ note/artifact
```

A typical session should look like:

```text
Brief dulu
→ task kecil
→ gua coba manual
→ tanya saat stuck
→ review bareng
→ catat kalau worth it
```

Default mode:

```text
Guided Hands-on
```

That means Hermes gives a short scope, mental model, guiding questions, and a small manual-first task — not a full solution immediately.

## Manual-first Constraint

I use AI as a mentor and pair programmer, but I want to write the core learning code manually.

AI help should escalate gradually:

```text
hint → pseudocode → minimal snippet → minimal patch → full solution only if requested/stuck/boilerplate
```

Codex or another coding agent can help with:

- scaffold/TODOs,
- debugging,
- code review,
- minimal patches,
- refactor after behavior works,
- boilerplate,
- explanation.

But AI should not take over the core learning implementation unless I explicitly ask for it.

## Tools Used

- **Xcode** — writing and running the iOS app.
- **Swift / SwiftUI** — programmatic iOS app development.
- **Hermes** — mentor, learning coach, curator, and workflow orchestrator.
- **Codex** — pair programmer for review/debug/scaffold/refactor.
- **Obsidian** — second brain for workflow rules, guiding questions, daily logs, concepts, errors, and artifact notes.
- **Git** — checkpointing learning progress and app changes.

## Repository Structure

```text
Challenge5/
  AGENTS.md
  README.md
  .gitignore
  Challenge5.xcodeproj/
  Challenge5/
  LearnSwiftBrain/
```

### `AGENTS.md`
Instruction file for AI agents working in this repo.

It explains:
- learning target,
- rebuild source,
- manual-first rules,
- role routing,
- Obsidian rules,
- guiding question rules,
- artifact rules.

### `Challenge5/`
Xcode-visible app source folder.

Current lightweight structure:

```text
Challenge5/
  Challenge5App.swift
  ContentView.swift
  Assets.xcassets/
  App/
  Features/
  Core/
```

This folder should stay focused on the iOS rebuild app source.

No forced MVVM or advanced architecture at the start.

### `LearnSwiftBrain/`
Obsidian vault for this learning journey.

Important notes:

```text
LearnSwiftBrain/Learning/Swift iOS/Index.md
LearnSwiftBrain/Learning/Swift iOS/Workflow Rules/
LearnSwiftBrain/Learning/Swift iOS/Guiding Questions/
LearnSwiftBrain/Learning/Swift iOS/Artifacts/
LearnSwiftBrain/Learning/Swift iOS/Daily Logs/
LearnSwiftBrain/Learning/Swift iOS/Concepts/
LearnSwiftBrain/Learning/Swift iOS/Errors & Fixes/
```

## Obsidian as Second Brain

Obsidian is the source of truth for the learning workflow and reflection notes.

It stores:
- workflow rules,
- role definitions,
- guiding questions,
- rebuild orientation,
- daily logs,
- concept notes,
- error/fix notes,
- artifact notes.

Obsidian is also where I can check whether Hermes is following the workflow we already defined.

Important rule:

> No Obsidian write/edit without explicit approval of target, action, and content.

## Current Focus

Current focus before Day 1:

```text
Rebuild orientation complete.
Start from active rebuild slices:
1. App Launch to First Screen
2. Home State Drives UI
```

Suggested Day 1:

```text
Day 1 - App Launch + Home State Behavior
```

Goal:

```text
Understand app entry flow and build a simple state-driven Home UI manually.
```

## Artifacts

Artifacts in this journey should be tied to the Tiempo iOS rebuild.

Artifact levels:

1. behavior snippet / experiment,
2. rebuild slice prototype,
3. small working iOS slice,
4. showcase rebuild artifact.

Each artifact should track:

- what I built manually,
- what AI helped with,
- what behavior is working,
- what is not verified,
- what execution mechanics I learned.

## Status

- Initial learning workflow: set up.
- Obsidian second brain: set up.
- Workflow rules: documented.
- Guiding questions: organized into Active Rebuild Questions + Reference Bank.
- Rebuild orientation note: created.
- Xcode folder: cleaned up for app-rebuild focus.
- Day 1: ready to start.
