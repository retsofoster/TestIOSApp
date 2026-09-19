# iOS App Development Roadmap

This is a living, self-paced plan for learning iOS development by building real
apps. Update the checkboxes, notes, and dates as skills improve or priorities
change. The suggested pace is **8–12 hours per week**, but progress matters more
than the calendar.

## Progress Snapshot

- **Current phase:** Phase 0 — Setup and orientation
- **Current project:** Hello, iOS
- **Last updated:** 2026-09-19
- **Next milestone:** Run Hello, iOS in two simulator sizes

### How to update this roadmap

1. Check off an item with `[x]` only after completing its deliverable.
2. Add a short entry to the [Learning Log](#learning-log) after each session.
3. Record questions or difficult topics in [Backlog](#backlog).
4. At the end of each phase, build the listed project without following a
   step-by-step tutorial, then complete the phase review.
5. Adjust scope and target dates freely; do not skip fundamentals just to stay
   on schedule.

## Guiding Principles

- **Build more than you watch.** Use tutorials to unblock yourself, then recreate
  the feature from memory.
- **Prefer small finished apps.** A working two-screen app teaches more than a
  large abandoned one.
- **Learn the platform conventions.** Accessibility, privacy, navigation, and
  state management are part of iOS development—not optional polish.
- **Use version control.** Commit small, understandable changes and write useful
  commit messages.
- **Reflect regularly.** Explain what the code does, what failed, and what you
  would change next time.

## Phase 0 — Setup and Orientation

**Goal:** Become comfortable with the tools and run an app end to end.

- [ ] Install the current stable Xcode from the Mac App Store.
- [ ] Sign in to Xcode with an Apple ID and review signing settings.
- [ ] Learn the Xcode workspace: navigator, editor, inspector, debug area, and
  simulator controls.
- [ ] Create a SwiftUI iOS app and run it in at least two simulator sizes.
- [ ] Make a visible UI change and use a breakpoint to inspect a value.
- [ ] Learn basic Git commands: `status`, `add`, `commit`, `log`, and `diff`.
- [ ] Create a feature branch, merge it, and resolve a practice conflict.

**Deliverable:** A “Hello, iOS” app with text, an image or symbol, and a button
that changes something on screen.

**Phase review:**

- [ ] I can create, build, run, and debug a project without a tutorial.
- [ ] I can explain the difference between the simulator and a physical device.

## Phase 1 — Swift Fundamentals

**Goal:** Write small Swift programs confidently before adding app complexity.

### Language basics

- [ ] Constants and variables; common value types; type inference.
- [ ] Operators, string interpolation, optionals, and optional binding.
- [ ] Conditionals, `switch`, ranges, loops, and guard statements.
- [ ] Arrays, sets, dictionaries, tuples, and collection transformations.
- [ ] Functions, parameters, return values, closures, and trailing-closure syntax.
- [ ] Structures, classes, enumerations, properties, and methods.
- [ ] Protocols, extensions, generics, and access control.
- [ ] Value versus reference semantics.
- [ ] Error handling with `throws`, `do`/`catch`, and `Result`.
- [ ] Basic concurrency with `async`/`await`, tasks, and the main actor.

### Practice

- [ ] Solve at least 15 small Swift exercises.
- [ ] Model a real domain (for example, books and a library) with structs and
  enums.
- [ ] Parse a local JSON file into `Codable` models.
- [ ] Write unit tests for pure Swift functions.

**Deliverable:** A command-line or playground-based habit tracker that can add,
complete, filter, and summarize habits.

**Phase review:**

- [ ] I can choose between a struct, class, and enum and explain why.
- [ ] I can read compiler errors and reduce a problem to a minimal example.

## Phase 2 — SwiftUI Foundations

**Goal:** Build responsive, accessible interfaces with clear state flow.

### Views and layout

- [ ] Understand the `App` entry point, scenes, views, and view composition.
- [ ] Use stacks, grids, lists, forms, scroll views, spacers, and modifiers.
- [ ] Build reusable components with inputs and actions.
- [ ] Use SF Symbols, colors, typography, shapes, and basic animation.
- [ ] Create previews for multiple states, text sizes, and color schemes.

### State and navigation

- [ ] Understand source of truth and one-way data flow.
- [ ] Use SwiftUI observation tools appropriate to the project deployment target.
- [ ] Pass bindings only when a child view must mutate parent-owned state.
- [ ] Implement tab, stack, sheet, alert, and deep-link-style navigation.
- [ ] Handle empty, loading, content, and error states explicitly.

### Quality

- [ ] Support Dynamic Type and VoiceOver labels.
- [ ] Check light mode, dark mode, orientation, and several device sizes.
- [ ] Avoid force unwraps and move non-UI logic out of views.

**Project 1: Habit Tracker**

- [ ] Display a list of habits and completion status.
- [ ] Add, edit, delete, filter, and complete a habit.
- [ ] Include an empty state and basic validation.
- [ ] Add one meaningful animation and accessible labels.
- [ ] Write tests for the habit rules.

**Phase review:**

- [ ] I can explain which object owns every piece of screen state.
- [ ] I can split a large screen into reusable views without hiding data flow.

## Phase 3 — Data, Networking, and Concurrency

**Goal:** Load, save, and refresh real data safely.

### Persistence

- [ ] Store small preferences appropriately.
- [ ] Learn the project’s chosen model persistence framework and its lifecycle.
- [ ] Implement create, read, update, delete, sorting, and filtering.
- [ ] Plan a simple schema change and consider migration implications.

### Networking

- [ ] Understand HTTP methods, status codes, headers, and JSON APIs.
- [ ] Build requests with `URLSession` and decode typed `Codable` responses.
- [ ] Model networking and decoding errors for user-friendly presentation.
- [ ] Support loading, retry, cancellation, refresh, and offline behavior.
- [ ] Keep secrets out of source control and client code whenever possible.

### Concurrency

- [ ] Use structured concurrency and cancellation.
- [ ] Keep UI updates on the main actor.
- [ ] Recognize shared mutable state and basic data-race risks.

**Project 2: API-Powered Browser**

Choose a public API for books, recipes, movies, space, or another interest.

- [ ] Show a remote list and detail screen.
- [ ] Add search, pagination or incremental loading, and pull to refresh.
- [ ] Display clear loading, empty, offline, and error states.
- [ ] Cache or save favorites locally.
- [ ] Unit-test decoding and the networking abstraction with deterministic data.

**Phase review:**

- [ ] I can trace a request from a user action through the network to rendered UI.
- [ ] I can explain how cancellation and errors are handled.

## Phase 4 — Architecture and Testing

**Goal:** Organize a growing app so it remains understandable and changeable.

- [ ] Separate UI, domain rules, data access, and platform services.
- [ ] Learn dependency injection and use protocols where substitution is useful.
- [ ] Choose a simple architecture based on project needs rather than trends.
- [ ] Understand app and scene lifecycle events.
- [ ] Add unit tests for business logic and integration boundaries.
- [ ] Add UI tests for one critical user journey.
- [ ] Learn test doubles: fakes, stubs, and spies.
- [ ] Use Instruments to investigate an intentional performance or memory issue.
- [ ] Review retain cycles, weak references, and task lifetimes.

**Project 3: Refactor and Harden**

- [ ] Refactor Project 2 into explicit UI, domain, and data boundaries.
- [ ] Replace live dependencies in tests with deterministic test doubles.
- [ ] Add tests for the happy path and important failure paths.
- [ ] Document architectural decisions and tradeoffs in the project README.

**Phase review:**

- [ ] I can add a feature without unrelated changes across the whole app.
- [ ] My tests catch behavior regressions rather than implementation changes.

## Phase 5 — Platform Features and Production Quality

**Goal:** Integrate Apple platform capabilities responsibly.

Select features relevant to the capstone rather than attempting all of them.

- [ ] Notifications and permission timing.
- [ ] Photos, camera, location, maps, or another device framework.
- [ ] Background work and lifecycle constraints.
- [ ] Widgets, shortcuts, share sheets, or app intents.
- [ ] Localization and locale-aware formatting.
- [ ] Secure storage, privacy usage descriptions, and data minimization.
- [ ] Accessibility audit with VoiceOver and large accessibility text sizes.
- [ ] Performance audit with Instruments.
- [ ] Crash reporting and privacy-conscious analytics strategy.

**Deliverable:** Add one platform integration to an earlier project, including
permission-denied behavior, tests where practical, and documentation.

## Phase 6 — Capstone and Shipping

**Goal:** Plan, build, test, and distribute a focused app.

### Plan

- [ ] Write a one-paragraph problem statement and define the target user.
- [ ] Limit version 1 to three core user outcomes.
- [ ] Sketch screens and user flows before coding.
- [ ] Define models, dependencies, privacy needs, and acceptance criteria.
- [ ] Create milestones and a prioritized issue backlog.

### Build

- [ ] Build a vertical slice before expanding the feature set.
- [ ] Include polished loading, empty, error, and offline states.
- [ ] Add useful unit tests and at least one critical UI test.
- [ ] Test accessibility, multiple devices, and adverse network conditions.
- [ ] Profile launch, scrolling, memory, and energy use.

### Ship

- [ ] Create an app icon, launch experience, screenshots, and description.
- [ ] Review signing, capabilities, versioning, and build numbering.
- [ ] Write a privacy policy and complete privacy disclosures accurately.
- [ ] Archive and distribute a beta through TestFlight.
- [ ] Collect structured feedback and fix the highest-impact issues.
- [ ] Review current App Store requirements before submission.
- [ ] Submit version 1 or document a release-ready archive and checklist.

**Capstone completion criteria:**

- [ ] A new user can complete the core workflow without guidance.
- [ ] The app fails gracefully and protects user data.
- [ ] The repository explains setup, architecture, tests, and tradeoffs.
- [ ] At least three beta users have provided actionable feedback.

## Suggested Study Rhythm

Use this loop each week:

1. **Learn (20%)** — Read documentation or watch a focused lesson.
2. **Practice (30%)** — Recreate the concept in a tiny isolated example.
3. **Build (40%)** — Apply it to the current project without copying a tutorial.
4. **Review (10%)** — Refactor, test, commit, and update this roadmap.

When stuck, spend 20–30 minutes reading the error, reducing the example, and
checking documentation. Then ask for help with the smallest reproducible case.

## Portfolio Checklist

- [ ] Each showcased app has a clear README and screenshots.
- [ ] Repositories contain no keys, tokens, personal data, or generated build
  artifacts.
- [ ] Commit history communicates incremental progress.
- [ ] Each project describes one technical challenge and its tradeoffs.
- [ ] At least one app demonstrates networking, persistence, testing, and
  accessibility.
- [ ] Practice explaining one app’s architecture in five minutes.

## Backlog

Add optional topics here instead of interrupting the current phase.

- [ ] UIKit fundamentals and interoperability with SwiftUI.
- [ ] Swift Package Manager and modularization.
- [ ] Advanced Swift concurrency and actors.
- [ ] Continuous integration for build and test automation.
- [ ] Server-driven data, authentication, and push notifications.
- [ ] StoreKit and in-app purchases.
- [ ] Additional Apple platforms such as iPadOS, watchOS, or macOS.

## Learning Log

Keep entries short and specific. Duplicate this template for each session:

```text
### YYYY-MM-DD — Topic
- Built:
- Learned:
- Stuck on:
- Next step:
```

### 2026-09-19 — Roadmap created

- Built: A structured learning plan from setup through shipping.
- Learned: The first milestone is a small SwiftUI app, not a large product.
- Stuck on: Nothing yet.
- Next step: Complete Phase 0 setup and run “Hello, iOS” in the simulator.

## Phase Completion Record

| Phase | Started | Completed | Evidence / notes |
| --- | --- | --- | --- |
| 0 — Setup and orientation |  |  |  |
| 1 — Swift fundamentals |  |  |  |
| 2 — SwiftUI foundations |  |  |  |
| 3 — Data and networking |  |  |  |
| 4 — Architecture and testing |  |  |  |
| 5 — Platform and production |  |  |  |
| 6 — Capstone and shipping |  |  |  |
