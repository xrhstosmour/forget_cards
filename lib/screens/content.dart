import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../controllers/bar_controller.dart';
import 'package:get/get.dart';
import '../styles/constants.dart';
import '../widgets/grid.dart';

class Content extends StatelessWidget {
  Content({Key key}) : super(key: key);

  final BarController barController = Get.put(BarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: DecoratedBox(
        decoration: gradientBackgroundStyle,
        child: Column(
          children: [
            Header(pageIndex: barController.barIndex.value),
            // Grid(),
          ],
        ),
      ),
    ));
  }
}
