# State and Rendering Behavior

## Purpose
Memahami bagaimana state menyimpan data yang berubah dan bagaimana perubahan state membuat SwiftUI memperbarui UI.

## Guiding Questions
- [ ] Apa itu state dari sudut pandang runtime app?
- [ ] Kenapa variable biasa tidak cukup untuk data yang berubah di UI?
- [ ] Apa yang dilakukan `@State`?
- [ ] Siapa yang sebenarnya menyimpan nilai `@State`?
- [ ] Kenapa `@State` biasanya dibuat `private`?
- [ ] Apa yang terjadi saat nilai `@State` berubah?
- [ ] Kenapa perubahan state bisa trigger render ulang?
- [ ] Apakah seluruh app render ulang atau hanya bagian tertentu?
- [ ] Apa yang terjadi pada local variable biasa saat body dievaluasi ulang?
- [ ] Kenapa state tidak hilang walaupun `body` dipanggil ulang?

## Concept Experiment Ideas
### Experiment 1 — Counter state
Question:
Apa yang terjadi saat `@State` berubah?

Hands-on:
- Buat counter sederhana.
- Button menaikkan count.
- Text membaca count.
- Jelaskan flow: tap → closure → state change → body update.

Evidence:
- Snippet.
- Screenshot.
- Execution trace versi Fian.

### Experiment 2 — Normal variable vs @State
Question:
Kenapa variable biasa tidak cukup untuk update UI?

Hands-on:
- Coba bandingkan variable biasa dengan `@State`.
- Amati compiler/error/behavior.
