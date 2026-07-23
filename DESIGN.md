# Movement to Work – Design Direction

## Brand Palette

- **Dominant field**: Deep cobalt / ink for hero sections and key backgrounds.
- **Reading surfaces**: Cool white for content sections.
- **Movement & action**: Electric cyan and chartreuse accents.
- **Energy accent**: Coral (sparing use only).

## Typography

- **Headlines (h1–h6, wordmark, display labels)**: Stack Sans Notch via Google Fonts.
- **Body (copy, nav, buttons, links, form controls, metadata)**: Stack Sans Text via Google Fonts.
- **Font weights**: Variable 200–700; prefer 400, 500, 600, 700 for content.
- **Optical sizing**: `font-optical-sizing: auto` on both font systems.
- **Fallback**: `sans-serif`.
- **Loading**: `display=swap` for visible text during font load.

## Layout Principles

- Single-column vertical narrative flow.
- Full-width hero, contained content sections beneath.
- Readable line lengths on body copy.
- Normal vertical flow on mobile; horizontal pinned sequences only on desktop (where scroll-driven).

## Accessibility

- WCAG 2.2 AA contrast ratios.
- 44px minimum touch targets.
- Visible keyboard focus indicators.
- Sequential heading hierarchy (h1 → h2 → h3).
- Meaningful alt text on images.
- Decorative motion hidden from assistive technology (`aria-hidden`).
- `prefers-reduced-motion` respected: disable parallax, pinned sections, timeline animation.

## Motion Principles

- CSS scroll-driven animations (progressive enhancement; static fallback where unsupported).
- No JavaScript scroll listeners.
- Animate only `transform`, `opacity`, masking, and lightweight filters.
- Content visible and useful before motion runs.
- Restrained hover, focus, and pressed feedback on controls.
- Header shifts transparent → solid after hero scroll.
- Desktop sticky journey scrubs through programme expectations.
- Experience timeline advances as reader scrolls through activities.

## Component Primitives (to be extracted when repeated)

- `PageShell`
- `Section`
- `PrimaryButton`
- `TextLink`
- `SiteHeader`
- `Footer`
