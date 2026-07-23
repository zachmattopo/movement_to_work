import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'footer.dart';
import 'site_header.dart';

class PageShell extends StatelessComponent {
  final List<Component> children;
  final bool showHeader;
  final bool showFooter;

  const PageShell({
    super.key,
    required this.children,
    this.showHeader = true,
    this.showFooter = true,
  });

  @override
  Component build(BuildContext context) {
    return div(classes: 'page-shell min-h-screen flex flex-col', [
      if (showHeader) const SiteHeader(),
      main_([div(classes: 'flex-1', children)]),
      if (showFooter) const Footer(),
    ]);
  }
}
