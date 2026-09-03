# Commit Message Convention

## Purpose
Aturan ini dipakai supaya commit di repo Swift/iOS learning workspace tetap jelas: mana progress belajar, mana update milestone/workflow, mana perubahan kode app.

## Format

```text
<type>(optional-scope): <message>
```

Scope boleh dipakai kalau membantu menjelaskan area perubahan.

## Types

### `learn`
Untuk daily log, reflection, pemahaman konsep, atau catatan belajar.

Examples:
```text
learn(daily): add reflection for Home state learning
learn(enum): capture understanding of enum domain modeling
```

### `milestone`
Untuk update milestone, guiding questions, learning boundary, tracking, atau artifact criteria.

Examples:
```text
milestone(home): refine behavior questions
milestone(workflow): clarify adaptation rules and learning boundaries
```

### `docs`
Untuk aturan workflow, template, README, atau cara kerja belajar/Hermes.

Examples:
```text
docs(workflow): add session start template
docs(readme): align project overview with Tiempo rebuild path
```

### `app`
Untuk perubahan kode Swift/iOS prototype.

Examples:
```text
app(home): update state-driven Home UI
app(practice): add practice screen navigation
```

### `fix`
Untuk memperbaiki bug/error.

Examples:
```text
fix(timer): resolve pause state update
fix(home): correct primary action transition
```

### `refactor`
Untuk rapihin code tanpa mengubah behavior.

Examples:
```text
refactor(home): extract primary action handler
refactor(practice): simplify timer state transitions
```

## Recommended Rule
Pisahkan commit berdasarkan jenis perubahan:

```text
commit docs/workflow separately from app code
```

Contoh:
- update milestone docs → `milestone(workflow): add learning boundaries and session template`
- update app code HomeView → `app(home): add state-driven Home behavior`
- update daily log → `learn(daily): record Home state session reflection`

## Current Recommended Message
Untuk perubahan workflow/milestone terakhir:

```text
milestone(workflow): clarify adaptation rules and learning boundaries
```
