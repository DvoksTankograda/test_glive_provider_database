import 'package:flutter/material.dart';
import 'package:test_glive_provider_database/pages/authorization_screen/authorization_page.dart';
import 'package:test_glive_provider_database/pages/list_screen/list_points_page.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListPoints(),
              ));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: const [
              Icon(
                Icons.list_alt_outlined,
              ),
              Text("List"),
            ],
          ),
        ) //const Icon(Icons.list_alt_outlined),
        );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('ava-analytycs_group'),
            accountEmail: Text('Тут будет ссылка сайта'),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Map'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListPoints(),
                    )),
                child: const Text('List points'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthorizationPage(),
                    )),
                child: const Text('Change account'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
