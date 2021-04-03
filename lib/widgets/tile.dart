import 'package:flutter/material.dart';
import '../styles/constants.dart';
import '../models/category.dart';

class Tile extends StatelessWidget {
  final Category category;

  Tile(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          '/${category.title.toLowerCase()}',
        ),
        onLongPress: () => showMenu(context: null, position: null, items: null),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Color(0xFF142b3E),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                category.image,
                width: 50,
                height: 50,
              ),
              SizedBox(height: 14),
              Text(
                category.title,
                style: categoryTitleStyle,
              ),
              SizedBox(height: 8),
              Text(
                category.subtitle,
                style: categorySubtitleStyle,
              ),
              SizedBox(height: 14),
              Text(
                category.info,
                style: categoryInfoStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
