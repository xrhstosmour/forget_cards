import 'package:flutter/material.dart';
import '../controllers/bar_controller.dart';
import 'package:get/get.dart';
import '../styles/constants.dart';
import '../widgets/grid.dart';
import '../widgets/header.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key key}) : super(key: key);

  final BarController barController = Get.put(BarController());

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: gradientBackgroundStyle,
      child: Column(
        children: [
          Header(pageIndex: barController.barIndex.value),
          Grid(),
        ],
      ),
    );
  }
}
