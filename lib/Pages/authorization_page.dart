import 'package:flutter/material.dart';
import 'package:test_glive_provider_database/Pages/Widgets/authorization_widgets.dart';


class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Login to your account',
            ),
            centerTitle: true,
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              FormWidget(),
              const Text(
                'Введите логин и пароль, если у Вас нет аккаунта зарегистрируйтесь! Login: admin, Password: admin',
              ),
            ],
          ),
        )
    );
  }
}



