import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhatITookPartInSection extends StatelessComponent {
  const WhatITookPartInSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'what-i-took-part-in',
      children: [
        div(
          classes: 'mx-auto grid max-w-7xl gap-12 px-6 py-20 md:py-28 lg:grid-cols-2 lg:gap-20',
          [
            div(
              classes: 'max-w-xl',
              [
                h2(
                  classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
                  [Component.text('What I Took Part In')],
                ),
                p(
                  classes: 'font-body mt-6 text-lg leading-relaxed text-text/80 sm:text-xl',
                  [
                    Component.text(
                      'The activities were practical. I could ask questions, take part, and reflect on what I '
                      'learned as I went.',
                    ),
                  ],
                ),
              ],
            ),
            ul(
              classes: 'experience-timeline border-y border-ink/15',
              [
                li(
                  classes: 'experience-step border-b border-ink/15 py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('Career presentation')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed text-text/80',
                      [
                        Component.text(
                          'They gave me inspirational insights into a real-world career journey.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'experience-step border-b border-ink/15 py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('Job and apprenticeship application support')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed text-text/80',
                      [
                        Component.text(
                          'I received help to understand what an application was asking for and to frame my application '
                          'accordingly.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'experience-step border-b border-ink/15 py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('Mock interviews')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed text-text/80',
                      [
                        Component.text(
                          'I could practise answers in a low-pressure setting, pause, and try again.',
                        ),
                      ],
                    ),
                  ],
                ),
                li(
                  classes: 'experience-step py-7',
                  [
                    h3(
                      classes: 'font-headline text-2xl font-semibold tracking-tight',
                      [Component.text('DWP front-desk reception experience')],
                    ),
                    p(
                      classes: 'font-body mt-3 max-w-2xl leading-relaxed text-text/80',
                      [
                        Component.text(
                          'It showed me how much clear communication, listening, and care matter when helping '
                          'someone find the right information.',
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
