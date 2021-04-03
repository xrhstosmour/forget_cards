import 'package:flutter/material.dart';
import '../controllers/bar_controller.dart';
import '../styles/constants.dart';
import '../widgets/header.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _biometricsEnabled = true;
  bool _themeEnabled = true;
  String _biometricStatus = "On";
  String _themeStatus = "Dark";

  final BarController barController = Get.put(BarController());

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: gradientBackgroundStyle,
      child: Column(
        children: [
          Header(pageIndex: barController.barIndex.value),
          const SizedBox(height: 20.0),
          ListTile(
            title: Text(
              "Language",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              "English",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade400,
            ),
            onTap: () {},
          ),
          SwitchListTile(
            title: Text(
              "Biometric Authentication",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              _biometricStatus,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            value: _biometricsEnabled,
            onChanged: (bool value) {
              setState(() {
                _biometricsEnabled = value;
                // ! Fix _biometricStatus.
                // if (_biometricsEnabled) {
                //   _biometricStatus == "Off";
                // } else {
                //   _biometricStatus == "On";
                // }
              });
            },
          ),
          SwitchListTile(
            title: Text(
              "Theme",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              _themeStatus,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            // activeThumbImage: Image.asset(
            //   'assets/icons/avatar.png',
            //   fit: BoxFit.contain,
            // ).image,
            // inactiveThumbImage: Image.asset(
            //   'assets/icons/avatar.png',
            //   fit: BoxFit.contain,
            // ).image,
            value: _themeEnabled,
            onChanged: (bool value) {
              setState(() {
                _themeEnabled = value;
                // ! Fix _themStatus.
              });
            },
          ),
          ListTile(
            title: Text(
              "Import",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              "Import existing configuration",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade400,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Export",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              "Export the application's configuration",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade400,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Delete",
              style: headerTitleStyle,
            ),
            subtitle: Text(
              "Delete the user data",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade400,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
    // return Scaffold(

    //   backgroundColor: Colors.black,
    //   body: Theme(
    //     data: Theme.of(context).copyWith(
    //       brightness: Brightness.dark,
    //       primaryColor: Colors.purple,
    //     ),
    //     child: DefaultTextStyle(
    //       style: TextStyle(
    //         color: Colors.white,
    //       ),
    //       child: SingleChildScrollView(
    //         padding: const EdgeInsets.all(32.0),
    //         child: Column(
    //           children: <Widget>[
    //             const SizedBox(height: 30.0),
    //             Row(
    //               children: [
    //                 Avatar(),
    //                 const SizedBox(width: 10.0),
    //                 Expanded(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       Text(
    //                         "Jane Doe",
    //                         style: TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 20.0,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Nepal",
    //                         style: TextStyle(
    //                           color: Colors.grey.shade400,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 20.0),
    //             ListTile(
    //               title: Text(
    //                 "Languages",
    //                 style: headerTitleStyle,
    //               ),
    //               subtitle: Text(
    //                 "English US",
    //                 style: greyTExt,
    //               ),
    //               trailing: Icon(
    //                 Icons.keyboard_arrow_right,
    //                 color: Colors.grey.shade400,
    //               ),
    //               onTap: () {},
    //             ),
    //             ListTile(
    //               title: Text(
    //                 "Profile Settings",
    //                 style: headerTitleStyle,
    //               ),
    //               subtitle: Text(
    //                 "Jane Doe",
    //                 style: greyTExt,
    //               ),
    //               trailing: Icon(
    //                 Icons.keyboard_arrow_right,
    //                 color: Colors.grey.shade400,
    //               ),
    //               onTap: () {},
    //             ),
    //             SwitchListTile(
    //               title: Text(
    //                 "Email Notifications",
    //                 style: headerTitleStyle,
    //               ),
    //               subtitle: Text(
    //                 "On",
    //                 style: greyTExt,
    //               ),
    //               value: true,
    //               onChanged: (val) {},
    //             ),
    //             SwitchListTile(
    //               title: Text(
    //                 "Push Notifications",
    //                 style: headerTitleStyle,
    //               ),
    //               subtitle: Text(
    //                 "Off",
    //                 style: greyTExt,
    //               ),
    //               value: false,
    //               onChanged: (val) {},
    //             ),
    //             ListTile(
    //               title: Text(
    //                 "Logout",
    //                 style: headerTitleStyle,
    //               ),
    //               onTap: () {},
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    //   // bottomNavigationBar: Navigation(),
    // );
  }
}
