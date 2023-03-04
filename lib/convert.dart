// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:getwidget/getwidget.dart';
// import 'package:image_picker/image_picker.dart';

// class ConvertImage extends StatefulWidget {
//   const ConvertImage({Key? key}) : super(key: key);

//   @override
//   State<ConvertImage> createState() => _ConvertImageState();
// }

// class _ConvertImageState extends State<ConvertImage> {
//   void imagePickerOption() {
//     Get.bottomSheet(
//       SingleChildScrollView(
//         child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(10.0),
//             topRight: Radius.circular(10.0),
//           ),
//           child: Container(
//             color: Colors.white,
//             height: 250,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Text(
//                     "Pic Image From",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       _pickImageBase64();
//                     },
//                     icon: const Icon(Icons.camera),
//                     label: const Text("CAMERA"),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       _pickImageBase64();
//                     },
//                     icon: const Icon(Icons.image),
//                     label: const Text("GALLERY"),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       Get.back();
//                     },
//                     icon: const Icon(Icons.close),
//                     label: const Text("CANCEL"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   File? _imageFile; // picked image will be store here.
//   final ImagePicker _picker = ImagePicker(); //instance of image_picker
//   // a function to pick image and convert it into base64 string
//   void _pickImageBase64() async {
//     try {
//       // pick image from gallery, change ImageSource.camera if you want to capture image from camera.
//       final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//       if (image == null) return;
//       // read picked image byte data.
//       Uint8List imagebytes = await image.readAsBytes();
//       // using base64 encoder convert image into base64 string.
//       String _base64String = base64.encode(imagebytes);
//       print(_base64String);

//       final imageTemp = File(image.path);
//       setState(() {
//         this._imageFile =
//             imageTemp; // setState to image the UI and show picked image on screen.
//       });
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print('error');
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _imageFile == null
//                   // ? Container()
//                   // : Image.file(
//                   //     _imageFile!,
//                   //     width: double.infinity,
//                   //   ), // show picked image here
//                    ? Wrap(
//                           children: _imageFile!.map(
//                             (imageone) {
//                               return Container(
//                                 child: Card(
//                                   child: Container(
//                                     // height: 100,
//                                     width: double.infinity,
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.all(6),
//                                           child: ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             child: Image.file(
//                                               File(_imageFile!.path),
//                                             ),
//                                           ),
//                                         ),
//                                         GFButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               // _imageFile!.removeAt(0);
//                                               _imageFile = null;
//                                               // _imageFile =
//                                               //     _imageFile!.removeAt(0);
//                                             });
//                                           },
//                                           text: "Delete",
//                                           shape: GFButtonShape.pills,
//                                           // child: Container(
//                                           //   child: Padding(
//                                           //     padding: const EdgeInsets.all(8.0),
//                                           //     child: ElevatedButton.icon(
//                                           //       onPressed: () {
//                                           //         setState(() {
//                                           //           pickedImage!.removeAt(0);
//                                           //           // pickedImage =
//                                           //           //     pickedImage!.removeAt(0);
//                                           //         });
//                                           //       },
//                                           //       icon: const Icon(Icons.delete),
//                                           //       label: const Text('Delete'),
//                                           //     ),
//                                           //   ),
//                                           // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             },
//                           ).toList(),
//                         )
//                       : Container(),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           imagePickerOption();
//         },
//         label: const Text('UPLOAD IMAGES'),
//         icon: const Icon(Icons.upload_file),
//         backgroundColor: Colors.pink,
//       ),
//     );
//   }
// }
