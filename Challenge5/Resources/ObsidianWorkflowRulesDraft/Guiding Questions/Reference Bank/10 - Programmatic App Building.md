# Programmatic App Building

## Purpose
Memahami cara membangun app iOS sepenuhnya lewat explicit programmatic code, tanpa bergantung pada storyboard/drag-and-drop.

## Guiding Questions
- [ ] Bagaimana membangun UI tanpa storyboard?
- [ ] Bagaimana layout dibuat murni lewat code?
- [ ] Bagaimana navigation dibuat lewat code?
- [ ] Bagaimana state dan interaction dihubungkan lewat code?
- [ ] Apa yang harus ditulis eksplisit agar behavior app jelas?
- [ ] Kapan code sebaiknya dipecah ke view/function/model baru?
- [ ] Apa tanda sebuah file mulai terlalu besar?
- [ ] Bagaimana tetap architecture-neutral tapi code masih readable?

## Mini Milestone Ideas
### Milestone 1 — Static UI to programmatic behavior
Question:
Bagaimana mengubah UI slicing menjadi UI yang punya behavior?

Hands-on:
- Ambil UI sederhana.
- Tambahkan state.
- Tambahkan button/input.
- Jelaskan behavior yang terjadi.

### Milestone 2 — Split view only when needed
Question:
Kapan code perlu dipecah ke view baru tanpa langsung MVVM?

Hands-on:
- Buat view yang mulai panjang.
- Extract subview untuk readability.
- Jangan ubah data flow terlalu advanced.
