# Slice 5 - Recap Model

## Source Behavior
Original app turns `PracticeResult` into `RecapModel`, then displays a recap screen.

Source references from original repo:
- `Features/Practice/Model/PracticeModels.swift`
- `Features/Recap/Model/RecapModel.swift`
- `Features/Recap/View/RecapView.swift`

Original behavior:
```text
PracticeResult
→ toRecapModel()
→ Recap screen displays summary
→ optional save to history
```

## Behavior to Rebuild in iOS
Create a simple result model and transform it into displayable recap data.

Possible MVP result:
```text
PracticeResult:
- duration
- manualWordCount / simulatedWPM
- startedAt
- endedAt
```

Possible recap:
```text
RecapSummary:
- durationText
- averagePaceText
- feedbackMessage
```

## Guiding Questions
- [ ] Apa beda raw result dan display model?
- [ ] Kenapa original app punya `toRecapModel()`?
- [ ] Data apa yang perlu disimpan setelah practice selesai?
- [ ] Bagaimana function mengubah raw data menjadi summary?
- [ ] Apa beda computation logic dan UI rendering?
- [ ] Kapan model perlu `struct`?
- [ ] Kapan result harus immutable dengan `let`?
- [ ] Bagaimana recap screen menerima data?

## Hands-on Experiment
Tasks:
- [ ] Buat `PracticeResult` sederhana.
- [ ] Buat `RecapSummary` atau computed properties.
- [ ] Buat function transform result → summary.
- [ ] Tampilkan recap screen setelah stop.
- [ ] Tulis explanation: input data → transform → UI.

## Mini Milestone
Question:
Bagaimana data practice berubah menjadi recap yang bisa ditampilkan?

Evidence:
- model struct,
- transform function,
- recap UI screenshot.

## Expected Understanding
Fian bisa menjelaskan:
```text
Practice menghasilkan raw data. Function/model mengubah raw data jadi summary. View hanya menampilkan summary.
```

## Reference Bank If Needed
- [[../Reference Bank/02 - Swift Syntax Mechanics]]
- [[../Reference Bank/03 - Value Type Behavior]]
- [[../Reference Bank/12 - Artifact Explanation]]
