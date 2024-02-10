import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:objectbox/objectbox.dart';



class ControllerMapScreen extends ChangeNotifier {
  final mapController = MapController();
  List<LatLng> points = [];
  List<Marker> markers = [];
  LatLng? currentPos;


  void getCurrentPos() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 1));
    currentPos = LatLng(position.latitude, position.longitude);
    notifyListeners();
  }

  void retPositionMap(position, LatLng coordinate) {
    points.add(LatLng(coordinate.latitude, coordinate.longitude));
    markers.add(Marker(
        point: LatLng(coordinate.latitude, coordinate.longitude),
        builder: (context) => const Icon(
              Icons.add_circle_outline,
            )));
    notifyListeners();
  }

  void deletePoint(int index) {
    points.removeAt(index);
    markers.removeAt(index);
    notifyListeners();
  }

  void clearList() {
    points.clear();
    markers.clear();
    notifyListeners();
  }



  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
    notifyListeners();
  }
}