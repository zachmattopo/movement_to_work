import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TextLink extends StatelessComponent {
  final String href;
  final String label;
  final bool external;
  final bool showExternalIcon;

  const TextLink({
    super.key,
    required this.href,
    required this.label,
    this.external = false,
    this.showExternalIcon = false,
  });

  @override
  Component build(BuildContext context) {
    return a(
      href: href,
      classes:
          'text-link inline-flex items-center gap-1 '
          'font-body font-medium underline underline-offset-2 '
          'decoration-1 transition-colors duration-200 '
          'hover:decoration-2 focus-visible:outline-2 '
          'focus-visible:outline-offset-2',
      attributes: {
        if (external) 'target': '_blank',
        if (external) 'rel': 'noopener noreferrer',
        if (showExternalIcon || external) 'aria-label': '$label (opens in a new tab)',
      },
      [
        Component.text(label),
        if (showExternalIcon || external)
          span(
            classes: 'external-icon inline-block w-4 h-4',
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
    );
  }
}
