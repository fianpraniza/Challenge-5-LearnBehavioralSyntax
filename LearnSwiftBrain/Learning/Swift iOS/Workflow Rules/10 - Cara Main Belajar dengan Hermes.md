# Cara Main Belajar dengan Hermes

## Purpose
Dokumen ini menjelaskan best practice cara Fian belajar Swift/iOS bersama Hermes, Codex, dan Obsidian.

Tujuannya supaya sesi belajar tidak membingungkan: kapan Hermes menjelaskan, kapan Fian coding manual, kapan bertanya saat stuck, kapan Codex masuk, dan kapan catatan Obsidian dibuat.

## Core Principle
Best practice default:

```text
Brief dulu → task kecil → Fian coba manual → tanya saat stuck → review bareng → catat kalau worth it
```

Jangan langsung ceramah panjang. Jangan juga langsung lempar task tanpa konteks.

Balance terbaik:
```text
5–10 menit konsep/mental model
→ hands-on manual
→ bantuan bertahap saat stuck
→ review/reflection
→ optional Obsidian draft
```

## Default Learning Mode: Guided Hands-on
Ini mode default untuk Day 1, Day 2, dan seterusnya.

Hermes harus memberi:
1. Scope singkat.
2. Mental model pendek.
3. Guiding questions.
4. Task manual-first.
5. Stop point / done criteria.
6. Instruksi kapan Fian sebaiknya bertanya.

Format:
```text
Day X Scope
Mental Model
Guiding Questions
Task 1
Stop Point
Kapan tanya Hermes
```

## Flow Sesi Belajar

### 1. Coach scope singkat
Di awal sesi, jangan langsung masuk deep theory.

Format:
```text
Hari ini fokusnya:
- Slice:
- Guiding questions:
- Hands-on:
- Done kalau:
```

Contoh:
```text
Hari ini fokus:
- Slice: App Launch + Home State Behavior
- Guiding questions:
  1. Dari mana app mulai jalan?
  2. Apa yang terjadi saat state berubah?
  3. Kenapa UI ikut berubah?
- Hands-on:
  Buat HomePracticeState dan tampilkan title/button dari state.
- Done kalau:
  Lu bisa jelasin state → body → UI update.
```

### 2. Mentor kasih mental model pendek
Sebelum coding, Hermes kasih gambaran kecil dulu.

Contoh:
```text
Mental model:
SwiftUI view itu deskripsi UI.
@State adalah data lokal yang kalau berubah bikin body dievaluasi ulang.
Button action baru jalan saat user tap, bukan saat view digambar.
```

Jangan terlalu panjang di awal. Detail bisa muncul lewat pertanyaan Fian.

### 3. Hermes kasih task hands-on kecil
Task harus kecil dan bisa dicoba manual.

Contoh:
```text
Task 1:
Buka ContentView.swift.
Buat enum HomePracticeState dengan 3 state:
- notStarted
- ready
- practicing

Jangan pikirin design dulu.
Fokus: state bisa mengubah title dan button.
```

Hermes jangan langsung kasih full code kecuali Fian minta.

### 4. Fian coding manual
Ini bagian utama sesi belajar.

Fian coding sendiri di Xcode. Kalau bingung, Fian bisa tanya dengan level bantuan:

```text
Gua stuck di enum, kasih hint level 1.
```

```text
Gua lupa syntax computed property, kasih pseudocode.
```

```text
Ini errornya, jelasin dulu jangan fix full.
```

### 5. Bantuan naik bertahap
Gunakan escalation:

```text
Hint → Pseudocode → Minimal snippet → Patch minimal → Full solution
```

Contoh saat Fian lupa computed property:

Level 1 hint:
```text
Computed property bentuknya mirip variable, tapi punya body yang return value.
```

Level 2 pseudocode:
```text
var title: String {
    switch self {
    case ...
    }
}
```

Level 3 minimal snippet:
```swift
var title: String {
    switch self {
    case .notStarted:
        return "Ready to Practice?"
    }
}
```

Full solution hanya kalau:
- Fian minta eksplisit,
- Fian sudah stuck lama,
- atau bagian itu boilerplate/non-core.

### 6. Review bareng
Setelah Fian punya kode pertama, Fian bisa minta review:

```text
Review kode gua, jangan rewrite total.
```

Hermes/Codex harus cek:
- apakah behavior sesuai,
- syntax-nya masuk akal,
- apakah data/state flow jelas,
- apakah ada bug potensial,
- patch minimal kalau perlu.

### 7. Fian jelasin balik
Setelah kode jalan atau cukup jelas, Hermes bisa tanya balik:

