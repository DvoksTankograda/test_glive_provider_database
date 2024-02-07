import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';

class ControllerMapScreen extends ChangeNotifier {
  final mapController = MapController();
  List<LatLng> points = [];
  List<Marker> markers = [];
  LatLng? currentPos;

  void getCurrentPos() async{
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high, timeLimit: const Duration(seconds: 1));
    currentPos = LatLng(position.latitude, position.longitude);
    notifyListeners();
  }

  void retPositionMap(LatLng coordinate) {
    points.add(LatLng(coordinate.latitude, coordinate.longitude));
    markers.add(Marker(
        point: LatLng(coordinate.latitude, coordinate.longitude),
        builder:(context) =>
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