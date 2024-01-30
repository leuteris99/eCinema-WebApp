import 'package:flutter/material.dart';

class TheaterSelector extends StatelessWidget {
  const TheaterSelector({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> theatersCards = List.generate(
      10,
      (index) => GridTile(
        child: Center(
          child: Card(
            child: GridTileBar(
              title: Text(
                "Theater $index",
                style: const TextStyle(color: Colors.black),
              ),
              trailing: Text("Address $index"),
            ),
          ),
        ),
      ),
    );
    return SizedBox(
      height: 250,
      child: GridView.extent(
        childAspectRatio: 5,
        maxCrossAxisExtent: 600,
        children: theatersCards,
      ),
    );
  }
}
