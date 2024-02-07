import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ProvidersApp/providers_app.dart';

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
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: listPoints.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                title: Text(listPoints[index].toString()),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_sweep_outlined,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    provider.deletePoint(index);
                  },
                ),
              ),
            );
          }),
    );
  }
}
