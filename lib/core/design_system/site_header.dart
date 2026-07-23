import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  @override
  Component build(BuildContext context) {
    return header(
      classes:
          'site-header fixed top-0 left-0 right-0 z-50 '
          'bg-ink/90 backdrop-blur-sm text-text-inverse',
      [
        nav(
          classes:
              'max-w-7xl mx-auto flex items-center justify-between gap-3 '
              'px-4 py-2 sm:px-6 sm:py-4',
          [
            a(
              href: '/',
              classes:
                  'inline-flex min-h-[44px] items-center font-headline '
                  'font-semibold text-base tracking-tight sm:text-lg',
              [.text('Movement To Work')],
            ),
            div(classes: 'flex shrink-0 items-center', [
              a(
                href: 'https://find-your-nearest-jobcentre.dwp.gov.uk/',
                classes:
                    'inline-flex min-h-[44px] max-w-28 items-center text-right '
                    'font-body text-xs font-medium leading-tight transition-colors duration-200 '
                    'hover:text-chartreuse focus-visible:outline-2 '
                    'focus-visible:outline-offset-2 focus-visible:outline-chartreuse '
                    'sm:max-w-none sm:text-sm',
                attributes: {
                  'target': '_blank',
                  'rel': 'noopener noreferrer',
                  'aria-label': 'Contact Jobcentre Plus (opens in a new tab)',
                },
                [
                  span(classes: 'text-right', [.text('Contact Jobcentre Plus')]),
                ],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
