import 'package:flutter/material.dart';
import '../widgets/search.dart';
import '../styles/constants.dart';
import './avatar.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.pageIndex}) : super(key: key);

  final int pageIndex;

  EdgeInsets getContentPadding(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 20);
        break;
      case 1:
        return EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 20);
        break;
      case 2:
        return EdgeInsets.only(left: 10, right: 10, top: 45, bottom: 5);
        break;
      default:
        return null;
        break;
    }
  }

  Widget getTitleWidget(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return Text(
          'Dashboard',
          style: headerTitleStyle,
        );
        break;
      case 1:
        return null;
        break;
      case 2:
        return Text(
          'Christos Mourtogiannis',
          style: headerTitleStyle,
        );
        break;
      default:
        return null;
        break;
    }
  }

  Widget getSubtitleWidget(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return Text(
          '10 cards',
          style: TextStyle(color: Colors.blue),
        );
        break;
      case 1:
        return null;
        break;
      case 2:
        return Text(
          'Settings',
          style: TextStyle(color: Colors.blue),
        );
        break;
      default:
        return null;
        break;
    }
  }

  Widget getTrailingWidget(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return Avatar();
        break;
      case 1:
        return IconButton(
          icon: Icon(
            Icons.add,
            size: 36,
            color: Colors.white,
          ),
          onPressed: () {
            //! Possible Pop up menu for adding new cards
          },
        );
        break;
      case 2:
        return null;
        break;
      default:
        return null;
        break;
    }
  }

  Widget getLeadingWidget(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return null;
        break;
      case 1:
        return Search();
        break;
      case 2:
        return Avatar();
        break;
      default:
        return null;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: getContentPadding(pageIndex),
      title: getTitleWidget(pageIndex),
      subtitle: getSubtitleWidget(pageIndex),
      trailing: getTrailingWidget(pageIndex),
      leading: getLeadingWidget(pageIndex),
    );
  }
}
