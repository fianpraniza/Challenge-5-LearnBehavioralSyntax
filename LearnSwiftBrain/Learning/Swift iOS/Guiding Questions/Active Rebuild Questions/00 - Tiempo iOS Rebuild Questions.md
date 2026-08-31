# Tiempo iOS Rebuild Questions

## Purpose
Active milestone tracker untuk rebuild **Tiempo / Keynote Companion macOS** menjadi iOS learning app.

Ini adalah pusat milestone + guiding questions yang lahir dari app lama, bukan dari kurikulum Swift general atau day-by-day checklist.

Related orientation note:
- [[Artifacts/App Rebuild Orientation - Tiempo iOS]]

## Rebuild Goal
Membangun ulang versi iOS dari app public-speaking practice companion secara manual-first dan programmatic, sambil memahami mechanics Swift/iOS dari setiap feature behavior.

## Rebuild Principle
Tidak copy 1:1 dari macOS app pada level platform/UI-feature.

Ini **bukan** berarti melewatkan syntax/pattern original Tiempo.

Kalau original Tiempo memakai syntax/pattern Swift yang relevan untuk iOS dan penting untuk belajar behavior, pattern itu harus dipelajari dan diadaptasi secara eksplisit. Contoh:
- enum state/action,
- computed property,
- `switch`,
- view composition,
- closure callback,
- model `struct`,
- async/task flow ketika milestone-nya sudah membutuhkan.

Yang boleh disederhanakan atau ditunda:
- AppKit / `NSWindow`,
- floating macOS overlay,
- AppleScript / Apple Events,
- Keynote automation,
- macOS-only permission behavior,
- architecture original yang terlalu berat untuk milestone saat ini.

Setiap simplification/defer decision harus dijelaskan, supaya original syntax/pattern tidak hilang diam-diam.

Yang dilakukan:
```text
Original Tiempo feature/code
→ domain modeling
→ syntax/pattern study
→ engineering tradeoff
→ iOS adaptation
→ manual-first rebuild
→ working feature artifact
→ mechanics explanation
```

## MVP Direction
First iOS MVP:
- Home screen.
- Start practice.
- Timer runs.
- Pause/resume/stop.
- Recap after stop.
- Simple/manual/simulated pace/WPM first.

Defer from early milestones:
- Keynote automation.
- Floating macOS overlay.
- AppleScript/AppKit window management.
- Full speech/audio pipeline.
- Complex SwiftData migration.

## Feature Milestone Map

### Phase 1 — Working Core Practice Flow
1. [[Milestone 1 - Home Feature Rebuild]]
   - [[Milestone 1A - Home Entry Flow]]
   - [[Milestone 1B - Home State Drives UI]]
   - [[Milestone 1C - Home Primary Action Behavior]]
2. [[Milestone 2 - Practice Start Flow]]
3. [[Milestone 3 - Practice Timer]]
4. [[Milestone 4 - Pause Resume Stop Control]]
5. [[Milestone 5 - Practice Result Model]]
6. [[Milestone 6 - Recap Screen]]

### Phase 2 — Saved Practice
7A. [[Milestone 7A - History List]]
7B. [[Milestone 7B - Persistence]]

### Phase 3 — Speaking Coach Behavior
8A. [[Milestone 8A - WPM Pace Logic]]
8B. [[Milestone 8B - Speech Audio Pipeline]]
8C. [[Milestone 8C - Permissions Error States]]
8D. [[Milestone 8D - Polish Showcase MVP]]

This is an “8 milestone” path with expandable advanced groups. Details should be refined from original Tiempo source inspection, not guessed upfront.

## Current Milestone
Current focus:
- [[Milestone 1 - Home Feature Rebuild]]

## Guiding Question Format
For each feature milestone, use this deeper question structure. The goal is to help Fian ask questions he may not know how to ask yet as a new engineer.

### 0. Deep behavior lens
- What real-world/app domain is this code modeling?
- Why is this represented with this kind of data/syntax?
- What behavior changes when the data changes?
- What impossible states or invalid transitions should the code prevent?
- What tradeoff does the original app make, and what tradeoff should the iOS learning version make?
- What code is only declared, and what code actually executes at runtime?

### 1. Original behavior question
What behavior does this feature perform in the original Tiempo app?

### 2. Original syntax/pattern question
What Swift/SwiftUI syntax, API, or pattern does the original code use to create that behavior?

### 3. Engineering tradeoff question
Why might the original app be built that way? What are the simpler or alternative approaches?

### 4. iOS adaptation question
For the iOS rebuild, which original syntax/patterns should be brought over, and which macOS-specific or too-advanced implementation details should be simplified, redesigned, or deferred?

### 5. Execution mechanics question
When the user action happens, what code runs first, what state/data changes, and why does the UI update?

### 6. Artifact/done question
What proves this feature is working as a rebuild artifact, not just a skeleton?

## Current Learning Strategy
For each feature milestone:
1. Inspect relevant original Tiempo code.
2. Identify the domain being modeled, not only the syntax being used.
3. Identify behavior + Swift/SwiftUI syntax/patterns used.
4. Ask the deep behavior lens and six guiding question types above.
5. Decide the iOS adaptation.
6. Fian rebuilds the core behavior manually.
7. Verify the feature/screen works, or mark it explicitly as not verified.
8. Explain execution mechanics and engineering tradeoff.
9. Record observation in Daily Log / Concept Note / Artifact Note if worth it.

## Open Rebuild Questions
- [ ] Apa core behavior dari Tiempo yang paling penting untuk iOS MVP?
- [ ] State apa yang harus ada di iOS version?
- [ ] Fitur macOS mana yang harus ditunda?
- [ ] Kapan cukup pakai `@State`, dan kapan mulai butuh ViewModel?
- [ ] Kapan speech recognition masuk tanpa mengganggu fundamental?
