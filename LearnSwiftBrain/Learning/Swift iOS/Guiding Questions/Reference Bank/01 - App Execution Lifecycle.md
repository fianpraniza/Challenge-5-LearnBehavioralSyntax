# App Execution Lifecycle

## Purpose
Memahami bagaimana aplikasi iOS mulai berjalan dari entry point sampai view pertama tampil dan bereaksi terhadap perubahan.

## Guiding Questions
- [ ] Apa fungsi `@main` di Swift app?
- [ ] File mana yang pertama kali jadi entry point aplikasi?
- [ ] Kapan `Challenge5App` dibuat?
- [ ] Apa yang sebenarnya dilakukan `WindowGroup`?
- [ ] Kapan `ContentView()` dipanggil?
- [ ] Apakah `ContentView` adalah object yang hidup terus, atau value yang bisa dibuat ulang?
- [ ] Kapan `var body: some View` dievaluasi?
- [ ] Kenapa `body` bisa dipanggil berkali-kali?
- [ ] Apa bedanya app launch, view creation, dan view update?
- [ ] Apa yang terjadi saat app masuk background/foreground?

## Mini Milestone Ideas
### Milestone 1 — Trace the first screen
Question:
Dari mana app mulai berjalan sampai `ContentView` muncul?

Hands-on:
- Buka `Challenge5App.swift`.
- Baca `@main`, `App`, `WindowGroup`, dan `ContentView()`.
- Tambahkan komentar manual yang menjelaskan alurnya.

Evidence:
- Screenshot/file note.
- Penjelasan alur eksekusi versi Fian.

Expected Understanding:
Fian bisa menjelaskan entry point app dan hubungan `App → WindowGroup → ContentView`.

### Milestone 2 — Observe body re-evaluation
Question:
Kapan `body` dievaluasi ulang?

Hands-on:
- Buat state sederhana.
- Tambah action button.
- Amati perubahan UI setelah state berubah.

Evidence:
- Snippet kecil.
- Catatan observasi kapan UI berubah.
