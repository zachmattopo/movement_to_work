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
        'primary-button inline-flex items-center justify-center gap-2 '
        'bg-chartreuse text-ink font-body font-semibold '
        'px-8 py-4 rounded-xl min-h-[44px] '
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
        },
        [Component.text(label)],
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
