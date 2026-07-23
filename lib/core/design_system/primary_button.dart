import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class PrimaryButton extends StatelessComponent {
  final String label;
  final String? href;
  final bool external;
  final VoidCallback? onClick;

  const PrimaryButton({
    super.key,
    required this.label,
    this.href,
    this.external = false,
    this.onClick,
  });

  @override
  Component build(BuildContext context) {
    final classes =
        'primary-button inline-flex max-w-full items-center justify-center gap-2 '
        'bg-chartreuse text-ink font-body font-semibold '
        'px-5 py-4 sm:px-8 rounded-xl min-h-[44px] text-center whitespace-normal '
        'transition-colors duration-200 '
        'hover:bg-chartreuse-dark focus-visible:outline-2 '
        'focus-visible:outline-offset-2 focus-visible:outline-chartreuse';

    if (href != null) {
      return a(
        href: href!,
        classes: classes,
        attributes: {
          if (external) 'target': '_blank',
          if (external) 'rel': 'noopener noreferrer',
          if (external) 'aria-label': '$label (opens in a new tab)',
        },
        [
          span(classes: 'min-w-0', [Component.text(label)]),
          if (external)
            span(
              classes: 'inline-block h-4 w-4 shrink-0',
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

    return button(
      type: ButtonType.button,
      classes: classes,
      onClick: onClick,
      [Component.text(label)],
    );
  }
}
