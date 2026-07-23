# MTW – Agent Guide

**Repo**: Jaspr (Dart web framework) static site for the Movement to Work DWP campaign.  
**State**: Starter scaffold — the real campaign described in `MTW_IMPLEMENTATION_PLAN.md` has not been built yet.

## Commands

| Command | Purpose |
|---|---|
| `jaspr serve` | Dev server at `http://localhost:8080` |
| `jaspr build` | Static build output → `build/jaspr/` |
| `dart format .` | Format all Dart files |
| `dart analyze` | Run static analysis |

No test framework is configured (no test deps in `pubspec.yaml`).

## Architecture

- **Mode**: `static` (pre-rendered HTML, hydrated on client).
- **Entrypoints**: `lib/main.server.dart` (prerender), `lib/main.client.dart` (client hydration). Both are generated-build aware (`*.options.dart` companion files).
- **Routing**: `jaspr_router` with `App` → `Router` in `lib/app.dart`.
- **CSS**: Jaspr's type-safe Dart CSS bindings (`@css` + `StyleRule`). Imported as `css.import(...)` in `main.server.dart` and `constants/theme.dart`. Also has `jaspr_lints` analyzer plugin for CSS linting.
- **State**: No state library added yet. Plan calls for `bloc` + `jaspr_bloc` Cubits only when interactivity needs shared state (not `flutter_bloc`).

## Implementation plan

`MTW_IMPLEMENTATION_PLAN.md` is the authoritative design doc. Key decisions:

- Single campaign page at `/`; remove demo `Home`, `About`, `Counter`, `Header`, and Roboto imports.
- Tailwind CSS v4 via `jaspr_tailwind` (add as dev dep).
- Google Fonts: Stack Sans Notch (headlines) + Stack Sans Text (body).
- Font defs in `web/styles.tw.css` using `@theme`, not local files.
- Scroll-driven CSS animations with `prefers-reduced-motion` respect; no JS scroll listeners.
- Feature structure: `lib/features/campaign/presentation/{pages,components,cubit/}` with static copy kept in the campaign feature (no repositories/use cases for static content).

## Style

- `analysis_options.yaml`: `package:lints/recommended.yaml`, formatter `page_width: 120`, `trailing_commas: preserve`.
- Jaspr lint rules: `prefer_html_components`, `sort_children_last`, `styles_ordering`.
- No comments in code unless needed.
- Do not add `flutter_bloc` — Jaspr projects use `jaspr_bloc` for the same Cubit pattern.
- Keep Cubit state immutable and presentation-specific; unit-test Cubits independently.

## Build pipeline

Run in order before shipping:
```
dart format .
dart analyze
jaspr build
```

`build_runner` is available but not currently used (would be needed if codegen is added later).
