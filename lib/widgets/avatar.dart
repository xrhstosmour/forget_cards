import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  Avatar({Key key}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  final imagePicker = ImagePicker();
  File image;

  Future changeAvatar() async {
    try {
      final pickedImage = await imagePicker.getImage(
        source: ImageSource.gallery,
      );
      setState(() {
        if (pickedImage != null) {
          image = File(pickedImage.path);
        } else {
          print('No image selected!');
        }
      });
    } catch (exception) {
      // ! Add try catch for Exception and PlatformException via permission_handler.
      print(exception.error());
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeAvatar,
      child: CircleAvatar(
        backgroundImage: (image != null && image.existsSync())
            ? Image.file(
                image,
                fit: BoxFit.contain,
              ).image
            : Image.asset(
                'assets/icons/avatar.png',
                fit: BoxFit.contain,
              ).image,
        backgroundColor: Colors.transparent,
        radius: 30,
      ),
    );
  }
}
