import 'package:jaspr/jaspr.dart';

import '../../../../core/design_system/design_system.dart';
import '../components/closing_cta_section.dart';
import '../components/hero_section.dart';
import '../components/what_i_am_taking_forward_section.dart';
import '../components/what_i_could_expect_section.dart';
import '../components/what_i_took_part_in_section.dart';
import '../components/what_it_is_section.dart';
import '../components/what_surprised_me_section.dart';
import '../components/why_consider_it_section.dart';

class CampaignPage extends StatelessComponent {
  const CampaignPage({super.key});

  @override
  Component build(BuildContext context) {
    return PageShell(
      children: [
        const HeroSection(),
        const WhatItIsSection(),
        const WhatICouldExpectSection(),
        const WhatITookPartInSection(),
        const WhatSurprisedMeSection(),
        const WhatIAmTakingForwardSection(),
        const WhyConsiderItSection(),
        const ClosingCtaSection(),
      ],
    );
  }
}
