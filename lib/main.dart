import 'package:flutter/material.dart';
import 'package:test_glive_provider_database/pages/authorization_screen/authorization_page.dart';
import 'package:test_glive_provider_database/pages/authorization_screen/controller_auth.dart';
import 'package:test_glive_provider_database/pages/map_screen/controller_map.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ControllerMapScreen()),
      ChangeNotifierProvider(create: (context) => ControllerAuth()),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthorizationPage(),
    );
  }
}




