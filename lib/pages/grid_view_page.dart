import 'package:flutter/material.dart';
import '../Widgets/big_card.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://cdn.pixabay.com/photo/2022/09/20/19/13/mountains-7468597_640.jpg",
      "https://cdn.pixabay.com/photo/2022/12/26/13/50/flower-7679117_960_720.jpg",
      "https://cdn.pixabay.com/photo/2023/01/10/00/17/italy-7708552_640.jpg",
      "https://cdn.pixabay.com/photo/2022/10/15/13/18/ground-ginseng-7523161__340.jpg",
      "https://cdn.pixabay.com/photo/2022/08/21/14/55/seagull-7401497__340.jpg",
      "https://cdn.pixabay.com/photo/2022/11/16/09/29/bottle-7595561__340.jpg",
      "https://cdn.pixabay.com/photo/2022/10/15/13/18/ground-ginseng-7523161__340.jpg",
      "https://cdn.pixabay.com/photo/2022/08/21/14/55/seagull-7401497__340.jpg",
      "https://cdn.pixabay.com/photo/2022/11/16/09/29/bottle-7595561__340.jpg",
      "https://cdn.pixabay.com/photo/2023/01/10/00/17/italy-7708552_640.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stadistic'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ...images
                .map(
                  (image) => BigCard(
                    image: image,
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
