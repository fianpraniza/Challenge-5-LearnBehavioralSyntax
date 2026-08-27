# Value Type Behavior

## Purpose
Memahami behavior value type di Swift, terutama `struct`, copy behavior, dan kenapa SwiftUI banyak memakai struct.

## Guiding Questions
- [ ] Struct itu value type, maksudnya apa secara perilaku?
- [ ] Apa yang terjadi saat struct di-assign ke variable baru?
- [ ] Kalau satu copy diubah, kenapa copy lain tidak ikut berubah?
- [ ] Kapan `mutating` diperlukan?
- [ ] Kenapa method dalam struct tidak boleh mengubah property tanpa `mutating`?
- [ ] Apa beda behavior `struct` dan `class`?
- [ ] Kenapa SwiftUI banyak pakai struct untuk View?
- [ ] Apa konsekuensi View sebagai value?

## Mini Milestone Ideas
### Milestone 1 — Copy a struct
Question:
Kalau struct dicopy, apakah perubahan satu variable memengaruhi variable lain?

Hands-on:
- Buat `struct User` atau `struct Habit`.
- Assign ke variable kedua.
- Ubah salah satu property.
- Amati hasilnya.

Evidence:
- Snippet.
- Output/observation.

### Milestone 2 — `mutating` method
Question:
Kenapa method struct butuh `mutating` untuk mengubah property?

Hands-on:
- Buat method yang mencoba mengubah property tanpa `mutating`.
- Catat compiler error.
- Tambahkan `mutating` dan jelaskan bedanya.
