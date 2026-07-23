import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhatItIsSection extends StatelessComponent {
  const WhatItIsSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'what-it-is',
      children: [
        div(
          classes:
              'mx-auto grid max-w-7xl gap-10 px-6 py-20 md:py-28 lg:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] '
              'lg:gap-20',
          [
            h2(
              classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
              [Component.text('What It Is')],
            ),
            div(
              classes: 'max-w-3xl',
              [
                p(
                  classes: 'font-body text-lg leading-relaxed sm:text-xl',
                  [
                    Component.text(
                      'Movement to Work is a voluntary collaboration of leading employers, including the Civil Service '
                      'through the Department for Work and Pensions (DWP), for young people aged 18 to 24 who '
                      'want practical space to explore what work could look like for them.',
                    ),
                  ],
                ),
                p(
                  classes: 'font-body mt-6 text-lg leading-relaxed text-text/80 sm:text-xl',
                  [
                    Component.text(
                      'I could look at options, build on what I already had, and get a better feel for workplaces '
                      'and opportunities without needing to have my whole future planned out.',
                    ),
                  ],
                ),
                div(
                  classes: 'mt-8',
                  [
                    TextLink(
                      href: 'https://movementtowork.com/',
                      label: 'Learn more on the official Movement to Work website',
                      external: true,
                      showExternalIcon: true,
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
