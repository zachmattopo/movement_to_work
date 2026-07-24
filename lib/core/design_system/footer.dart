import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      classes: 'site-footer bg-ink text-text-inverse',
      [
        div(
          classes:
              'max-w-7xl mx-auto px-6 py-12 '
              'flex flex-col md:flex-row items-center justify-between gap-4',
          [
            p(
              classes: 'font-body text-sm text-text-inverse/70 text-center md:text-left',
              [Component.text('Developed by Hafiz Nordin, Aberdeen Cohort July 2026.')],
            ),
            a(
              href: 'https://github.com/zachmattopo/movement_to_work',
              classes:
                  'font-body text-sm font-medium transition-colors duration-200 '
                  'hover:text-chartreuse focus-visible:outline-2 '
                  'focus-visible:outline-offset-2 focus-visible:outline-chartreuse',
              attributes: {'target': '_blank', 'rel': 'noopener noreferrer'},
              [
                img(
                  src: 'images/jaspr_logo.svg',
                  alt: 'Jaspr logo',
                  classes: 'w-4 h-5 inline-block mr-1.5',
                ),
                Component.text('Built with Jaspr'),
                span(
                  classes: 'inline-block w-3 h-3 ml-1',
                  attributes: {'aria-hidden': 'true'},
                  [
                    RawText(
                      '<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" '
                      'stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">'
                      '<path d="M6 2H3a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1v-3"/>'
                      '<path d="M9 2h5v5"/>'
                      '<path d="M14 2 7 9"/>'
                      '</svg>',
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
