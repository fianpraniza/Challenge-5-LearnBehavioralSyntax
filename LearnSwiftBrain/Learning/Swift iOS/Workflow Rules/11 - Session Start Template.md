# Session Start Template

## Purpose
Template ini dipakai setiap kali Fian mulai sesi milestone Tiempo iOS, supaya AI/Hermes langsung mengarahkan belajar dengan scope yang jelas, tidak melebar, dan tetap menghasilkan progress prototype.

Core rule:

```text
Functional prototype drives the learning. Learning doesn't delay the prototype.
Pelajari konsep hanya sedalam yang diperlukan untuk explain, predict, dan rebuild behavior milestone.
Basic = fondasi minimum yang dibutuhkan untuk fitur real jalan, bukan versi toy/simple-only.
```

## How to Use
Saat mulai sesi baru, Fian cukup bilang:

```text
Mulai session milestone pakai template. Milestone: [nama milestone].
```

Hermes/AI harus mengisi template ini dulu sebelum masuk coding atau penjelasan panjang.

## Session Start — Tiempo iOS Milestone

```text
Milestone:
Sub-scope hari ini:

Behavior Target:
Apa behavior kecil yang mau dibuat/pahami hari ini?

Real Feature Requirement:
Core value apa dari app real yang tidak boleh di-dummy-kan?

Original Tiempo Source:
File original yang perlu dicek:

Required Concepts:
Konsep minimum yang dibutuhkan:

Must Understand:
Hari ini cukup kalau Fian bisa jelasin:

Manual Task:
Yang Fian tulis manual:

AI/Codex Allowed:
Bantuan AI boleh di bagian:

Out of Scope:
Yang sengaja TIDAK dibahas hari ini:

Proof:
Fian dianggap paham kalau bisa:
1. Explain:
2. Predict:
3. Rebuild:

Output:
Increment prototype yang harus jadi:

Stop Rule:
Berhenti/nggak ngulik lebih dalam kalau:

Parking Lot:
Pertanyaan menarik tapi ditunda:
-
```

## Example — Milestone 1B Home State Drives UI

```text
Milestone:
Milestone 1 — Home Feature Rebuild

Sub-scope hari ini:
Milestone 1B — Home State Drives UI

Behavior Target:
Home title, subtitle, dan button berubah berdasarkan PracticeStatus.

Real Feature Requirement:
Home harus terasa seperti entry menuju speaking-practice app, bukan UI placeholder/state demo.

Original Tiempo Source:
- HomeViewState.swift
- HomeStatusContentView.swift

Required Concepts:
- enum
- @State
- computed property
- switch
- Text/Button membaca state

Must Understand:
Fian cukup paham kalau bisa jelasin:
practiceStatus punya satu nilai aktif → computed property menghasilkan title/subtitle/button → body membaca value itu → button tap mengubah state → body dievaluasi ulang.

Manual Task:
Fian tulis manual:
- subtitle computed property
- buttonTitle computed property kalau belum ada
- Text(practiceStatus.subtitle)
- state change dari button

AI/Codex Allowed:
- jelasin original Tiempo source
- hint/pseudocode
- review error
- scaffold UI shell kalau bukan core logic

Out of Scope:
- SwiftUI rendering internals
- compiler detail property wrapper
- ViewModel
- router/navigation
- animation/polish

Proof:
Fian dianggap paham kalau bisa:
1. Explain: alur state → UI update.
2. Predict: kalau case `.paused` title/subtitle/button diganti, UI mana yang berubah.
3. Rebuild: bikin ulang pattern enum + computed property + Button action tanpa copy-paste.

Output:
Home screen menampilkan title/subtitle/button yang berubah sesuai state.

Stop Rule:
Kalau output working dan Fian bisa explain/predict/rebuild, stop. Pertanyaan deep lain masuk Parking Lot.

Parking Lot:
- Kenapa SwiftUI tahu body harus re-run secara internal?
- Kapan harus pindah ke ViewModel?
```

## AI Guardrail
Jika sesi mulai melebar, Hermes/AI harus bilang singkat:

```text
Ini menarik, tapi out of scope untuk milestone sekarang. Kita taruh Parking Lot dulu supaya prototype tetap maju.
```

AI tidak boleh mengubah sesi milestone menjadi pembahasan teori panjang kecuali Fian eksplisit memilih concept-deep-dive mode.

AI juga tidak boleh mengganti core value fitur menjadi dummy/manual version tanpa menyebut itu temporary scaffold dan tanpa approval Fian.