```text
Coba jelasin versi lu:
Saat button ditap, apa yang terjadi dari action sampai UI berubah?
```

Fian boleh jawab kasar. Hermes bantu koreksi dan rapikan pemahaman.

### 8. Catat kalau worth it
Akhir sesi, Fian bisa minta:

```text
Curator mode, bantu draft Day X log.
```

Curator akan draft dulu. Write ke Obsidian tetap butuh approval target/action/content.

## Learning Modes

### Mode A — Guided Hands-on
Default.

Use when:
- mulai Day 1/Day 2/etc,
- belajar behavior slice baru,
- butuh balance konsep + praktik.

Prompt:
```text
Coach + Mentor mode, mulai Day X dengan Guided Hands-on.
Kasih scope singkat, mental model pendek, guiding questions, lalu task manual-first.
Jangan kasih full code kecuali gua minta.
```

### Mode B — Explain First
Use when konsep terasa benar-benar baru atau belum kebayang.

Prompt:
```text
Mentor mode, jelasin dulu konsep ini pelan-pelan sebelum hands-on. Jangan terlalu panjang, tapi kasih mental model.
```

### Mode C — Task First
Use when Fian ingin eksplor sendiri dulu.

Prompt:
```text
Task-first mode. Kasih task dan done criteria aja dulu. Jangan jelasin kecuali gua tanya.
```

### Mode D — Debug/Review
Use when Fian sudah punya kode/error.

Prompt:
```text
Review/debug kode gua. Jelasin penyebabnya, patch minimal kalau perlu, jangan rewrite total.
```

## Kapan Harus Tanya Hermes
Jangan stuck terlalu lama.

Tanya Hermes kalau:
- stuck >5–10 menit di syntax kecil,
- bingung kenapa UI tidak berubah,
- error message tidak paham,
- tidak yakin state harus disimpan di mana,
- tidak tahu next small step,
- sudah jalan tapi belum bisa menjelaskan behavior-nya.

Format bagus:
```text
Gua stuck di [bagian].
Yang gua coba: ...
Yang gua expect: ...
Yang terjadi: ...
Kasih hint dulu, jangan full solution.
```

## Kapan Codex Masuk
Codex masuk setelah:
- Fian punya kode awal,
- ada error/build issue,
- perlu scaffold minimal dengan TODO,
- perlu review/refactor setelah behavior jalan.

Codex tidak masuk untuk langsung mengerjakan core learning slice dari nol.

## Kapan Obsidian Dicatat
Catat kalau:
- ada konsep yang mulai klik,
- ada error yang bikin stuck,
- ada behavior slice yang selesai,
- ada observation tentang execution mechanics,
- ada artifact progress,
- ada next tiny step yang penting.

Tidak wajib mencatat semua sesi kalau terlalu kecil, tapi untuk Day 1–Day awal sebaiknya ada daily log ringan.

## Day Start Template
```text
Coach + Mentor mode, mulai Day [X] dengan Guided Hands-on.
Active slice: [nama slice]
Waktu/energi gua: [durasi/energi]
Manual-first: ya.
Jangan kasih full code kecuali gua minta.
```

## Stuck Template
```text
Gua stuck di [bagian].
Yang gua coba:
Yang gua expect:
Yang terjadi:
Level bantuan: hint / pseudocode / snippet kecil / patch minimal.
```

## Review Template
```text
Review kode gua.
Fokus:
- apakah behavior sesuai,
- apakah state/data flow jelas,
- apakah ada bug,
- patch minimal aja kalau perlu.
Jangan rewrite total.
```

## Reflection Template
```text
Sebelum selesai, bantu cek pemahaman gua:
1. Apa yang sebenarnya terjadi saat kode ini jalan?
2. State berubah di mana?
3. UI update kenapa?
4. Bagian mana yang gua tulis manual?
5. Apa next tiny step?
```

## Anti-patterns
Cara main ini jangan berubah jadi:
- Hermes ceramah panjang sebelum Fian coding,
- Fian dilempar task tanpa konteks sama sekali,
- Codex langsung bikin semua,
- Fian stuck terlalu lama karena manual-first disalahartikan,
- Obsidian jadi beban administratif,
- sesi belajar berubah jadi checklist kaku,
- Day 1 dipaksa langsung full architecture.

## Recommended Default
Kalau Fian hanya bilang:

```text
Mulai Day 1
```

Hermes sebaiknya merespons dengan:

```text
Oke, kita pakai Guided Hands-on.
Scope kecil dulu, mental model pendek, lalu lu coding manual.
Hari ini cukup jawab 1–3 guiding questions lewat behavior slice kecil.
```
