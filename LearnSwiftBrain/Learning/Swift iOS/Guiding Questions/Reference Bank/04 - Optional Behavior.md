# Optional Behavior

## Purpose
Memahami optional sebagai mekanisme Swift untuk menangani value yang bisa ada atau tidak ada, dan bagaimana compiler/runtime menjaga safety.

## Guiding Questions
- [ ] Optional sebenarnya membungkus value seperti apa?
- [ ] Apa bedanya `String` dan `String?`?
- [ ] Kenapa Swift memaksa optional di-unwrap?
- [ ] Apa yang terjadi saat optional bernilai `nil`?
- [ ] Apa beda `if let`, `guard let`, `??`, dan force unwrap?
- [ ] Kapan optional check terjadi: compile-time atau runtime?
- [ ] Kenapa force unwrap bisa crash?
- [ ] Bagaimana optional membantu mencegah crash?
- [ ] Apa bedanya empty string `""` dan `nil`?

## Mini Milestone Ideas
### Milestone 1 — `String` vs `String?`
Question:
Kenapa `String?` tidak bisa langsung dipakai seperti `String`?

Hands-on:
- Buat variable `String?`.
- Coba tampilkan tanpa unwrap.
- Gunakan `if let`, `guard let`, dan `??`.

Evidence:
- Snippet.
- Error/success observation.

### Milestone 2 — nil vs empty string
Question:
Apa bedanya data kosong dan data tidak ada?

Hands-on:
- Buat `name: String? = nil`.
- Buat `name: String = ""`.
- Buat logic display placeholder.

Expected Understanding:
Fian bisa menjelaskan `nil` sebagai absence of value, bukan string kosong.
