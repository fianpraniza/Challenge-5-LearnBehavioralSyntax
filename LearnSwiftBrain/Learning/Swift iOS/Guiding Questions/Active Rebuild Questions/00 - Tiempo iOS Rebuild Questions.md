# Tiempo iOS Rebuild Questions

## Purpose
Active milestone tracker untuk rebuild **Tiempo / Keynote Companion macOS** menjadi iOS learning app.

Ini adalah pusat milestone + guiding questions yang lahir dari app lama, bukan dari kurikulum Swift general atau day-by-day checklist.

Related orientation note:
- [[Artifacts/App Rebuild Orientation - Tiempo iOS]]

## Rebuild Goal
Membangun ulang versi iOS dari app public-speaking practice companion secara manual-first dan programmatic, sambil memahami mechanics Swift/iOS dari setiap real feature behavior.

## Rebuild Principle
Tidak copy 1:1 dari macOS app pada level platform/UI-feature.

Ini **bukan** berarti melewatkan syntax/pattern original Tiempo.

Kalau original Tiempo memakai syntax/pattern Swift yang relevan untuk iOS dan penting untuk belajar behavior, pattern itu harus dipelajari dan diadaptasi secara eksplisit. Contoh:
- enum state/action,
- computed property,
- `switch`,
- view composition,
- closure callback,
- MVVM ketika behavior mulai punya state/logic nyata,
- Combine ketika event stream/timer/publisher memang dipakai,
- concurrency/async ketika fitur bicara dengan system framework,
- model `struct`,
- SwiftData ketika app perlu history/persistence,
- Speech/AVFoundation ketika app perlu audio/transcript.

Yang boleh disederhanakan atau ditunda adalah **production-grade complexity**, bukan core useful behavior.

Boleh ditunda:
- AppKit / `NSWindow`,
- floating macOS overlay,
- AppleScript / Apple Events,
- Keynote automation,
- macOS-only permission behavior,
- audio DSP detail,
- speech accuracy tuning,
- complex SwiftData migration,
- CloudKit/multi-device sync,
- Clean Architecture / dependency injection framework,
- full original macOS architecture yang tidak dibutuhkan untuk iOS behavior sekarang.

Setiap simplification/defer decision harus dijelaskan, supaya original syntax/pattern atau core product value tidak hilang diam-diam.

Yang dilakukan:
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

## Functional Basic Definition
Basic bukan berarti toy/simple-only.

Basic berarti **minimum professional foundation required for real app behavior**.

Jadi dalam Tiempo iOS:
- MVVM bisa basic ketika View mulai punya state/logic yang perlu dipisah.
- Combine bisa basic ketika fitur memakai timer/publisher/event stream.
- Concurrency bisa basic ketika fitur memakai async system framework.
- SwiftData bisa basic ketika fitur butuh save/load history.
- Speech/AVFoundation bisa basic ketika core value app butuh audio/transcript.
- Permissions bisa basic ketika app butuh microphone/speech access.

Guardrail:
```text
Do not dummy-away core product value.
Defer production-grade complexity, not useful behavior.
```

## Global Learning Boundary
Functional prototype drives the learning. Learning must not delay the prototype.

Pelajari setiap konsep hanya sedalam yang diperlukan untuk:
1. **Explain** — menjelaskan behavior dengan kata-kata sendiri.
2. **Predict** — memprediksi efek perubahan kecil pada kode.
3. **Rebuild** — membuat ulang behavior serupa secara manual.

Kalau tiga bukti itu sudah tercapai untuk behavior milestone, stop ngulik konsep itu dan lanjut build/milestone berikutnya.

Setiap sesi milestone harus punya:
- **Behavior Target** — behavior aplikasi apa yang mau dipahami/dibangun.
- **Real Feature Requirement** — core value apa yang tidak boleh di-dummy-kan.
- **Required Concepts** — konsep minimum yang diperlukan untuk behavior itu.
- **Must Understand** — alur minimum yang harus bisa dijelaskan.
- **Proof of Understanding** — explain, predict, rebuild.
- **Out of Scope** — hal yang sengaja tidak dipelajari sekarang.
- **Output** — increment prototype yang harus bekerja.
- **Stop Rule / Timebox** — kapan harus berhenti ngulik dan lanjut.

Jika Fian atau AI mulai masuk ke detail yang tidak dibutuhkan untuk output milestone, pindahkan ke **Parking Lot**, bukan dibahas habis saat itu.

