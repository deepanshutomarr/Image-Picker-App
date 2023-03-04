import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:getwidget/getwidget.dart';
import 'package:http/http.dart';

class UploadProfileImage extends StatefulWidget {
  const UploadProfileImage({Key? key}) : super(key: key);

  @override
  State<UploadProfileImage> createState() => _UploadProfileImageState();
}

class _UploadProfileImageState extends State<UploadProfileImage> {
  final ImagePicker imgpicker = ImagePicker();

  List<XFile>? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      // final photo = await ImagePicker().pickImage(source: imageType);
      // you can use ImageCourse.camera for Camera capture

      if (pickedfiles == null) return;

      setState(() {
        pickedImage = pickedfiles;
      });
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IMAGE PICKER'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  pickedImage != null
                      ? Wrap(
                          children: pickedImage!.map(
                            (imageone) {
                              return Container(
                                child: Card(
                                  child: Container(
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(6),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.file(
                                              File(imageone.path),
                                            ),
                                          ),
                                        ),
                                        GFButton(
                                          onPressed: () {
                                            setState(() {
                                              pickedImage!.removeAt(0);
                                            });
                                          },
                                          text: "Delete",
                                          shape: GFButtonShape.pills,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // padding: EdgeInsets.all(50),
                              );
                            },
                          ).toList(),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        padding: EdgeInsets.all(20),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          imagePickerOption();
        },
        label: const Text('UPLOAD IMAGES'),
        icon: const Icon(Icons.upload_file),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
