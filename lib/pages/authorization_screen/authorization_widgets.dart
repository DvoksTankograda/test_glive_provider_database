import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_glive_provider_database/StylesApp/style_app.dart';
import 'package:test_glive_provider_database/pages/authorization_screen/controller_auth.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ControllerAuth>();
    final isError = provider.errorText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Visibility(
            visible: isError == false,
            child: const Text('Не верный логин или пароль',
                style: TextStyle(color: Colors.red)),
          ),
        ),
        const Text(
          'Username/Логин',
          style: StylesApp.sizeTextBlack,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        TextField(
          controller: provider.loginTextController,
          decoration: StylesApp.textFieldDecorator,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        const Text(
          'Password/Пароль',
          style: StylesApp.sizeTextBlack,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        TextField(
          controller: provider.passwordTextController,
          decoration: StylesApp.textFieldDecorator,
          obscureText: true,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10, top: 70),
            ),
            TextButton.icon(
              onPressed: () => provider.enter(context),
              style: StylesApp.blueButton,
              label: const Text('Enter/Войти'),
              icon: const Icon(Icons.account_box_outlined),
            ),
          ],
        )
      ],
    );
  }
}
