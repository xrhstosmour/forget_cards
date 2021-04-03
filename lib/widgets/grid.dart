import 'package:flutter/material.dart';
import 'package:forget_cards/models/category.dart';
import '../widgets/tile.dart';

class Grid extends StatelessWidget {
  const Grid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 50),
        child: GridView.count(
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          crossAxisCount: 2,
          childAspectRatio: .90,
          physics: BouncingScrollPhysics(),
          children: categories.map((category) {
            return Tile(category);
          }).toList(),
        ),
      ),
    );
  }
}
