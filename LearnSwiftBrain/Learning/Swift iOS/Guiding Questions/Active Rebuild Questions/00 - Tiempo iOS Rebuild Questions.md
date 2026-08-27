# Tiempo iOS Rebuild Questions

## Purpose
Active question set untuk rebuild **Tiempo / Keynote Companion macOS** menjadi iOS learning app.

Ini adalah pusat guiding questions yang lahir dari app lama, bukan dari kurikulum Swift general.

Related orientation note:
- [[Artifacts/App Rebuild Orientation - Tiempo iOS]]

## Rebuild Goal
Membangun ulang versi iOS dari app public-speaking practice companion secara manual-first dan programmatic, sambil memahami mechanics Swift/iOS dari setiap behavior.

## Rebuild Principle
Tidak copy 1:1 dari macOS app.

Yang dilakukan:
```text
Understand original behavior → simplify for iOS → rebuild manually → observe mechanics → document learning
```

## MVP Direction
First iOS MVP:
- Home screen.
- Start practice.
- Timer runs.
- Pause/resume/stop.
- Recap after stop.
- Simple/manual/simulated pace/WPM first.

Defer:
- Keynote automation.
- Floating macOS overlay.
- AppleScript/AppKit window management.
- Full speech/audio pipeline.
- Complex SwiftData migration.

## Active Slices
- [[01 - Slice 1 - App Launch to First Screen]]
- [[02 - Slice 2 - Home State Drives UI]]
- [[03 - Slice 3 - Button Action Routes Behavior]]
- [[04 - Slice 4 - Practice Session State]]
- [[05 - Slice 5 - Recap Model]]

## Current Learning Strategy
For each slice:
1. Read relevant original macOS code.
2. Identify behavior.
3. Ask mechanics questions.
4. Rebuild smaller iOS version manually.
5. Record observation in Daily Log / Concept Note / Artifact Note.

## Open Rebuild Questions
- [ ] Apa core behavior dari Tiempo yang paling penting untuk iOS MVP?
- [ ] State apa yang harus ada di iOS version?
- [ ] Fitur macOS mana yang harus ditunda?
- [ ] Kapan cukup pakai `@State`, dan kapan mulai butuh ViewModel?
- [ ] Kapan speech recognition masuk tanpa mengganggu fundamental?
