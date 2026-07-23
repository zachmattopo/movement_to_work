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
              'max-w-7xl mx-auto flex items-center justify-between '
              'px-6 py-4',
          [
            a(
              href: '/',
              classes: 'font-headline font-semibold text-lg tracking-tight',
              [.text('Movement To Work')],
            ),
            div(classes: 'flex items-center gap-6', [
              a(
                href: 'https://find-your-nearest-jobcentre.dwp.gov.uk/',
                classes:
                    'font-body text-sm font-medium transition-colors duration-200 '
                    'hover:text-chartreuse focus-visible:outline-2 '
                    'focus-visible:outline-offset-2 focus-visible:outline-chartreuse',
                attributes: {'target': '_blank', 'rel': 'noopener noreferrer'},
                [.text('Contact Jobcentre Plus')],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
