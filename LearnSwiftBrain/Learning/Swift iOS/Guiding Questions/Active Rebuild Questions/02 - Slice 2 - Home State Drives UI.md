# Slice 2 - Home State Drives UI

## Source Behavior
Original app uses `HomeViewState` to drive Home screen text, icon, button, and available action.

Source references from original repo:
- `Features/Home/Model/HomeViewState.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/ViewModel/HomeViewModel.swift`

Original behavior:
```text
HomeViewState changes → title/subtitle/button/icon changes
```

## Behavior to Rebuild in iOS
Create a simpler iOS home state for presentation practice.

Possible state:
```text
permissionMissing
readyToPractice
practiceActive
practiceFinished
```

For Day 1, this can be even smaller:
```text
notStarted
ready
practicing
```

## Guiding Questions
- [ ] Behavior apa yang dikontrol `HomeViewState` di app lama?
- [x] Kenapa enum cocok untuk state yang pilihannya terbatas?
- [x] Bagaimana computed property seperti `title`, `subtitle`, dan `buttonTitle` bekerja?
- [ ] Apa yang terjadi saat state berubah?
- [ ] Kenapa UI ikut berubah saat state yang dibaca UI berubah?
- [ ] State minimal apa yang dibutuhkan untuk mulai practice di iOS MVP?
- [ ] Apakah state ini harus di View dulu atau ViewModel?
- [ ] Apa konsekuensi kalau state terlalu banyak / terlalu sedikit?

## Hands-on Experiment
Build state-driven Home UI manually.

Tasks:
- [x] Buat enum `HomePracticeState`.
- [x] Tambahkan computed properties: `title`, `subtitle`, `buttonTitle`.
- [x] Render title/subtitle/button di `HomeView` atau `ContentView`.
- [x] Simpan state dengan `@State` dulu.
- [x] Button tap mengubah state.
- [x] Amati UI update.

## Mini Milestone
Question:
Kenapa enum state bisa mengubah UI?

Evidence:
- screenshot before/after state change,
- snippet enum,
- explanation: state → computed property → body → UI.

## Expected Understanding
Fian bisa menjelaskan:
```text
UI membaca state. Saat state berubah, SwiftUI mengevaluasi ulang body dan computed property menghasilkan text/action baru.
```

## Reference Bank If Needed
- [[../Reference Bank/02 - Swift Syntax Mechanics]]
- [[../Reference Bank/06 - State and Rendering Behavior]]
- [[../Reference Bank/07 - Interaction Behavior]]