## Functional MVP Direction
First useful iOS MVP:
- Home screen.
- Start practice.
- Practice screen with timer and controls.
- Basic MVVM/state separation when practice logic grows.
- Audio recording / speech transcript as the real speaking input path.
- Practice result from real session data.
- WPM and filler summary derived from transcript when transcript exists.
- Recap after stop.
- History + SwiftData persistence.
- Permission/error states for microphone/speech.

Defer from first MVP:
- Keynote automation.
- Floating macOS overlay.
- AppleScript/AppKit window management.
- Production-grade audio DSP.
- Perfect speech accuracy.
- Complex SwiftData migration / CloudKit sync.
- Full Clean Architecture.

## Feature Milestone Map

### Phase 1 — App Entry and Practice Flow
1. [[Milestone 1 - Home Feature and State Action Modeling]]
2. [[Milestone 2 - Practice Flow Navigation Callback]]

### Phase 2 — Real Practice Session
3. [[Milestone 3 - Practice Session ViewModel Timer Controls]]
4. [[Milestone 4 - Audio Recording Speech Transcript]]

### Phase 3 — Result and Feedback
5. [[Milestone 5 - Result Model WPM Filler From Transcript]]
6. [[Milestone 6 - Recap Screen]]

### Phase 4 — Saved Practice and Robust MVP
7. [[Milestone 7 - SwiftData History Persistence]]
8. [[Milestone 8 - Permissions Error States]]
9. [[Milestone 9 - Polish Showcase MVP]]

This milestone path keeps the app useful while still controlling learning depth. Details should be refined from original Tiempo source inspection, not guessed upfront.

## Current Milestone
Current focus:
- [[Milestone 1 - Home Feature and State Action Modeling]]

## Guiding Question Format
For each feature milestone, use this deeper question structure. The goal is to help Fian ask questions he may not know how to ask yet as a new engineer.

### 0. Deep behavior lens
- What real-world/app domain is this code modeling?
- What real feature requirement should not be replaced by dummy behavior?
- Why is this represented with this kind of data/syntax?
- What behavior changes when the data changes?
- What impossible states or invalid transitions should the code prevent?
- What tradeoff does the original app make, and what tradeoff should the iOS learning version make?
- What code is only declared, and what code actually executes at runtime?

### 1. Original behavior question
What behavior does this feature perform in the original Tiempo app?

### 2. Original syntax/pattern question
What Swift/SwiftUI syntax, API, architecture pattern, or framework does the original code use to create that behavior?

### 3. Engineering tradeoff question
Why might the original app be built that way? What simpler or alternative approaches keep the real feature useful?

### 4. iOS adaptation question
For the iOS rebuild, which original syntax/patterns should be brought over, and which macOS-specific or production-grade implementation details should be simplified, redesigned, or deferred?

### 5. Execution mechanics question
When the user/system event happens, what code runs first, what state/data changes, and why does the UI update?

### 6. Artifact/done question
What proves this feature is working as a useful rebuild artifact, not just a skeleton/dummy exercise?

## Current Learning Strategy
For each feature milestone:
1. Inspect relevant original Tiempo code.
2. Identify the domain being modeled, not only the syntax being used.
3. Identify the real feature requirement that should not be dummy-replaced.
4. Identify behavior + Swift/SwiftUI syntax/patterns/frameworks used.
5. Ask the deep behavior lens and six guiding question types above.
6. Define the learning boundary: required concepts, out of scope, output, stop rule.
7. Decide the iOS adaptation.
8. Fian rebuilds the core behavior manually.
9. Verify the feature/screen works, or mark it explicitly as not verified.
10. Explain execution mechanics and engineering tradeoff.
11. Move deeper-but-not-needed questions to Parking Lot.
12. Record observation in Daily Log / Concept Note / Artifact Note if worth it.

## Parking Lot Rule
Parking Lot is for questions that are interesting but not required to finish the current prototype increment.

Examples:
- compiler internals of `@State`,
- full SwiftUI diffing/rendering internals,
- advanced Combine operators before the timer/publisher behavior needs them,
- actor isolation internals before async feature behavior needs them,
- production-grade SwiftData migration before basic save/load behavior works,
- audio DSP / speech accuracy tuning before basic transcript works.

Parking Lot questions are valid, but they should not block milestone output.

## Open Rebuild Questions
- [ ] Apa core behavior dari Tiempo yang paling penting untuk iOS MVP?
- [ ] State apa yang harus ada di iOS version?
- [ ] Fitur macOS mana yang harus ditunda?
- [ ] Kapan `@State` cukup, dan kapan MVVM/basic ViewModel mulai dibutuhkan?
- [ ] Kapan audio/transcript masuk sebagai real input path tanpa membuat scope production-grade?
