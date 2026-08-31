# Binding and Data Flow

## Purpose
Memahami bagaimana data mengalir antar view, siapa pemilik data, dan bagaimana child view bisa mengubah data parent melalui binding.

## Guiding Questions
- [ ] Apa bedanya `@State` dan `@Binding`?
- [ ] Siapa yang punya data asli?
- [ ] Siapa yang cuma meminjam akses ke data?
- [ ] Kenapa child view butuh binding untuk mengubah data parent?
- [ ] Apa yang terjadi saat child mengubah binding?
- [ ] Kenapa `$variable` dibutuhkan?
- [ ] Apa bedanya `variable` dan `$variable`?
- [ ] Kapan data flow satu arah dan kapan dua arah?
- [ ] Bagaimana mencegah data flow jadi berantakan?

## Concept Experiment Ideas
### Experiment 1 — Parent owns state, child edits via binding
Question:
Bagaimana child view mengubah data milik parent?

Hands-on:
- Parent punya `@State`.
- Child menerima `@Binding`.
- Child punya Button/TextField yang mengubah binding.
- Amati parent UI ikut update.

Evidence:
- Snippet parent/child.
- Execution trace data flow.

### Experiment 2 — `$value` vs `value`
Question:
Kenapa beberapa view butuh `$name`, bukan `name`?

Hands-on:
- Pakai `Text(name)`.
- Pakai `TextField("Name", text: $name)`.
- Jelaskan read-only value vs binding access.
