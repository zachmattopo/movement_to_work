import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class ClosingCtaSection extends StatelessComponent {
  const ClosingCtaSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'contact',
      theme: SectionTheme.ink,
      children: [
        div(
          classes: 'mx-auto max-w-4xl px-6 py-20 text-center md:py-28',
          [
            h2(
              classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
              [Component.text('Talk To Your Local Jobcentre Plus')],
            ),
            p(
              classes: 'font-body mx-auto mt-6 max-w-2xl text-lg leading-relaxed text-text-inverse/85 sm:text-xl',
              [
                Component.text(
                  'Your local Jobcentre Plus can talk through '
                  'whether Movement to Work could be a useful next step for you.',
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
            p(
              classes: 'font-body mt-5 text-sm text-text-inverse/70',
              [Component.text('Opens the Jobcentre Plus finder in a new tab.')],
            ),
          ],
        ),
      ],
    );
  }
}
