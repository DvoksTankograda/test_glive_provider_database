import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:provider/provider.dart';
import 'package:test_glive_provider_database/pages/map_screen/controller_map.dart';
import 'package:test_glive_provider_database/pages/map_screen/map_widgets.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ControllerMapScreen>();
    provider.getCurrentPos();

    return Scaffold(
      drawer: const MenuList(),
      appBar: AppBar(
        title: const Text('Map screen'),
        centerTitle: true,
      ),
      body: FlutterMap(
        mapController: provider.mapController,
        options: MapOptions(
          center: provider.currentPos,
          zoom: 12,
          onTap: (position, latLng) => provider.retPositionMap(position, latLng),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.flutter_map_example',
          ),
          CurrentLocationLayer(
            turnOnHeadingUpdate: TurnOnHeadingUpdate.always,
          ),
          MarkerLayer(
            markers: provider.markers,
          ),
        ],
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: ListWidget(),
      ),
    );
  }
}
