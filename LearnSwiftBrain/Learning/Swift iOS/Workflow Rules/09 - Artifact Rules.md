# Artifact Rules

## Purpose
Artifact adalah bukti belajar konkret dari proses rebuild **Tiempo iOS**.

Dalam workflow baru ini, artifact bukan kumpulan exercise random. Artifact harus lahir dari:

```text
Original Tiempo feature/code → syntax/pattern study → iOS adaptation → manual-first rebuild → working feature artifact → mechanics explanation
```

Targetnya bukan langsung bikin app keren atau full parity dengan macOS app. Targetnya adalah meninggalkan evidence bahwa Fian memahami behavior code dan bisa membangun ulang bagian app secara manual/programmatic.

## Core Principle
> Artifact mengikuti proses rebuild Tiempo iOS, bukan memaksa app unrelated atau checklist Swift general.

Guiding questions dan artifact harus app-oriented. Reference Bank boleh dipakai saat perlu memahami konsep pendukung, tapi artifact utama tetap terkait rebuild app.

## Rebuild Artifact Levels

### Level 1 — Behavior snippet / experiment
Untuk menjawab satu guiding question kecil dari rebuild.

Examples:
- enum `HomePracticeState` dengan computed `title`/`buttonTitle`,
- button action yang mengubah state,
- simple timer value yang update UI,
- function transform `PracticeResult → RecapSummary`.

Evidence:
- Swift snippet/file,
- observation note,
- screenshot kalau UI berubah,
- explanation: code → behavior.

### Level 2 — Feature milestone prototype
Untuk satu feature milestone yang bisa dicoba di iOS.

Examples:
- Home screen changes based on state,
- Start Practice button changes app state,
- Practice timer screen,
- Pause/resume/stop flow,
- simple recap screen.

Evidence:
- Xcode app screen,
- manual test checklist,
- short execution trace,
- link to active guiding questions.

### Level 3 — Small working iOS feature flow
Gabungan beberapa feature milestones menjadi app flow kecil.

Example MVP flow:
```text
Home → Practice Timer → Stop → Recap
```

Evidence:
- build/run verified,
- main flow works without crash,
- README or artifact note,
- manual vs AI contribution,
- known limitations.

### Level 4 — Showcase rebuild artifact
Versi yang dipoles untuk dipamerkan.

Includes:
- app name/use case,
- screenshots/demo,
- feature list,
- explanation of behavior/code mechanics,
- what was rebuilt from the macOS app,
- what was intentionally deferred,
- how to run,
- future improvements.

## Definition of Working
Artifact disebut working kalau:
- project/build bisa dijalankan, atau
- simulator/app membuka flow utama tanpa crash, atau
- feature milestone menghasilkan output/visual response yang sesuai.

Kalau belum bisa verify:
```text
Status: implemented, not verified
Reason: belum dites di simulator / Xcode unavailable / build error belum selesai
```

Do not claim working without verification.

## Manual Contribution Rule
Setiap artifact harus jelas:

```markdown
## What I built manually
- ...

## AI help used
- Mentor explained ...
- Codex scaffolded/debugged/refactored ...
- Curator formatted notes ...
```

Ini penting karena artifact adalah evidence belajar, bukan sekadar output AI.

## Codex Usage for Rebuild Artifacts
Codex boleh bantu:
- review kode manual Fian,
- debug build/error,
- scaffold minimal dengan TODO,
- refactor setelah behavior bekerja,
- README/demo notes,
- helper/test ringan,
- explain file structure.

Codex jangan:
- implement core feature milestone dari nol tanpa diminta,
- bikin full Tiempo iOS app lengkap,
- copy architecture macOS app mentah-mentah,
- over-architect dengan MVVM/router/DI sebelum Fian memilih itu sebagai topik,
- menambahkan fitur macOS-specific ke MVP.

## Artifact Cadence
- Setiap sesi: idealnya ada small evidence dari active rebuild question.
- Setiap feature milestone: arahkan ke satu working feature/screen yang bisa diverifikasi.
- Setelah core flow bekerja: pilih satu working flow untuk dipoles jadi showcase.

Hari yang hanya fokus memahami source app atau execution mechanics tetap valid, asal ada observation/learning note.

Each feature milestone should aim to leave a working feature/screen, even if small. A session may end with partial progress, but the milestone is not complete until the feature behavior is working/verified or explicitly marked not verified.

A skeleton alone is not a completed rebuild artifact unless the milestone goal was project setup/boilerplate.

## Main Rebuild Artifact Direction
Working title:
```text
Tiempo iOS Rebuild
```

Target MVP:
```text
Home screen
→ Start Practice
→ Timer runs
→ Pause/Resume/Stop
→ Recap screen
```

Later additions if ready:
- manual/simulated WPM,
- speech recognition,
- audio recording,
- history persistence,
- SwiftData,
- better recap UI.

Deferred:
- Keynote automation,
- AppleScript / Apple Events,
- AppKit floating overlay,
- macOS window management,
- full speech/audio pipeline from day one,
- complex SwiftData migration.

## Artifact Note Template
```markdown
# Artifact - [Feature Milestone/App Name]

## Status
Not started / In progress / Working / Polished / Not verified

## Source Behavior
Original repo files / behavior being rebuilt:
-

## iOS Rebuild Behavior
-

## Guiding Questions Used
- [[...]]

## What I Built Manually
-

## AI Help Used
-

## Execution Mechanics Learned
-

## Working Behaviors
-

## How to Run / Verify
-

## Screenshots / Demo
-

## Known Limitations
-

## Next Improvement
-
```

## Showcase Criteria
A showcase rebuild artifact should answer:
- What original macOS behavior inspired this?
- What did Fian rebuild in iOS?
- What user action changes what state/data?
- How does UI update from that state/data?
- What was built manually?
- What did AI help with?
- What is working and verified?
- What is intentionally deferred?

## Done Criteria
### Level 1 done
- One behavior question answered.
- Code/snippet exists.
- Observation is written.

### Level 2 done
- One feature milestone works visually or behaviorally.
- Manual test checklist exists.
- Execution trace is explainable.

### Level 3 done
- Main mini flow works in simulator/device.
- Build/run verified.
- Artifact note exists.
- Manual vs AI contribution clear.

### Level 4 done
- Polished enough to show.
- README/writeup/screenshots/demo.
- Execution mechanics can be explained.
- Known limitations and deferred features are clear.

## Anti-patterns
Artifact workflow jangan:
- balik jadi exercise random yang tidak nyambung ke Tiempo iOS,
- memaksa full macOS parity,
- copy-paste full Codex app,
- mengorbankan pemahaman demi tampilan keren,
- klaim working tanpa build/run,
- membuat semua artifact terlalu formal,
- lompat ke architecture advanced demi portfolio,
- memasukkan Keynote automation/floating overlay terlalu awal.
