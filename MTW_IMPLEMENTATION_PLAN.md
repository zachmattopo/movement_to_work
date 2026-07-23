# MTW Implementation Plan

## Decisions

- Build one immersive, static Jaspr campaign page at `/`.
- Use the supplied activities and outcomes as a first-person participant story.
- Use Google Fonts to deliver Stack Sans Notch and Stack Sans Text.
- Use Tailwind CSS v4 through `jaspr_tailwind`.
- Use `bloc` Cubits with `jaspr_bloc` for Jaspr UI bindings when state is genuinely needed.
- Do not use `flutter_bloc` directly in this Jaspr application: it depends on Flutter widgets. `jaspr_bloc` provides the equivalent Cubit pattern for Jaspr and allows business logic to remain portable to Flutter later.

## Phase 0: Content and Asset Preparation

- Create a content matrix that maps every supplied project requirement to a campaign section.
- Verify eligibility wording before publishing. The supplied DWP brief specifies ages 18 to 24, while the public Movement to Work site describes a wider age range. Present the DWP programme context as 18 to 24 unless DWP confirms otherwise.
- Collect approved, consented imagery from programme activity where available. Do not use photographs of Jobcentre visitors, screens, or sensitive reception materials.
- Write in an encouraging, honest, non-bureaucratic first-person voice. Do not promise employment outcomes.
- Add `PRODUCT.md` and `DESIGN.md` so later implementation work has a consistent product, accessibility, brand, and motion direction.

## Phase 1: Replace the Starter Scaffold

- Remove the generated counter, demo About route, generic header, and Roboto styles.
- Keep one `/` route for the campaign experience.
- Update document title, description, social metadata, favicon, and page language.
- Add `jaspr_tailwind` as a development dependency.
- Create `web/styles.tw.css` and link its generated `styles.css` file from the Jaspr `Document` head.
- Add `bloc` and `jaspr_bloc` only when an interactive component requires shared state.
- Establish this lightweight feature-first CLEAN structure:

```text
lib/
  app/
    app.dart
    app_routes.dart
  core/
    design_system/
    constants/
    utils/
  features/
    campaign/
      data/
      domain/
      presentation/
        pages/
        components/
        cubit/
```

- Keep static campaign copy in the campaign feature. Do not create repositories, use cases, or Cubits without a real boundary or interaction.

## Phase 2: Establish the Visual System

### Google Fonts

Add the following elements to `Document(head: [...])` in `lib/main.server.dart`:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stack+Sans+Notch:wght@200..700&family=Stack+Sans+Text:wght@200..700&display=swap" rel="stylesheet">
```

- Do not add local font files or `@font-face` declarations.
- Define Tailwind v4 font tokens in `web/styles.tw.css`:

```css
@theme {
  --font-headline: "Stack Sans Notch", sans-serif;
  --font-body: "Stack Sans Text", sans-serif;
}
```

- Use Stack Sans Notch for `h1` through `h6`, the Movement To Work wordmark, and concise display labels.
- Use Stack Sans Text for body copy, navigation, buttons, links, form controls, and metadata.
- Apply `font-optical-sizing: auto` to both font systems.
- Use variable font weights from 200 to 700. Prefer 400, 500, 600, and 700 for standard content roles.
- Retain `sans-serif` fallbacks. The supplied `display=swap` parameter keeps text visible while the font loads.

### Colour, Layout, and Components

- Build Tailwind theme tokens in `web/styles.tw.css`.
- Use a confident full-palette direction: deep cobalt or ink for the dominant hero field, cool white reading sections, electric cyan and chartreuse for movement and action, and coral only as a sparing energy accent.
- Maintain WCAG 2.2 AA contrast, 44px touch targets, visible keyboard focus, and readable body line lengths.
- Create reusable primitives only when repeated: `PageShell`, `Section`, `PrimaryButton`, `TextLink`, `SiteHeader`, and `Footer`.

## Phase 3: Build the Campaign Story

Implement each section as a focused campaign presentation component.

### 1. Hero

- Headline: "Movement To Work".
- Slogan: "One Move, Many Possibilities".
- Direct first-person reassurance for someone who feels nervous about joining.
- Primary CTA: "Contact your local Jobcentre Plus".

### 2. What It Is

- Explain the voluntary employer collaboration and DWP context.
- Link to the official Movement to Work website.

### 3. What I Could Expect

- Career and job-search resources.
- CV preparation.
- Interview preparation.
- Communication skills practice.
- Work exposure.

### 4. What I Took Part In

- Career presentations.
- Job and apprenticeship application support.
- Mock interviews.
- DWP front-desk reception experience.

### 5. What Surprised Me

- Workplace preferences.
- Work motivations.
- Transferable skills gained through life and work experience.

### 6. What I Am Taking Forward

- Skills, confidence, and practical knowledge.
- Specific, credible examples rather than generic claims.

### 7. Why Consider It

- Address uncertainty directly.
- Emphasise support, exploration, and practical exposure without overselling outcomes.

### 8. Closing CTA

- Repeat the exact "Contact your local Jobcentre Plus" call to action.
- Link to `https://find-your-nearest-jobcentre.dwp.gov.uk/`.
- Open it in a new tab with `rel="noopener noreferrer"`.
- Include an accessible external-link indication.

