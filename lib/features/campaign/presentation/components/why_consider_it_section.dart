import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';

class WhyConsiderItSection extends StatelessComponent {
  const WhyConsiderItSection({super.key});

  @override
  Component build(BuildContext context) {
    return Section(
      id: 'why-consider-it',
      children: [
        div(
          classes: 'mx-auto max-w-4xl px-6 py-20 md:py-28',
          [
            h2(
              classes: 'font-headline text-4xl font-bold tracking-tight text-balance sm:text-5xl',
              [Component.text('Why Consider It')],
            ),
            p(
              classes: 'font-body mt-7 text-2xl font-medium tracking-tight text-balance sm:text-3xl',
              [Component.text('I did not have a finished plan when I started. You do not need one to ask about it.')],
            ),
            p(
              classes: 'font-body mt-7 max-w-3xl text-lg leading-relaxed text-text/80 sm:text-xl',
              [
                Component.text(
                  'Starting can feel overwhelming, especially if you’re unsure about your goals or  '
                  'worried you need all the answers. Movement to Work gives you a practical space to explore.',
                ),
              ],
            ),
            p(
              classes: 'font-body mt-5 max-w-3xl text-lg leading-relaxed text-text/80 sm:text-xl',
              [
                Component.text(
                  'It did not decide my future for me, but it gave me more to work with.',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
