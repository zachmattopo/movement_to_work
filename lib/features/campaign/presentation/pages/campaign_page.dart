import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CampaignPage extends StatelessComponent {
  const CampaignPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'campaign-page', [
      section(classes: 'hero', [
        h1([.text('Movement To Work')]),
        p([.text('One Move, Many Possibilities.')]),
      ]),
    ]);
  }
}