## Phase 4: Add Scroll-Led Motion

- Keep all content visible and useful before motion runs.
- Use progressive CSS scroll-driven animation where supported, with a static fallback elsewhere.
- Avoid JavaScript scroll listeners and layout-affecting animation.

### Motion Moments

- Move hero artwork and typography at different scroll rates for restrained parallax.
- Create a desktop sticky journey that scrubs through the five programme expectations.
- Advance an experience timeline as readers scroll through the activities.
- Reveal relationships between workplace preferences, motivations, and transferable strengths.
- Shift the header from transparent to solid after the hero.
- Add restrained hover, focus, and pressed feedback to controls.

### Accessibility and Performance

- Respect `prefers-reduced-motion` by disabling parallax, pinned sections, and timeline animation.
- Animate only `transform`, `opacity`, masking, and lightweight filters.
- Use a normal vertical flow on mobile rather than a horizontal pinned sequence.
- Avoid autoplay video, excessive effects, and content that begins hidden while awaiting an animation.

## Phase 5: Add State Only Where Needed

- Do not add global state for static copy or scroll effects.
- If a mobile menu or interactive story filter is introduced, add a focused Cubit such as `MobileNavigationCubit` or `CampaignUiCubit`.
- Keep Cubit state immutable and presentation-specific.
- Use `jaspr_bloc` providers inside the relevant client island so state lifecycle and hydration remain correct.
- Unit-test Cubit transitions independently from presentation components.

## Phase 6: Responsive, Accessibility, and Quality Pass

- Test at 320px, mobile landscape, tablet, laptop, and large desktop widths.
- Ensure navigation is keyboard-operable, headings are sequential, images have meaningful alt text, and decorative motion layers are hidden from assistive technology.
- Verify Stack Sans display headings do not overflow at any viewport.
- Verify the CTA destination, external-link behaviour, focus states, and reduced-motion rendering.
- Run the following checks:

```shell
dart format .
dart analyze
jaspr build
```

- Manually test the static build and motion fallbacks in Chrome, Safari, Firefox, and mobile Safari and Chrome.

## Incremental Delivery Order

1. Complete Phases 0 and 1 to establish content, tooling, routing, and structure.
2. Complete Phase 2 to create fonts, tokens, visual direction, and reusable primitives.
3. Complete Phase 3 to deliver a fully usable, accessible campaign page without advanced motion.
4. Complete Phase 4 to add progressive scroll-linked motion and reduced-motion alternatives.
5. Complete Phases 5 and 6 only for real interactions and final production verification.
