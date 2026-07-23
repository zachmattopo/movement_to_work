import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

enum SectionTheme {
  surface,
  ink,
  cyan,
  chartreuse,
}

class Section extends StatelessComponent {
  final List<Component> children;
  final SectionTheme theme;
  final String? id;
  final String? className;

  const Section({
    super.key,
    required this.children,
    this.theme = SectionTheme.surface,
    this.id,
    this.className,
  });

  @override
  Component build(BuildContext context) {
    String bgClass;
    String textClass;

    switch (theme) {
      case SectionTheme.ink:
        bgClass = 'bg-ink';
        textClass = 'text-text-inverse';
      case SectionTheme.cyan:
        bgClass = 'bg-cyan';
        textClass = 'text-ink';
      case SectionTheme.chartreuse:
        bgClass = 'bg-chartreuse';
        textClass = 'text-ink';
      case SectionTheme.surface:
        bgClass = 'bg-surface';
        textClass = 'text-text';
    }

    return section(
      id: id,
      classes: 'section $bgClass $textClass ${className ?? ''}'.trim(),
      children,
    );
  }
}
