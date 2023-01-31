import 'package:flutter/material.dart';

class Subcategories extends StatelessWidget {
  const Subcategories({
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
                  Navigator.pop(context);
                },
                child: const Text("Home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                },
                child: const Text("Product"))
          ],
        )
      ],
    );
  }
}
