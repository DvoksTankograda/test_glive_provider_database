import 'package:flutter/material.dart';
import 'package:test_glive_provider_database/pages/authorization_screen/authorization_page.dart';
import 'package:test_glive_provider_database/pages/list_screen/list_points_page.dart';
import 'package:url_launcher/link.dart';
// import 'package:url_launcher/url_launcher.dart';

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
          UserAccountsDrawerHeader(
            accountName: const Text('ava-analytycs'),
            accountEmail: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://ava-analytics.ru/'), //тут пытаюсь сделать кликабельную ссылку на сайт
              builder: (context, followLink) => TextButton(
                onPressed: followLink,
                child: const Text(
                  'Открыть сайт разработчиков',
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.map,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Map'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.list_alt_outlined,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListPoints(),
                        )),
                    child: const Text('List points'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.account_box_outlined,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthorizationPage(),
                        )),
                    child: const Text('Change account'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
