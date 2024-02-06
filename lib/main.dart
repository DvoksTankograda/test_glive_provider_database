import 'package:flutter/material.dart';
import 'Pages/authorization_page.dart';
import 'package:provider/provider.dart';
import 'providers_app.dart';



void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProvidersModelOneMap()),
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




