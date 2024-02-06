import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart'; // не могу найти решение данной ошибки
import 'package:flutter_map/flutter_map.dart';
import 'Pages/map_page.dart';






class ProvidersModelOneMap extends ChangeNotifier {
  final mapController = MapController();
  List<LatLng> points = [];
  List<Marker> markers = [];
  LatLng? currentPos;

  getCurrentPos() async{
    final position = await Geolocator.getCurrentPosition();
    currentPos = LatLng(position.latitude, position.longitude);
    notifyListeners();
  }

  void retPositionMap(LatLng coordinate) {
    points.add(LatLng(coordinate.latitude, coordinate.longitude));
    markers.add(Marker(
        point: LatLng(coordinate.latitude, coordinate.longitude),
        builder: (context) =>
        const Icon(
          Icons.accessibility_new_outlined,
        )));
    notifyListeners();
  }

  void deletePoint(int index) {
    points.removeAt(index);
    markers.removeAt(index);
    notifyListeners();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
    notifyListeners();
  }
}


class ProviderModelTwoAuth extends ChangeNotifier {
  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool? errorText;

  void enter(BuildContext context) {
    final login = loginTextController.text;
    final password = passwordTextController.text;

    if(login == 'admin' && password == 'admin') {
      errorText = true;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MapPage(),
          ));
      notifyListeners();
    } else {
      errorText = false;
      // errorText = 'Не верный логин или пароль';
      notifyListeners();
    }
  }
}
