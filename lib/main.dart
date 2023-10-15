import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'location_builders.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    // As locationBuilder you can either use SimpleLocationBuilder or BeamerLocationBuilder.
    // They are interchangeable, depending on personal taste (in this case).
    // You can find both implementations in the location_builders.dart file.
    //
    // OPTION A: SimpleLocationBuilder
    locationBuilder: simpleLocationBuilder,
    //
    // OPTION B: BeamerLocationBuilder
    //locationBuilder: beamerLocationBuilder,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
