import 'package:flutter/material.dart';

class MovieSelector extends StatelessWidget {
  const MovieSelector({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> moviesCards = List.generate(
      10,
      (index) => Card(
        child: Stack(children: <Widget>[
          const Placeholder(),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Center(child: Text("Movie ${index + 1}")),
          ),
        ]),
      ),
    );
    return SizedBox(
      height: screenHeight - 250,
      width: 200,
      child: GridView.extent(
        maxCrossAxisExtent: 350,
        childAspectRatio: 2 / 3,
        children: moviesCards,
      ),
    );
  }
}
