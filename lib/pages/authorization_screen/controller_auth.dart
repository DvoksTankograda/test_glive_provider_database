import 'package:flutter/material.dart';
import '../map_screen/map_page.dart';


class ControllerAuth extends ChangeNotifier {
  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool? errorBool;

  void enter(BuildContext context) {
    final login = loginTextController.text;
    final password = passwordTextController.text;

    if(login == 'admin' && password == 'admin') {
      errorBool = true;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MapPage(),
          ));
      notifyListeners();
    } else {
      errorBool = false;
      notifyListeners();
    }
  }
}