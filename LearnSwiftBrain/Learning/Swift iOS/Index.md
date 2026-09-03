# Swift/iOS Learning

## Intent
Belajar Swift/iOS dari fundamental menuju advanced secara hands-on, manual-first, dan artifact-aware dengan bantuan Hermes, Codex, dan Obsidian.

Obsidian ini berfungsi sebagai:
- second brain untuk catatan belajar Swift/iOS,
- tempat ngecek ulang workflow/rules yang sudah didefinisikan,
- backup human-readable dari cara Hermes seharusnya membantu Fian,
- evidence progress belajar dan artifact/working apps.

## Current Focus
Functional feature milestone path for Tiempo iOS Rebuild.

Fian is learning Swift/iOS by rebuilding Tiempo iOS per feature, not by following a rigid day-by-day curriculum. Each milestone should produce a useful working feature/screen and include source-code reading from the original Tiempo app.

Current path:
```text
Phase 1 — App Entry and Practice Flow
1. Home Feature and State/Action Modeling
2. Practice Flow Navigation/Callback

Phase 2 — Real Practice Session
3. Practice Session ViewModel + Timer/Controls
4. Audio Recording + Speech Transcript

Phase 3 — Result and Feedback
5. Result Model + WPM/Filler From Transcript
6. Recap Screen

Phase 4 — Saved Practice and Robust MVP
7. SwiftData History/Persistence
8. Permissions/Error States
9. Polish Showcase MVP
```

## Core Workflow
```text
Start → Scope → Learn → Manual Code → Stuck Handling → Review/Debug → Reflect → Optional Obsidian Draft
```

## Main Principles
- Fian memilih topik belajar; Hermes tidak memaksakan path terlalu kaku.
- Functional-basic: basic berarti minimum professional foundation required for real app behavior, bukan toy/simple-only.
- Manual-first coding: Fian menulis core learning code sendiri.
- Codex dipakai sebagai pair programmer, bukan pengganti belajar.
- Obsidian approval-first: tidak ada write/edit tanpa approval target, action, dan content.
- Artifact mengikuti functional Tiempo prototype; jangan menyederhanakan sampai core product value hilang.
- MVVM, Combine, concurrency, SwiftData, Speech/AVFoundation, dan permissions boleh menjadi basic jika fitur real membutuhkannya.
- No forced Clean Architecture / complex DI di awal. Architecture dipakai ketika behavior menuntut, bukan untuk gaya-gayaan.

## Workflow Rules
- [[Workflow Rules/00 - Overview]]
- [[Workflow Rules/01 - Swift iOS Mentor]]
- [[Workflow Rules/02 - Codex Pair Programmer]]
- [[Workflow Rules/03 - Obsidian Knowledge Curator]]
- [[Workflow Rules/04 - Learning Coach]]
- [[Workflow Rules/05 - Role Routing Rules]]
- [[Workflow Rules/06 - Manual Coding Constraint]]
- [[Workflow Rules/07 - Obsidian Second Brain Rules]]
- [[Workflow Rules/08 - Learning Session Protocol]]
- [[Workflow Rules/09 - Artifact Rules]]
- [[Workflow Rules/10 - Cara Main Belajar dengan Hermes]]
- [[Workflow Rules/11 - Session Start Template]]
- [[Workflow Rules/12 - Commit Message Convention]]

## Guiding Questions
- [[Guiding Questions/00 - Guiding Questions Index]]

Guiding Questions berisi milestone tracker dan pertanyaan eksplorasi untuk memahami execution mechanics Swift/iOS: bagaimana kode dieksekusi, state berubah, UI update, framework/system event masuk ke app, dan app berjalan dari awal sampai akhir.

## Learning Areas
### Daily Logs
Catatan sesi/hari belajar. Lihat folder [[Daily Logs]].

### Concepts
Catatan konsep reusable seperti Optionals, Functions, SwiftUI State, Binding, MVVM, Combine, concurrency, SwiftData, Speech/AVFoundation. Lihat folder [[Concepts]].

### Errors & Fixes
Catatan error yang worth saving. Lihat folder [[Errors & Fixes]].

### Artifacts
Catatan app/prototype/showcase. Lihat folder [[Artifacts]].

## Open Questions
- Original Tiempo syntax/pattern apa saja yang perlu dibawa ke iOS, dan mana yang macOS-only?
- User journey functional Tiempo iOS seperti apa dari Home sampai Recap/History?
- Kapan setiap professional-basic concept masuk karena fitur membutuhkannya?

## Next Tiny Step
- Finalize user journey Tiempo iOS, lalu mulai/lanjut milestone dengan Session Start Template.
