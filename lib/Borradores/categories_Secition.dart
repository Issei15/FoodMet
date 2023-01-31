import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
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
                // Navigator.pushNamed(context, '/home');
                // Navigator.pushReplacementNamed(context, );
                // Navigator.popAndPushNamed(context, '/home');
                Navigator.pop(context);
              },
              child: const Text("Home"),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/subcategories');
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/subcategories');
                },
                child: const Text("Subcategories")),
          ],
        )
      ],
    );
  }
}
