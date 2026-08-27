# Slice 3 - Button Action Routes Behavior

## Source Behavior
Original app maps Home state to a primary action, then routes button taps through `handlePrimaryAction(_:)`.

Source references from original repo:
- `Features/Home/View/HomeView.swift`
- `Features/Home/View/HomeStatusContentView.swift`
- `Features/Home/Model/HomeViewState.swift`

Original behavior:
```text
User taps button
→ HomeStatusAction is sent
→ handlePrimaryAction switches action
→ specific function is called
→ state/navigation changes
```

## Behavior to Rebuild in iOS
Use explicit action routing instead of putting all logic directly inside Button.

Possible action:
```swift
startPractice
pausePractice
resumePractice
finishPractice
```

## Guiding Questions
- [ ] Kapan closure di dalam `Button` dieksekusi?
- [ ] Apa bedanya code yang mendeklarasikan Button dan code yang berjalan saat Button ditap?
- [ ] Apa yang dikirim lewat `onPrimaryAction(action)` di app lama?
- [ ] Kenapa action bisa direpresentasikan sebagai enum?
- [ ] Apa manfaat `switch action` dibanding banyak closure langsung?
- [ ] Bagaimana action mengubah state?
- [ ] Apakah action perlu ViewModel sekarang, atau cukup function di View?
- [ ] Kapan action routing mulai terasa berguna?

## Hands-on Experiment
Tasks:
- [ ] Buat enum `HomePracticeAction`.
- [ ] Tambahkan computed property `primaryAction` pada state.
- [ ] Buat function `handlePrimaryAction(_:)`.
- [ ] Di Button, panggil `handlePrimaryAction(action)`.
- [ ] Di switch, ubah state sesuai action.

## Mini Milestone
Question:
Bagaimana user tap berubah menjadi state update?

Execution trace:
```text
Button rendered
→ user taps
→ action closure executes
→ handlePrimaryAction receives enum
→ switch chooses behavior
→ state changes
→ body re-renders
```

## Expected Understanding
Fian bisa membedakan:
- view declaration,
- event/action execution,
- state mutation,
- UI update.

## Reference Bank If Needed
- [[../Reference Bank/07 - Interaction Behavior]]
- [[../Reference Bank/06 - State and Rendering Behavior]]
- [[../Reference Bank/02 - Swift Syntax Mechanics]]
