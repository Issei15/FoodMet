import 'package:flutter/material.dart';

import 'subcategories_section.dart';

class SubcategoriesPage extends StatefulWidget {
  const SubcategoriesPage({super.key});

  @override
  State<SubcategoriesPage> createState() => _SubcategoriesPageState();
}

class _SubcategoriesPageState extends State<SubcategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subcategoriess"),
      ),
      body: const Subcategories(),
    );
  }
}


