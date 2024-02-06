import 'package:flutter/material.dart';
import 'package:test_glive_provider_database/Pages/map_page.dart';
import 'package:test_glive_provider_database/style_app.dart';



class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  String? errorText;


  void enter(BuildContext context) {
    final login = loginTextController.text;
    final password = passwordTextController.text;

    if(login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MapPage(),
          ));
    } else {
      errorText = 'Не верный логин или пароль';
    }

  }



  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if(errorText != null)
          Text(errorText, style: const TextStyle(color: Colors.red)),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        const Text(
          'Username/Логин',
          style: StylesApp.sizeTextBlack,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        TextField(
          controller: loginTextController,
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
          decoration: StylesApp.textFieldDecorator,
          controller: passwordTextController,
          obscureText: true,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10, top: 70),
            ),
            TextButton.icon(
              onPressed: () => enter,
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