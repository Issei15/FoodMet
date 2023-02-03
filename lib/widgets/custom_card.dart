import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.imagen,
  }) : super(key: key);

  final String imagen;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FadeInImage.assetNetwork(
        placeholder: "images/loading.gif",
        image: imagen,
        fit: BoxFit.cover,
      ),
    );
  }
}
