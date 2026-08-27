# Debugging Mechanics

## Purpose
Memahami error bukan hanya sebagai sesuatu yang harus hilang, tapi sebagai sinyal tentang mekanika compile-time/runtime.

## Guiding Questions
- [ ] Error ini muncul di compile-time atau runtime?
- [ ] Compiler sebenarnya protes soal apa?
- [ ] Apakah error berasal dari type mismatch, scope, optional, atau lifecycle?
- [ ] Nilai apa yang gua expect?
- [ ] Nilai apa yang benar-benar terjadi?
- [ ] Baris mana yang pertama kali menyebabkan masalah?
- [ ] Apa minimal change untuk membuktikan hipotesis?
- [ ] Kalau fix berhasil, kenapa berhasil?

## Mini Milestone Ideas
### Milestone 1 — Compile-time error classification
Question:
Compiler sedang mencegah bug apa?

Hands-on:
- Ambil satu error Swift.
- Klasifikasikan: type/scope/optional/mutability.
- Tulis fix minimal.

### Milestone 2 — Debug hypothesis
Question:
Bagaimana membuktikan dugaan bug dengan perubahan minimal?

Hands-on:
- Tulis expected vs actual.
- Ubah satu hal kecil.
- Amati hasil.
- Catat kenapa fix bekerja.
