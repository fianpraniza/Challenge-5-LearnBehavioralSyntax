# Slice 4 - Practice Session State

## Source Behavior
Original app uses `PracticeViewModel` to manage practice session state: recording, paused, elapsed time, current slide, WPM, and stop behavior.

Source reference from original repo:
- `Features/Practice/ViewModel/PracticeViewModel.swift`
- `Features/Practice/Model/PracticeModels.swift`

Original behavior:
```text
startSession()
→ coordinator.start()
→ isRecording = true
→ startObservation()
→ startTimer()
→ elapsedTime/currentWPM/currentSlide update
→ UI reacts
```

## Behavior to Rebuild in iOS
Start with simpler local state:
```text
isPracticing
isPaused
elapsedSeconds
simplePaceValue/manualWordCount
```

Do not start with full coordinator/audio/speech pipeline.

## Guiding Questions
- [ ] Apa behavior start/pause/resume/stop di original app?
- [ ] State apa saja yang berubah saat practice mulai?
- [ ] Kenapa `isRecording`, `isPaused`, dan `elapsedTime` dipisah?
- [ ] Bagaimana timer membuat UI update?
- [ ] Kapan butuh `Task` atau `Timer`?
- [ ] Apa yang terjadi saat session stop?
- [ ] Untuk iOS MVP, apakah cukup pakai `@State` dulu?
- [ ] Kapan nanti perlu ViewModel?
- [ ] Apa yang harus dibatalkan saat stop/pause?

## Hands-on Experiment
Tasks:
- [ ] Buat simple practice screen/state.
- [ ] Start sets practicing state.
- [ ] Timer increments elapsed seconds.
- [ ] Pause stops visual progress without losing elapsed time.
- [ ] Resume continues.
- [ ] Stop creates simple result.

## Mini Milestone
Question:
Bagaimana timer/state update membuat UI berubah setiap detik?

Evidence:
- timer display changes,
- pause/resume behavior,
- written execution trace.

## Expected Understanding
Fian bisa menjelaskan:
```text
start action mengubah session state → timer update value → UI membaca value → view refreshes
```

## Reference Bank If Needed
- [[../Reference Bank/06 - State and Rendering Behavior]]
- [[../Reference Bank/07 - Interaction Behavior]]
- [[../Reference Bank/11 - Debugging Mechanics]]
