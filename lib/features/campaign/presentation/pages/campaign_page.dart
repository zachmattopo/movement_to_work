import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class CampaignPage extends StatelessComponent {
  const CampaignPage({super.key});

  @override
  Component build(BuildContext context) {
    return PageShell(
      children: [
        Section(
          theme: SectionTheme.ink,
          children: [
            div(
              classes:
                  'hero min-h-screen flex flex-col items-center justify-center '
                  'text-center px-6 py-24',
              [
                h1(
                  classes:
                      'font-headline text-5xl md:text-7xl lg:text-8xl '
                      'font-bold tracking-tight text-balance mb-4',
                  [Component.text('Movement To Work')],
                ),
                p(
                  classes:
                      'font-body text-lg md:text-xl lg:text-2xl '
                      'font-medium text-text-inverse/80 mb-8 max-w-2xl text-balance',
                  [Component.text('One Move, Many Possibilities.')],
                ),
                p(
                  classes:
                      'font-body text-base md:text-lg '
                      'text-text-inverse/70 max-w-xl mb-12 leading-relaxed',
                  [
                    Component.text(
                      'If you\'re feeling unsure about taking that first step, '
                      'you\'re not alone. This programme is built around you — '
                      'your pace, your interests, your next move.',
                    ),
                  ],
                ),
                PrimaryButton(
                  label: 'Contact your local Jobcentre Plus',
                  href: 'https://find-your-nearest-jobcentre.dwp.gov.uk/',
                  external: true,
                ),
              ],
            ),
          ],
        ),
        Section(
          theme: SectionTheme.surface,
          children: [
            div(
              classes: 'max-w-3xl mx-auto px-6 py-20 md:py-28',
              [
                h2(
                  classes:
                      'font-headline text-3xl md:text-4xl lg:text-5xl '
                      'font-bold tracking-tight text-balance mb-6',
                  [Component.text('What It Is')],
                ),
                p(
                  classes:
                      'font-body text-base md:text-lg leading-relaxed '
                      'text-text mb-6',
                  [
                    Component.text(
                      'Movement to Work is a voluntary collaboration between '
                      'employers and the Department for Work and Pensions. '
                      'It\'s designed to help young people aged 18 to 24 explore '
                      'what work could look like for them.',
                    ),
                  ],
                ),
                p(
                  classes:
                      'font-body text-base md:text-lg leading-relaxed '
                      'text-text mb-6',
                  [
                    Component.text(
                      'You get practical experience, support with your CV and '
                      'interview skills, and a real look at different workplaces — '
                      'all without any pressure to have everything figured out.',
                    ),
                  ],
                ),
                TextLink(
                  href: 'https://movementtowork.org.uk/',
                  label: 'Learn more on the official Movement to Work website',
                  external: true,
                  showExternalIcon: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
