# Slice 1 - App Launch to First Screen

## Source Behavior
Original macOS app starts from `KeynoteCompanionMacosApp.swift`, creates `RootView`, injects shared environment, and decides which first screen appears.

Source references from original repo:
- `KeynoteCompanionMacos/KeynoteCompanionMacosApp.swift`
- `KeynoteCompanionMacos/App/RootView.swift`
- `KeynoteCompanionMacos/App/AppRouter.swift`

## Behavior to Understand
```text
App launches
→ @main App struct is used as entry point
→ WindowGroup creates root scene
→ RootView is shown
→ RootView decides initial screen
```

## Guiding Questions
- [x] Dari mana macOS app lama mulai jalan?
- [x] Di iOS app baru, file mana yang jadi entry point?
- [x] Apa fungsi `@main`?
- [x] Apa yang dilakukan `WindowGroup`?
- [x] Kapan `RootView()` atau first view dibuat?
- [x] Kapan `var body: some View` dievaluasi?
- [ ] Apakah kita butuh router dari Day 1?
- [ ] Kalau belum pakai router, bagaimana screen pertama dipilih?
- [ ] Apa bedanya deklarasi `RootView()` dan eksekusi logic di dalam view?

## Hands-on Experiment
Build minimal iOS entry flow:
```text
Challenge5App → RootView → HomeView
```

Tasks:
- [ ] Buka `Challenge5App.swift`.
- [ ] Identifikasi `@main`, `App`, `WindowGroup`, dan first view.
- [ ] Buat/rapikan `RootView` kalau dibutuhkan.
- [ ] Tampilkan `HomeView` sebagai first screen.
- [ ] Tambahkan komentar singkat tentang execution flow.

## Expected Understanding
Fian bisa menjelaskan:
```text
App dimulai dari @main → WindowGroup membuat scene → first view ditampilkan → body mendeskripsikan UI
```

## Reference Bank If Needed
- [[../Reference Bank/01 - App Execution Lifecycle]]
- [[../Reference Bank/05 - SwiftUI View Behavior]]
