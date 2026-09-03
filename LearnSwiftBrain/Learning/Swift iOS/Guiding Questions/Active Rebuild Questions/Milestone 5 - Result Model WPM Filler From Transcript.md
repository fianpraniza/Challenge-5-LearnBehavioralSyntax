# Milestone 5 - Result Model WPM Filler From Transcript

## Goal
Create practice result data from real session output and derive WPM/filler feedback from transcript.

## Learning Boundary
- **Behavior Target:** Stopping practice creates result with duration, transcript, word count, WPM, and filler summary.
- **Real Feature Requirement:** Feedback should come from actual transcript/session data when available, not permanent placeholder/manual dummy.
- **Required Concepts:** struct model, computed properties/functions, tokenization, array/filter/counting, dictionary counts, WPM calculation, optional audio/transcript fields.
- **Must Understand:** Running session data becomes stable result; transcript tokens derive word count/WPM/filler feedback.
- **Proof of Understanding:** Fian can explain running session vs result, predict calculation edge cases, and rebuild WPM/filler logic.
- **Out of Scope:** Acoustic silent pause detection, filled-pause DSP, advanced NLP, ML scoring, per-slide Keynote analytics.
- **Output:** PracticeResult includes transcript-derived WPM/filler summary for Recap/History.
- **Stop Rule / Timebox:** Stop when result captures real available data and feedback calculations are explainable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Features/Practice/Model/PracticeModels.swift
- Features/Practice/Model/WPMCalculator.swift
- Features/Practice/Model/FillerModels.swift
- PracticeResult.toRecapModel()

## Deep Behavior Lens
Use these checks while working through this milestone:

- **Domain modeling:** what real app situation is this code representing?
- **Real feature requirement:** what useful app behavior should not be replaced by dummy behavior?
- **Representation:** why is this represented with enum, struct, state, function, ViewModel, service, persistence, or framework API?
- **Behavior:** what UI/action/result changes when this value/event changes?
- **Invariant / impossible state:** what invalid condition should the code prevent?
- **Tradeoff:** what does original Tiempo choose, and what should the iOS rebuild simplify/defer?
- **Runtime:** what is declared, what executes, and when?
- **Artifact evidence:** what proves the feature works?

## Guiding Questions
### 1. Original behavior question
- What data does original PracticeResult store after practice?
### 2. Original syntax/pattern question
- How do original WPMCalculator, FillerLexicon, and PracticeResult derive feedback?
### 3. Engineering tradeoff question
- Why compute WPM/filler from model data instead of directly in the View?
### 4. iOS adaptation question
- Which feedback is realistic from transcript now, and which audio-based detection is later?
### 5. Execution mechanics question
- Stop → result initialized → transcript tokenized → WPM/filler derived → recap receives data: what runs?
### 6. Artifact/done question
- Does stopping produce result data with useful feedback?

## Manual-first Task
- Inspect original PracticeModels/WPM/Filler files.
- Define iOS PracticeResult.
- Calculate word count/WPM from transcript and duration.
- Detect lexical filler words from transcript.
- Verify edge cases such as empty transcript/duration zero.

## Done Criteria
- [ ] Original result/WPM/filler behavior inspected.
- [ ] Result model stores useful session data.
- [ ] WPM and filler summary are derived from transcript.
- [ ] Fian can explain model/calculation flow.
