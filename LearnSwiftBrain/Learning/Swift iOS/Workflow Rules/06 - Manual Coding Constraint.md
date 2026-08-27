# Manual Coding Constraint

## Purpose
Constraint ini menjaga agar Fian tetap membangun muscle memory Swift/iOS. AI membantu belajar, tapi Fian tetap menulis core learning code sendiri.

## Core Principle
Untuk konsep inti:
> Fian harus mencoba menulis versi pertama secara manual sebelum AI memberi solusi penuh.

Manual-first bukan AI-forbidden. Tujuannya bukan bikin Fian stuck, tapi memastikan pemahaman terbentuk.

## Help Escalation Levels
### Level 0 — No code, only concept
AI hanya memberi penjelasan, analogi, mental model, atau langkah berpikir.

Example:
```text
Data yang berubah taruh di @State. Button mengubah nilai itu. Text membaca nilai terbaru.
```

### Level 1 — Hint kecil
AI memberi clue ringan.

Example:
```text
Coba cek: variable yang mau berubah sudah pakai @State belum?
```

### Level 2 — Pseudocode / structure
AI memberi urutan langkah tanpa full syntax.

Example:
```text
1. Buat state untuk count.
2. Tampilkan count di Text.
3. Button menaikkan count.
4. Button reset mengubah count ke 0.
```

### Level 3 — Minimal snippet
AI memberi potongan kode kecil untuk blocker syntax.

Example:
```swift
@State private var count = 0
```

### Level 4 — Patch minimal
AI memperbaiki kode Fian dengan perubahan sekecil mungkin.

Example:
```swift
// before
let count = 0

// after
@State private var count = 0
```

### Level 5 — Full solution
Hanya jika:
- Fian eksplisit minta,
- Fian sudah stuck lama,
- problem bukan konsep inti tapi boilerplate,
- perlu reference setelah Fian mencoba,
- atau untuk membandingkan versi Fian vs versi clean.

Default warning:
```text
Oke, gua kasih versi full sebagai referensi. Setelah ini coba tulis ulang manual tanpa copy-paste biar nempel.
```

## Stuck Timing
Untuk latihan kecil:
- 0–5 menit: Fian coba sendiri.
- 5–10 menit: hint kecil.
- 10–20 menit: pseudocode/snippet kecil.
- 20+ menit: patch/solusi boleh, tetap dijelaskan.

Untuk debugging:
- Error konsep kecil → Mentor dulu.
- Error Xcode/project config → Codex Debug Mode boleh cepat masuk.
- Stuck >20–30 menit → jangan maksa sendiri.

## When AI Can Give Code Directly
AI boleh kasih kode langsung untuk:
- boilerplate,
- mock/preview data,
- README,
- project setup,
- bukan konsep inti hari itu,
- reference example kecil,
- debug fix minimal,
- Fian eksplisit minta full code.

## When AI Should Not Give Full Code
Jangan full code kalau:
- Fian sedang belajar syntax dasar,
- Fian belum mencoba sama sekali,
- itu logic inti latihan,
- solusi penuh membuat Fian copy-paste tanpa paham.

## Codex Rule
Codex masuk setelah ada:
- kode awal dari Fian,
- error message,
- setup/scaffold boilerplate,
- review/refactor need,
- Fian minta scaffold minimal.

## Copy-paste Rule
Untuk konsep inti:
1. Baca solusi.
2. Pahami.
3. Tutup/abaikan sebentar.
4. Tulis ulang manual.
5. Compare.

Untuk boilerplate, copy-paste boleh.

## Self-check Before Full Solution
Optional sebelum minta full solution:
```text
Yang gua coba:
Yang gua expect:
Yang terjadi:
Yang gua curigai:
```

## Anti-patterns
Constraint ini jangan berubah jadi:
- Fian dibiarkan stuck terlalu lama.
- AI menolak bantu padahal sudah perlu.
- Semua harus manual termasuk boilerplate membosankan.
- Belajar jadi terlalu lambat karena perfeksionis.
- Fian merasa bersalah pakai AI.
