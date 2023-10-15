import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'Pages/home.dart';
import 'Pages/terms/agreement.dart';

final simpleLocationBuilder = RoutesLocationBuilder(
  routes: {
    '/': (context, state, data) => const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          child: HomePage(),
        ),
    '/about/terms': (context, state, data) {
      return const BeamPage(
        key: ValueKey(''),
        title: "",
        child: AgreementPage(),
      );
    },
  },
);
