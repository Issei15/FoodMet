import 'package:flutter/material.dart';

import 'categories_Secition.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: const Categories(),
    );
  }
}



// Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 MaterialPageRoute route =
//                     MaterialPageRoute(builder: (context) => const HomePage());
//                 Navigator.push(context, route);
//               },
//               child: const Text(
//                 "This is the categories page",
//                 style: TextStyle(fontSize: 20),
//               )),
//         // ),