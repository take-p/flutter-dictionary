import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerSample extends StatefulWidget {
  const ImagePickerSample({Key? key}) : super(key: key);

  @override
  State<ImagePickerSample> createState() => _ImagePickerSample();
}

class _ImagePickerSample extends State<ImagePickerSample> {
  @override
  Widget build(BuildContext context) {
    File imageFile;
    chooseImage() async {
      final getImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      setState(() {
        if (getImage != null) {
          imageFile = File(getImage.path);
        }
      });
    }
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        /*for (int i = 0; i < 30; i++)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(
                  imageFile,
                ),
              ),
            ),
          );*/
      ],
    );
  }
}
