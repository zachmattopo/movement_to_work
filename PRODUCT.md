# Movement to Work – Campaign Product

## Purpose

A single-page Jaspr static campaign site for the Movement to Work DWP programme. Encourages 18–24 year-olds to engage with employment support through a first-person participant story.

## Audience

- Young people aged 18–24 who are not in education, employment, or training.
- Users who may feel nervous, skeptical, or uncertain about government employment programmes.
- Visitors arriving via Jobcentre Plus referrals, search, or social channels.

## Voice

- Encouraging, honest, non-bureaucratic first-person.
- Written from the perspective of someone who has been through the programme.
- Does not promise employment outcomes.
- Acknowledges uncertainty and addresses it directly.

## Constraints

- **Eligibility wording**: Programme context is presented as 18–24 unless DWP confirms otherwise.
- **Imagery**: Use approved, consented programme activity imagery. Do not use photographs of Jobcentre visitors, screens, or sensitive reception materials.
- **No stock photography** of people in formal office settings pretending to work.

## Content Structure

The campaign is a narrative arc across eight sections:

1. **Hero** – Wordmark, slogan, first-person reassurance, primary CTA.
2. **What It Is** – Voluntary employer collaboration + DWP context, link to official site.
3. **What I Could Expect** – Five programme expectations (career resources, CV prep, interview prep, communication skills, work exposure).
4. **What I Took Part In** – Four activities (career presentations, job application support, mock interviews, DWP front-desk experience).
5. **What Surprised Me** – Workplace preferences, motivations, transferable skills.
6. **What I Am Taking Forward** – Skills, confidence, practical knowledge.
7. **Why Consider It** – Address uncertainty, emphasise support without overselling.
8. **Closing CTA** – "Contact your local Jobcentre Plus", linked to `https://find-your-nearest-jobcentre.dwp.gov.uk/`.

## Technical Stack

- **Framework**: Jaspr (static mode, pre-rendered HTML + client hydration).
- **CSS**: Tailwind CSS v4 via `jaspr_tailwind`.
- **Fonts**: Stack Sans Notch (headlines) + Stack Sans Text (body) via Google Fonts.
- **State**: `bloc` + `jaspr_bloc` Cubits added only where interactivity requires shared state.
- **Motion**: CSS scroll-driven animations with `prefers-reduced-motion` respect; no JS scroll listeners.
