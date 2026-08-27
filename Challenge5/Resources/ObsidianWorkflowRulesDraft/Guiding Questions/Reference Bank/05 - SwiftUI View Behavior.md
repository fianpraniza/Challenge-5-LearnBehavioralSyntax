# SwiftUI View Behavior

## Purpose
Memahami view SwiftUI sebagai deklarasi UI berbasis value, bukan sekadar hasil slicing tampilan.

## Guiding Questions
- [ ] View di SwiftUI itu data, object, atau instruksi UI?
- [ ] Apa sebenarnya isi `body`?
- [ ] Kapan modifier seperti `.padding()` dieksekusi?
- [ ] Apakah modifier mengubah view lama atau membuat view baru?
- [ ] Kenapa urutan modifier bisa memengaruhi hasil?
- [ ] Apa yang terjadi saat `Text("Hello")` dibuat?
- [ ] Apa bedanya deklarasi UI dan imperative UI?
- [ ] Kenapa SwiftUI disebut declarative?
- [ ] Bagaimana SwiftUI tahu bagian mana yang perlu di-update?
- [ ] Apa peran identity dalam SwiftUI view?

## Mini Milestone Ideas
### Milestone 1 — Modifier order experiment
Question:
Kenapa urutan modifier bisa mengubah tampilan?

Hands-on:
- Buat `Text` dengan `.padding()` dan `.background()`.
- Tukar urutannya.
- Amati hasil visual.

Evidence:
- Screenshot.
- Penjelasan urutan modifier.

### Milestone 2 — body as description
Question:
Apakah `body` menyimpan UI final atau mendeskripsikan UI?

Hands-on:
- Baca `body` di `ContentView`.
- Ubah deklarasi view.
- Catat bagaimana perubahan code mengubah view tree.
