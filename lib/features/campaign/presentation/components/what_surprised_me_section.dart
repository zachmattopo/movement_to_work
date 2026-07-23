import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhatSurprisedMeSection extends StatelessComponent {
  const WhatSurprisedMeSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'what-surprised-me',
      theme: SectionTheme.chartreuse,
      children: [
        div(
          classes: 'mx-auto grid max-w-7xl gap-12 px-6 py-20 md:py-28 lg:grid-cols-2 lg:gap-20',
          [
            div(
              classes: 'max-w-xl',
              [
                h2(
                  classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
                  [Component.text('What Surprised Me')],
                ),
                p(
                  classes: 'font-body mt-6 text-lg leading-relaxed sm:text-xl',
                  [
                    Component.text(
                      'I expected to learn about work. I did not expect to learn so much about how I work.',
                    ),
                  ],
                ),
              ],
            ),
            ul(
              classes: 'border-y border-ink/25',
              [
                li(
                  classes: 'border-b border-ink/25 py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('The sort of workplace I prefer')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed',
                      [
                        Component.text(
                          'I noticed I value a place where I can ask questions, understand the routine, and work '
                          'with people who communicate clearly.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'border-b border-ink/25 py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('What gives work meaning for me')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed',
                      [
                        Component.text(
                          'I could name what motivates me: being useful, learning something new, and seeing how '
                          'my contribution helps other people.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('Skills I had already built')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed',
                      [
                        Component.text(
                          'Things from life, education, and past work counted: organising my time, listening, '
                          'keeping calm, and helping others.',
                        ),
                      ],
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
