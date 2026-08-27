# Swift Syntax Mechanics

## Purpose
Memahami efek sintaks Swift saat compile-time dan runtime, bukan hanya definisinya.

## Guiding Questions
- [ ] Apa bedanya `let` dan `var` di compile-time dan runtime?
- [ ] Kalau `let` dipakai pada struct, apa yang tidak boleh berubah?
- [ ] Kalau `var` berisi struct, perubahan property terjadi gimana?
- [ ] Kapan type inference terjadi?
- [ ] Apa yang dilakukan compiler saat kita tidak menulis tipe eksplisit?
- [ ] Apa beda value assignment dan reference sharing?
- [ ] Apa yang terjadi ketika function dipanggil?
- [ ] Parameter function dikirim sebagai apa?
- [ ] Return value mengalir ke mana?
- [ ] Apa yang terjadi kalau function tidak punya return value?
- [ ] Kapan closure dibuat dan kapan closure dieksekusi?
- [ ] Apa bedanya menulis closure dengan menjalankan closure?

## Mini Milestone Ideas
### Milestone 1 — `let` vs `var` behavior
Question:
Apa efek `let` dan `var` selain “konstan vs bisa berubah”?

Hands-on:
- Buat beberapa variable `let` dan `var`.
- Coba ubah nilainya.
- Catat error compile-time yang muncul.

Evidence:
- Snippet Swift.
- Error message.
- Penjelasan kapan compiler mencegah perubahan.

### Milestone 2 — Function execution flow
Question:
Apa yang terjadi saat function dipanggil dan return value dipakai?

Hands-on:
- Buat function sederhana dengan parameter dan return.
- Panggil function dari beberapa tempat.
- Catat value masuk dan keluar.

Expected Understanding:
Fian bisa menjelaskan input → process → return → caller.
