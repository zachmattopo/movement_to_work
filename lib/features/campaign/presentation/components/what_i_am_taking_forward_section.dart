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
                  classes: 'font-body max-w-2xl text-2xl font-medium tracking-tight text-cyan-light sm:text-3xl',
                  [Component.text('I am leaving with skills, confidence, and examples I can use.')],
                ),
                p(
                  classes: 'font-body mt-6 max-w-3xl text-lg leading-relaxed text-text-inverse/85',
                  [
                    Component.text(
                      'Now I am better equipped to get out there and explore work.',
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
                          classes: 'font-body text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('A clearer CV')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I\'ve created a master CV that I can tailor for all my future applications.',
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
                          classes: 'font-body text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('Interview skills')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I can talk with confidence about my skills and experiences, in a way that shows I am ready for work.',
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
                          classes: 'font-body text-xl font-semibold tracking-tight text-chartreuse',
                          [Component.text('Experience to draw on')],
                        ),
                        p(
                          classes: 'font-body leading-relaxed text-text-inverse/80',
                          [
                            Component.text(
                              'I am more aware of my skills acquired from life and education that are transferable to the work environment.',
                            ),
                          ],
                        ),
                      ],
                    ),
                    li(
                      classes: 'grid gap-3 py-6 md:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] md:gap-8',
                      [
                        h3(
                          classes: 'font-body text-xl font-semibold tracking-tight text-chartreuse',
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
