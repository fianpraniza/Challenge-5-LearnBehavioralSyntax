# Milestone 6 - Recap Screen

## Goal
Display completed practice result as a useful recap screen with transcript/WPM/filler summary when available.

## Learning Boundary
- **Behavior Target:** Completed practice result appears as readable recap UI.
- **Real Feature Requirement:** Recap should show meaningful feedback from real session/result data, not only placeholder text.
- **Required Concepts:** data passing, display model/formatting, computed summary, view composition, optional data handling.
- **Must Understand:** Result data flows into Recap; display text/feedback are derived from model values.
- **Proof of Understanding:** Fian can explain raw data vs display meaning and rebuild recap from result.
- **Out of Scope:** Advanced charts, complex coaching engine, history/persistence, perfect UI polish.
- **Output:** Recap screen displays duration, transcript/word count, WPM, filler summary when available.
- **Stop Rule / Timebox:** Stop when recap shows result and flow is traceable.
- **Parking Lot:** deeper questions that do not block this output.

## Original Tiempo Source to Inspect
- Features/Recap/Model/RecapModel.swift
- Features/Recap/View/RecapView.swift
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
- What feedback does original Tiempo show in recap?
### 2. Original syntax/pattern question
- How does original code transform PracticeResult into RecapModel/display data?
### 3. Engineering tradeoff question
- Why separate raw result from recap display?
### 4. iOS adaptation question
- What recap fields are useful for the current real result data?
### 5. Execution mechanics question
- Result created → recap data derived → RecapView renders: what runs when?
### 6. Artifact/done question
- Does user see a useful recap after stopping practice?

## Manual-first Task
- Inspect original recap model/view.
- Build RecapView from PracticeResult.
- Show duration/transcript/WPM/filler summary when available.
- Verify Practice → Recap flow.

## Done Criteria
- [ ] Original recap behavior inspected.
- [ ] iOS Recap shows useful result summary.
- [ ] Fian can explain raw data → display data → UI.
