# List and Collection Behavior

## Purpose
Memahami bagaimana collection data seperti array menjadi UI list, bagaimana item ditambah/dihapus/update, dan kenapa identity penting.

## Guiding Questions
- [ ] Kenapa `List` butuh data yang identifiable?
- [ ] Apa fungsi `Identifiable`?
- [ ] Bagaimana SwiftUI membedakan item lama dan item baru?
- [ ] Apa yang terjadi saat item ditambah ke array?
- [ ] Apa yang terjadi saat item dihapus dari array?
- [ ] Kenapa index bisa berbahaya kalau data berubah?
- [ ] Apa bedanya update item by index dan by id?
- [ ] Bagaimana UI tahu list harus berubah?
- [ ] Apa yang terjadi jika dua item punya id sama?

## Mini Milestone Ideas
### Milestone 1 — Array to List
Question:
Bagaimana array berubah menjadi List UI?

Hands-on:
- Buat struct model `Identifiable`.
- Buat array state.
- Render dengan `List`/`ForEach`.

Evidence:
- Snippet.
- Screenshot list.

### Milestone 2 — Add/delete behavior
Question:
Apa yang terjadi pada UI saat array berubah?

Hands-on:
- Tambah item ke array.
- Hapus item.
- Amati List update.
- Jelaskan role identity.
