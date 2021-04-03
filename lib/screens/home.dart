import 'package:flutter/material.dart';
import 'package:forget_cards/controllers/bar_controller.dart';
import 'package:forget_cards/screens/content.dart';
import 'package:forget_cards/screens/dashboard.dart';
import 'package:forget_cards/screens/settings.dart';
import 'package:forget_cards/widgets/bar.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  final BarController barController = Get.put(BarController());

  Widget getWidgetPerIndex(int index) {
    switch (index) {
      case 0:
        return Dashboard();
        break;
      case 1:
        return Content();
        break;
      case 2:
        return Settings();
        break;
      default:
        return null;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => getWidgetPerIndex(barController.barIndex.value)),
      ),
      bottomNavigationBar: Bar(),
    );
  }
}
