import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'pages/lulab.dart';
import 'pages/terms/agreement.dart';

final simpleLocationBuilder = RoutesLocationBuilder(
  routes: {
    '*': (context, state, data) => const SizedBox(),
    '/': (context, state, data) => const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          type: BeamPageType.scaleTransition,
          child: LulabPage(),
        ),
    '/about/terms': (context, state, data) {
      return const BeamPage(
        key: ValueKey('/about/terms'),
        title: "/about/terms",
        type: BeamPageType.scaleTransition,
        child: AgreementPage(),
      );
    },
  },
);
