import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'top',
      theme: SectionTheme.ink,
      className: 'hero-section overflow-hidden',
      children: [
        div(
          classes: 'hero-motion-stage relative isolate overflow-hidden',
          [
            div(
              classes:
                  'hero-orb hero-orb--cyan pointer-events-none absolute -right-24 top-16 h-72 w-72 rounded-full '
                  'bg-cyan/20',
              attributes: {'aria-hidden': 'true'},
              [],
            ),
            div(
              classes:
                  'hero-orb hero-orb--chartreuse pointer-events-none absolute -bottom-24 left-1/4 h-64 w-64 '
                  'rounded-full bg-chartreuse/10',
              attributes: {'aria-hidden': 'true'},
              [],
            ),
            div(
              classes:
                  'hero-content relative mx-auto grid min-h-screen max-w-7xl items-center gap-12 px-6 py-28 sm:py-32 '
                  'lg:grid-cols-[minmax(0,1fr)_30rem] lg:gap-20',
              [
                div(
                  classes: 'hero-copy max-w-3xl',
                  [
                    p(
                      classes: 'hero-kicker font-body mb-5 text-sm font-semibold text-chartreuse',
                      [Component.text('For young people aged 18 to 24')],
                    ),
                    h1(
                      classes:
                          'hero-title font-headline text-5xl font-bold tracking-tight text-balance sm:text-6xl lg:text-8xl',
                      [Component.text('Movement To Work')],
                    ),
                    p(
                      classes:
                          'hero-slogan font-headline mt-5 text-2xl font-medium tracking-tight text-cyan-light '
                          'text-balance sm:text-3xl',
                      [Component.text('One Move, Many Possibilities')],
                    ),
                    p(
                      classes: 'font-body mt-8 max-w-2xl text-lg leading-relaxed text-text-inverse/85 sm:text-xl',
                      [
                        Component.text(
                          'Feeling nervous about starting is normal. I was too. Movement to Work gave me room '
                          'to explore what I enjoy, what I can do, and what I might want to try next.',
                        ),
                      ],
                    ),
                    div(
                      classes: 'mt-10',
                      [
                        PrimaryButton(
                          label: 'Contact your local Jobcentre Plus',
                          href: 'https://find-your-nearest-jobcentre.dwp.gov.uk/',
                          external: true,
                        ),
                      ],
                    ),
                  ],
                ),
                div(
                  classes:
                      'hero-artwork hidden aspect-[5/4] w-[30rem] items-center justify-center rounded-xl bg-chartreuse '
                      'p-8 lg:flex',
                  [
                    img(
                      src: 'images/logo.svg',
                      alt: '',
                      width: 440,
                      height: 574,
                      classes: 'h-auto w-full max-w-[24rem]',
                      attributes: {'aria-hidden': 'true'},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
