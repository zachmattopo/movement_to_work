import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhatIAmTakingForwardSection extends StatelessComponent {
  const WhatIAmTakingForwardSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'what-i-am-taking-forward',
      theme: SectionTheme.ink,
      children: [
        div(
          classes:
              'mx-auto grid max-w-7xl gap-10 px-6 py-20 md:py-28 lg:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
              'lg:gap-20',
          [
            h2(
              classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
              [Component.text('What I Am Taking Forward')],
            ),
            div(
              [
                p(
                  classes: 'font-headline max-w-2xl text-2xl font-medium tracking-tight text-cyan-light sm:text-3xl',
                  [Component.text('I am leaving with skills, confidence, and examples I can use.')],
                ),
                p(
                  classes: 'font-body mt-6 max-w-3xl text-lg leading-relaxed text-text-inverse/85',
                  [
                    Component.text(
                      'I can talk about what I have done, what I learned from it, and where I want to build from '
                      'there.',
                    ),
                  ],
                ),
                ul(
                  classes: 'mt-10 border-y border-text-inverse/20',
                  [
                    li(
                      classes:
                          'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                          'md:gap-8',
                      [
                        h3(
                          classes: 'font-headline text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('A clearer CV')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I can describe how I prepared applications, kept track of tasks, and used feedback '
                              'to make them clearer.',
                            ),
                          ],
                        ),
                      ],
                    ),
                    li(
                      classes:
                          'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                          'md:gap-8',
                      [
                        h3(
                          classes: 'font-headline text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('Interview examples')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I can talk about listening, communicating clearly, and responding to questions from '
                              'mock interview practice.',
                            ),
                          ],
                        ),
                      ],
                    ),
                    li(
                      classes:
                          'grid gap-3 border-b border-text-inverse/20 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
                          'md:gap-8',
                      [
                        h3(
                          classes: 'font-headline text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('Experience to draw on')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I can explain what front-desk reception taught me about greeting people, passing on '
                              'information, and staying focused.',
                            ),
                          ],
                        ),
                      ],
                    ),
                    li(
                      classes: 'grid gap-3 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] md:gap-8',
                      [
                        h3(
                          classes: 'font-headline text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('A practical next step')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I have a clearer idea of the roles and workplace environments I want to explore.',
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
        ),
      ],
    );
  }
}
