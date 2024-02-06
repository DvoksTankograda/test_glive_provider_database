import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers_app.dart';
import 'package:latlong2/latlong.dart';

class ListPoints extends StatelessWidget {
  const ListPoints({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProvidersModelOneMap>();
    final listPoints = provider.points;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('List Points'),
        centerTitle: true,),
      body: ListView.builder(
        itemCount: listPoints.length,
        itemBuilder:(BuildContext context , index) {
          return Dismissible(
            key: ValueKey<LatLng>(listPoints[index]),
            child: Card(
              child: ListTile(title: Text(listPoints[index].toString()),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_sweep_outlined,
                    color: Colors.red,
                  ),
                  onPressed:() {
                    provider.deletePoint(index);
                  },
                ),
              ),
            ),
            onDismissed:(direction) {
              provider.deletePoint(index);
            },
          );
        },
      ),
    );
  }
}
