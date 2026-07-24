import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../features/campaign/presentation/pages/campaign_page.dart';
import 'app_routes.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      Router(
        routes: [
          Route(
            path: '/',
            title: title,
            builder: (context, state) => const CampaignPage(),
          ),
        ],
      ),
    ]);
  }
}
