import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhatICouldExpectSection extends StatelessComponent {
  const WhatICouldExpectSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'what-i-could-expect',
      theme: SectionTheme.ink,
      children: [
        div(
          classes: 'mx-auto max-w-7xl px-6 py-20 md:py-28',
          [
            div(
              classes: 'max-w-3xl',
              [
                h2(
                  classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
                  [Component.text('What I Could Expect')],
                ),
                p(
                  classes: 'font-body mt-6 text-lg leading-relaxed text-text-inverse/85 sm:text-xl',
                  [
                    Component.text(
                      'I did not need to arrive with a fixed plan. I could expect practical support that helped me '
                      'prepare, ask questions, and try things out.',
                    ),
                  ],
                ),
              ],
            ),
            ul(
              classes: 'mt-12 border-y border-text-inverse/20',
              [
                li(
                  classes:
                      'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                      'md:gap-10',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight text-chartreuse',
                      [Component.text('Career and job-search resources')],
                    ),
                    p(
                      classes: 'font-body max-w-2xl leading-relaxed text-text-inverse/80',
                      [
                        Component.text(
                          'Information and tools to help me look at roles, routes into work, and the kinds of '
                          'vacancies that were out there.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes:
                      'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                      'md:gap-10',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight text-chartreuse',
                      [Component.text('CV preparation')],
                    ),
                    p(
                      classes: 'font-body max-w-2xl leading-relaxed text-text-inverse/80',
                      [
                        Component.text(
                          'Time to turn the things I had done into a CV that made sense to an employer.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes:
                      'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                      'md:gap-10',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight text-chartreuse',
                      [Component.text('Interview preparation')],
                    ),
                    p(
                      classes: 'font-body max-w-2xl leading-relaxed text-text-inverse/80',
                      [
                        Component.text(
                          'A chance to practise answering questions before I was sitting in a real interview.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes:
                      'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                      'md:gap-10',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight text-chartreuse',
                      [Component.text('Communication skills practice')],
                    ),
                    p(
                      classes: 'font-body max-w-2xl leading-relaxed text-text-inverse/80',
                      [
                        Component.text(
                          'Space to get more comfortable explaining my ideas, asking questions, and working with '
                          'other people.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'grid gap-3 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] md:gap-10',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight text-chartreuse',
                      [Component.text('Work exposure')],
                    ),
                    p(
                      classes: 'font-body max-w-2xl leading-relaxed text-text-inverse/80',
                      [
                        Component.text(
                          'A real look at how a workplace and its teams work day to day.',
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
