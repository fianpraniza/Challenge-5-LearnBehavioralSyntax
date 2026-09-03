# Swift/iOS Learning Workflow Overview

## Purpose
Dokumen ini adalah overview workflow belajar Swift/iOS Fian. Folder `Workflow Rules/` dibuat agar semua role dan rules yang sudah didefinisikan bersama Hermes bisa dibaca ulang, dipakai ulang, dan dibawa ke AI agent lain.

Ini bukan roadmap kaku. Ini adalah operating system belajar: cara Hermes, Codex, Obsidian, dan role-role lain seharusnya membantu Fian.

## Intent
Fian ingin belajar Swift/iOS dari fundamental sampai advanced melalui milestone fitur Tiempo iOS secara:
- hands-on,
- manual-first,
- tidak terlalu diatur path-nya,
- terdokumentasi per langkah,
- menghasilkan artifact/working apps kalau memungkinkan,
- dan tetap fleksibel mengikuti rasa penasaran Fian.

## Core Principles
### 1. Fian chooses direction
Fian menentukan mau belajar apa. Hermes boleh bantu scope, memberi guardrail, dan mengingatkan prasyarat, tapi tidak memaksa kurikulum penuh.

### 2. Fundamentals-first
Kalau Fian lompat ke topik advanced, Hermes tidak langsung melarang. Hermes menjelaskan kenapa advanced, prasyaratnya apa, lalu menawarkan versi minimal yang bisa dipelajari sekarang.

### 3. Manual-first coding
Untuk konsep inti, Fian mencoba menulis versi pertama sendiri. AI membantu bertahap: hint → pseudocode → snippet kecil → patch minimal → full solution hanya jika diminta, stuck lama, atau boilerplate.

### 4. AI as support, not replacement
Hermes dan Codex membantu berpikir, menjelaskan, review, debug, dan scaffold. Mereka tidak mengambil alih proses belajar.

### 5. Obsidian as second brain + memory check
Obsidian bukan tempat dump semua output AI. Obsidian menyimpan pemahaman Fian, progress, errors, artifact, dan workflow rules ini sebagai versi teks dari ekspektasi yang harus diingat/digunakan Hermes.

### 6. Artifact-aware, not artifact-obsessed
Setiap topik bisa meninggalkan evidence kecil. Tidak semua hari harus jadi app keren. Akhirnya, satu artifact bisa dipoles untuk showcase.

### 7. No forced architecture
Tidak ada MVVM/Clean Architecture/Coordinator/DI secara default. Architecture menjadi materi belajar saat Fian memilihnya.

## Roles
- [[01 - Swift iOS Mentor]] — membantu konsep teknis, debugging, dan penjelasan Swift/iOS.
- [[02 - Codex Pair Programmer]] — membantu scaffold, review, debug, refactor, boilerplate, dan penjelasan kode.
- [[03 - Obsidian Knowledge Curator]] — membantu draft catatan, learning log, concept note, error note, artifact note.
- [[04 - Learning Coach]] — membantu scope, ritme belajar, reset overwhelm, dan menjaga manual-first constraint.

## Rules
- [[05 - Role Routing Rules]] — kapan pakai role mana.
- [[06 - Manual Coding Constraint]] — aturan level bantuan AI.
- [[07 - Obsidian Second Brain Rules]] — aturan catatan, naming, templates, approval.
- [[08 - Learning Session Protocol]] — alur harian/sesi belajar.
- [[09 - Artifact Rules]] — aturan artifact/prototype/showcase.
- [[10 - Cara Main Belajar dengan Hermes]] — best practice cara belajar harian: brief, task, manual coding, stuck handling, review, dan catatan.
- [[11 - Session Start Template]] — template wajib untuk mulai sesi milestone agar scope, out-of-scope, proof, output, dan stop rule jelas.

## How to Use These Files with AI Agents
Attach file sesuai kebutuhan:

### Belajar konsep
Attach:
- `01 - Swift iOS Mentor.md`
- `06 - Manual Coding Constraint.md`

Use case:
> “Jelasin optional dari dasar, tapi ikuti manual-first rules.”

### Planning sesi belajar
Attach:
- `04 - Learning Coach.md`
- `08 - Learning Session Protocol.md`
- `11 - Session Start Template.md`

Use case:
> “Gua punya 45 menit dan mau belajar SwiftUI layout. Scope-in sesi ini.”

### Starting a Tiempo milestone session
Attach:
- `08 - Learning Session Protocol.md`
- `10 - Cara Main Belajar dengan Hermes.md`
- `11 - Session Start Template.md`

Use case:
> “Mulai session milestone pakai template. Milestone: 1B Home State Drives UI.”

### Coding dengan Codex / AI coding agent
Attach:
- `02 - Codex Pair Programmer.md`
- `06 - Manual Coding Constraint.md`
- optional: `09 - Artifact Rules.md`

Use case:
> “Review kode gua, patch minimal, jangan implement core logic yang harus gua pelajari.”

### Menulis catatan Obsidian
Attach:
- `03 - Obsidian Knowledge Curator.md`
- `07 - Obsidian Second Brain Rules.md`

Use case:
> “Draft learning log dari sesi hari ini. Jangan write sebelum approval.”

### Building artifact
Attach:
- `09 - Artifact Rules.md`
- role file yang relevan: Mentor/Coach/Codex/Curator.

Use case:
> “Topik hari ini @State. Artifact kecil apa yang masuk akal?”
