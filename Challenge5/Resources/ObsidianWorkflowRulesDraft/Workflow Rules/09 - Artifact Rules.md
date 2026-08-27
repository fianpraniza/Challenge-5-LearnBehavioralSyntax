# Artifact Rules

## Purpose
Artifact adalah bukti belajar konkret. Bisa berupa snippet, exercise, prototype, working app, README, screenshot, demo video, atau Obsidian artifact note.

Targetnya bukan langsung bikin app keren, tapi meninggalkan evidence bahwa Fian memahami dan mencoba konsep.

## Core Principle
> Artifact mengikuti topik yang Fian pilih, bukan memaksa path tertentu.

Fian tidak harus mengikuti satu app besar dari Day 1. Kalau topik hari itu Functions, artifact bisa berupa exercise logic. Kalau topiknya SwiftUI State, artifact bisa berupa Counter App kecil.

## Artifact Levels
### Level 1 — Code snippet / exercise
Untuk fundamental awal.

Examples:
- function exercise,
- optional unwrapping,
- struct model,
- array filtering.

Evidence:
- file `.swift`,
- screenshot output,
- Obsidian daily log.

### Level 2 — Mini prototype
Untuk SwiftUI awal.

Examples:
- counter view,
- profile card,
- form validation,
- simple list,
- color/theme picker.

Evidence:
- Xcode project/file,
- screenshot simulator,
- artifact note.

### Level 3 — Small working app
Untuk beberapa konsep yang sudah nyambung.

Examples:
- todo app,
- habit tracker,
- study timer,
- flashcard app,
- mini journal app.

Evidence:
- build/run verified,
- README,
- screenshots,
- list fitur,
- manual vs AI contribution.

### Level 4 — Showcase artifact
Untuk akhir/phase advanced.

Examples:
- polished app kecil,
- portfolio README,
- demo video,
- app writeup,
- before/after reflection.

## Definition of Working
Artifact disebut working kalau:
- project/build bisa dijalankan, atau
- playground/script menghasilkan output benar, atau
- simulator/app membuka flow utama tanpa crash.

Kalau belum bisa verify:
```text
Status: implemented, not verified
Reason: belum dites di simulator / Xcode unavailable / build error belum selesai
```

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

## Codex Usage for Artifacts
Codex boleh bantu:
- scaffold awal,
- README,
- mock data,
- fix build error,
- refactor setelah jalan,
- polish ringan,
- test/helper,
- explain file structure.

Codex jangan:
- implement core learning logic dari nol,
- bikin full app lengkap tanpa Fian menulis manual,
- over-architect project,
- tambah fitur advanced tanpa alasan.

## Artifact Cadence
- Setiap sesi: minimal small evidence kalau memungkinkan.
- Setiap 3–5 hari: mini prototype / small app increment kalau masuk akal.
- Akhir 15 hari: pilih satu artifact untuk dipoles jadi showcase.

Hari yang cuma fokus konsep susah tetap valid.

## Showcase Criteria
Artifact yang mau dipamerkan minimal punya:
- nama app/prototype,
- problem/use case sederhana,
- fitur utama,
- konsep Swift/iOS yang dipraktikkan,
- screenshot/demo,
- status working,
- cara run,
- known limitations,
- next improvement.

Optional:
- README,
- short demo script,
- Obsidian writeup,
- before/after learning reflection.

## Artifact Idea Bank
### Swift basic
- Unit Converter Logic
- Simple Grade Calculator
- Fish/Shrimp Counter Logic
- Expense Splitter Logic

### Optionals/Form
- Profile Form Validator
- Login Input Validator
- Optional Data Display Card

### Arrays/Dictionaries
- Todo Data Logic
- Inventory List
- Shrimp Seed Batch Tracker
- Favorite Fish Species List

### SwiftUI State
- Counter App
- Mood Tracker
- Study Timer Start/Stop
- Feeding Schedule Toggle

### Lists/Navigation
- Todo App
- Habit Tracker
- Aquarium/Fish Log
- Academy Task Tracker

### Persistence
- Mini Journal
- Habit Tracker with local storage
- Learning Log App

### API
- Weather App
- Fish Species Info Fetcher
- Quote/Fact App

### Final Showcase Possibilities
- Study Sprint Tracker
- Habit Tracker
- Shrimp Seed Counter companion app mockup
- Academy Challenge Tracker
- Personal Learning Journal App

## Done Criteria
### Level 1 done
- File/snippet exists.
- Runs or logic is explained.
- Concept practiced is clear.

### Level 2 done
- UI appears.
- Basic interaction works.
- Screenshot or note exists.

### Level 3 done
- Main flow works.
- Build/run verified.
- Artifact note exists.
- Manual vs AI contribution clear.

### Level 4 done
- Polished enough to show.
- README/writeup.
- Screenshot/demo.
- Known limitations.
- Next improvement.

## Anti-patterns
Artifact workflow jangan:
- Memaksa app besar dari awal.
- Membuat Fian copy-paste full Codex app.
- Mengorbankan pemahaman demi tampilan keren.
- Menunggu sempurna baru dicatat.
- Klaim working tanpa build/run.
- Membuat semua artifact terlalu formal.
- Membuat repo/project terlalu banyak sampai bingung.
- Lompat ke architecture advanced demi portfolio.
