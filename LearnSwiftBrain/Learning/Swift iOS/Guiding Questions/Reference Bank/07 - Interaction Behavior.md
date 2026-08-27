# Interaction Behavior

## Purpose
Memahami bagaimana user interaction seperti tap dan typing mengalir ke code, state, lalu UI.

## Guiding Questions
- [ ] Kapan closure di dalam `Button` dieksekusi?
- [ ] Apa bedanya code yang ditulis di `body` dan code di action closure?
- [ ] Apa yang terjadi saat user tap button?
- [ ] Bagaimana action mengubah state?
- [ ] Bagaimana perubahan state membuat UI berubah?
- [ ] Apa yang terjadi jika action mengubah value yang tidak di-observe?
- [ ] Kenapa input `TextField` butuh binding?
- [ ] Apa yang terjadi saat user mengetik di `TextField`?
- [ ] Bagaimana event user mengalir ke data?

## Mini Milestone Ideas
### Milestone 1 — Button action lifecycle
Question:
Kapan code di dalam `Button` jalan?

Hands-on:
- Buat button dengan action sederhana.
- Ubah state dari action.
- Bedakan code yang dievaluasi saat render dan saat tap.

Evidence:
- Snippet.
- Execution trace.

### Milestone 2 — TextField data flow
Question:
Bagaimana typing user masuk ke state?

Hands-on:
- Buat `@State var name`.
- Buat `TextField` binding ke `$name`.
- Tampilkan `name` di `Text`.
- Amati perubahan saat mengetik.
