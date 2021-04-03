import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bar_controller.dart';

class Bar extends StatelessWidget {
  final BarController barController = Get.put(BarController());
  Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: barController.barIndex.value,
      height: 50,
      items: [
        Icon(
          Icons.home,
          size: 35,
          color: Colors.white,
        ),
        Icon(
          Icons.ballot_sharp,
          size: 35,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          size: 35,
          color: Colors.white,
        ),
      ],
      color: Color(0xFF1A3851),
      buttonBackgroundColor: Color(0xFF1A3851),
      backgroundColor: Color(0xFF142B3E),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 400),
      onTap: (index) {
        barController.setIndex(index);
      },
      letIndexChange: (index) => true,
    );
  }
}
