# Guiding Questions Index

## Purpose
Guiding Questions adalah daftar pertanyaan eksplorasi untuk belajar Swift/iOS dengan pendekatan **behavior-of-code / execution-mechanics driven Swift**.

Dalam workflow Fian, guiding questions **bukan kurikulum wajib yang harus diikuti urut dari atas ke bawah**. Guiding questions dipakai untuk mengubah feature milestone Tiempo menjadi hands-on yang bisa ditracking.

Core idea:
```text
Original Tiempo feature/code
→ domain modeling
→ real feature requirement
→ syntax/pattern study
→ engineering tradeoff
→ iOS adaptation
→ manual-first rebuild
→ working feature artifact
→ mechanics explanation
```

Learning boundary:
```text
Learn only deep enough to explain, predict, and rebuild the behavior required by the prototype.
Functional prototype drives the learning. Learning does not delay the prototype.
Basic = minimum professional foundation required for real app behavior, not toy/simple-only.
```

## Two Types of Guiding Questions

### 1. Active Rebuild Questions
Folder:
```text
Active Rebuild Questions/
```

Ini adalah pertanyaan aktif untuk rebuild **Tiempo iOS**. Ini dipakai untuk milestone fitur Tiempo iOS, bukan checklist day-by-day.

Use this first ketika mulai sesi belajar.

### 2. Reference Bank
Folder:
```text
Reference Bank/
```

Ini adalah bank pertanyaan umum Swift/iOS mechanics. Buka hanya ketika feature milestone membutuhkan konsep tertentu.

Reference Bank bukan checklist wajib.

## How to Use
Pilih current feature milestone dari Active Rebuild Questions, inspect source original Tiempo yang relevan, lalu pilih 1–3 guiding questions untuk dijawab lewat code.

Default flow:
```text
Question → Hypothesis → Hands-on experiment → Observation → My answer → Note/artifact
```

## Feature Milestone Guiding Question Template
```markdown
## Feature Milestone
Feature:

## Learning Boundary
- Behavior Target:
- Real Feature Requirement:
- Required Concepts:
- Must Understand:
- Proof of Understanding: explain, predict, rebuild.
- Out of Scope:
- Output:
- Stop Rule / Timebox:
- Parking Lot:

## Deep behavior lens
- Domain modeling: what real app situation is represented?
- Real feature requirement: what useful behavior should not be dummy-replaced?
- Representation: why this data/syntax/framework shape?
- Behavior: what changes when this value/event changes?
- Invariant / impossible state: what should never be allowed?
- Tradeoff: what does original Tiempo choose, and what do we simplify?
- Runtime: what is declared vs what executes?
- Artifact evidence: how do we prove this is working?

### 1. Original behavior question
-

### 2. Original syntax/pattern question
-

### 3. Engineering tradeoff question
-

### 4. iOS adaptation question
-

### 5. Execution mechanics question
-

### 6. Artifact/done question
-

## Manual-first task
-

## Evidence / verification
-
```

## Active Rebuild Questions
- [[Active Rebuild Questions/00 - Tiempo iOS Rebuild Questions]]
- [[Active Rebuild Questions/Milestone 1 - Home Feature and State Action Modeling]]
- [[Active Rebuild Questions/Milestone 1A - Home Entry Flow]]
- [[Active Rebuild Questions/Milestone 1B - Home State Drives UI]]
- [[Active Rebuild Questions/Milestone 1C - Home Primary Action Behavior]]
- [[Active Rebuild Questions/Milestone 2 - Practice Flow Navigation Callback]]
- [[Active Rebuild Questions/Milestone 3 - Practice Session ViewModel Timer Controls]]
- [[Active Rebuild Questions/Milestone 4 - Audio Recording Speech Transcript]]
- [[Active Rebuild Questions/Milestone 5 - Result Model WPM Filler From Transcript]]
- [[Active Rebuild Questions/Milestone 6 - Recap Screen]]
- [[Active Rebuild Questions/Milestone 7 - SwiftData History Persistence]]
- [[Active Rebuild Questions/Milestone 8 - Permissions Error States]]
- [[Active Rebuild Questions/Milestone 9 - Polish Showcase MVP]]

## Reference Bank
- [[Reference Bank/01 - App Execution Lifecycle]]
- [[Reference Bank/02 - Swift Syntax Mechanics]]
- [[Reference Bank/03 - Value Type Behavior]]
- [[Reference Bank/04 - Optional Behavior]]
- [[Reference Bank/05 - SwiftUI View Behavior]]
- [[Reference Bank/06 - State and Rendering Behavior]]
- [[Reference Bank/07 - Interaction Behavior]]
- [[Reference Bank/08 - Binding and Data Flow]]
- [[Reference Bank/09 - List and Collection Behavior]]
- [[Reference Bank/10 - Programmatic App Building]]
- [[Reference Bank/11 - Debugging Mechanics]]
- [[Reference Bank/12 - Artifact Explanation]]
- [[Reference Bank/13 - SwiftUI Syntax Starter Patterns]]

## Current Milestone Starting Point
Start from:
- [[Active Rebuild Questions/Milestone 1 - Home Feature and State Action Modeling]]

Focus:
```text
inspect original Tiempo Home code
→ understand Home state/action syntax
→ rebuild working iOS Home screen
→ explain runtime flow from app launch to button action/state update
```

Related orientation note:
- [[Artifacts/App Rebuild Orientation - Tiempo iOS]]
