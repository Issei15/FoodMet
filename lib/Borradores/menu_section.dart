import 'package:flutter/material.dart';

import 'categories_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Section"),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // MaterialPageRoute route =
                //     MaterialPageRoute(builder: (context) => const MenuPage());
                // Navigator.push(context, route);

                Navigator.pushNamed(context, "/main");
              },
              child: const Text("This is the home page"),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("data"))
          ],
        ),
      ],
    );
  }
}
