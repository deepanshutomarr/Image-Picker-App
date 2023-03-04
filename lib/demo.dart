
// // // void main() {
// // //   runApp(
// // //     MaterialApp(
// // //       home: Home(),
// // //     ),
// // //   );
// // // }

// // // class Home extends StatefulWidget {
// // //   @override
// // //   State<Home> createState() => _HomeState();
// // // }

// // // class _HomeState extends State<Home> {
// //   // final ImagePicker imgpicker = ImagePicker();
// // //   List<XFile>? imagefiles;

// // //   openImages() async {
// // //     try {
// // //       var pickedfiles = await imgpicker.pickMultiImage();
// // //       //you can use ImageCourse.camera for Camera capture
// // //       if (pickedfiles != null) {
// // //         imagefiles = pickedfiles;
// // //         setState(() {});
// // //       } else {
// // //         print("No image is selected.");
// // //       }
// // //     } catch (e) {
// // //       print("error while picking file.");
// // //     }
// // //   }

// //   // @override
// //   // Widget build(BuildContext context) {
// //   //   return Scaffold(
// //   //     resizeToAvoidBottomInset: false,
// //   //     appBar: AppBar(
// //   //       title: Text("Multiple Image Picker Flutter"),
// //   //       backgroundColor: Colors.deepPurpleAccent,
// //   //     ),
// //   //     body: Center(
// //   //       // child: Lottie.network(''),
// //   //       child: Container(
// //   //         // decoration: BoxDecoration(
// //   //         //   image: DecorationImage(
// //   //         //     image: AssetImage("assets/images/image.jpeg"),
// //   //         //     fit: BoxFit.cover,
// //   //         //   ),
// //   //         // ),
// //   //         alignment: Alignment.center,
// //   //         padding: EdgeInsets.all(30),
// //   //         child: Column(
// //   //           children: [
// //   //             //   Text(
// //   //             //     'WELCOME!',
// //   //             //     style: TextStyle(
// //   //             //       fontSize: 30,
// //   //             //       fontWeight: FontWeight.bold,
// //   //             //       color: Color.fromARGB(255, 241, 236, 236),
// //   //             //       fontStyle: FontStyle.normal,
// //   //             //     ),
// //   //             //     textAlign: TextAlign.start,
// //   //             //   ),
// //   //             // SizedBox(
// //   //             //   height: 30,
// //   //             // ),
// //   //             // Text(
// //   //             //   'Choose your images from Gallery to view',
// //   //             //   style: TextStyle(
// //   //             //       fontSize: 14,
// //   //             //       fontWeight: FontWeight.bold,
// //   //             //       color: Colors.black,
// //   //             //       fontStyle: FontStyle.italic),
// //   //             //   textAlign: TextAlign.start,
// //   //             // ),
// //   //             SizedBox(
// //   //               height: 30,
// //   //             ),
// //   //             // open button ----------------
// //   //             ElevatedButton(
// //   //               onPressed: () {
// //   //                 openImages();
// //   //               },
// //   //               child: Text(
// //   //                 "Open Images",
// //   //               ),
// //   //             ),
// //   //             SizedBox(
// //   //               height: 5,
// //   //             ),
// //   //             Divider(),
// //   //             Text(
// //   //               "Selected images are:",
// //   //               style: TextStyle(
// //   //                 fontSize: 14,
// //   //                 color: Color.fromARGB(255, 26, 26, 24),
// //   //               ),
// //   //             ),
// //   //             Divider(),

// //   //             imagefiles != null
// //   //                 ? Wrap(
// //   //                     children: imagefiles!.map(
// //   //                       (imageone) {
// //   //                         return Container(
// //   //                           child: Card(
// //   //                             child: Container(
// //   //                               height: 100,
// //   //                               width: 100,
// //   //                               child: Image.file(
// //   //                                 File(imageone.path),
// //   //                               ),
// //   //                             ),
// //   //                           ),
// //   //                         );
// //   //                       },
// //   //                     ).toList(),
// //   //                   )
// //   //                 : Container(),
// //   //             ElevatedButton(
// //   //               // icon: Icon(Icons.clear),
// //   //               onPressed: () {
// //   //                 setState(() {
// //   //                   imagefiles = null;
// //   //                 });
// //   //               },
// //   //               child: Text('Delete'),
// //   //             ),
// //   //           ],
// //   //         ),
// //   //       ),
// //   //     ),
// //   //   );
// //   // }
// // // }

// // // ElevatedButton(
// //                   //   onPressed: () {
// //                   //     imagePickerOption();
// //                   //   },
// //                   //   child: Text(
// //                   //     "Open Images",
// //                   //   ),
// //                   // ),

// //                   //   Text(
// //                   //     'WELCOME!',
// //                   //     style: TextStyle(
// //                   //       fontSize: 30,
// //                   //       fontWeight: FontWeight.bold,
// //                   //       color: Color.fromARGB(255, 241, 236, 236),
// //                   //       fontStyle: FontStyle.normal,
// //                   //     ),
// //                   //     textAlign: TextAlign.start,
// //                   //   ),
// //                   // SizedBox(
// //                   //   height: 30,
// //                   // ),
// //                   // Text(
// //                   //   'Choose your images from Gallery to view',
// //                   //   style: TextStyle(
// //                   //       fontSize: 14,
// //                   //       fontWeight: FontWeight.bold,
// //                   //       color: Colors.black,
// //                   //       fontStyle: FontStyle.italic),
// //                   //   textAlign: TextAlign.start,
// //                   // ),
// //                   // SizedBox(
// //                   //   height: 30,
// //                   // ),
                  
// //                   // try {
// //     // final photo = await ImagePicker().pickImage(source: imageType);
// //     //   if (photo == null) return;
// //     //   final tempImage = File(photo.path);
// //     //   setState(() {
// //     //     pickedImage = tempImage as List<XFile>?;
// //     //   });

// //     //   Get.back();
// //     // } catch (error) {
// //     //   debugPrint(error.toString());
// //     // }








// //     import 'dart:convert';
// // import 'dart:io';

// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:get/get.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:lottie/lottie.dart';
// // import 'package:getwidget/getwidget.dart';
// // import 'package:http/http.dart';

// class UploadProfileImage extends StatefulWidget {
//   const UploadProfileImage({Key? key}) : super(key: key);

//   @override
//   State<UploadProfileImage> createState() => _UploadProfileImageState();
// }

// class _UploadProfileImageState extends State<UploadProfileImage> {
//   var _imageBase64;

//   void _getImageBase64() async {
//     http.Response imageResponse = await http.get(Uri.parse());

//     _imageBase64 = base64Encode(imageResponse.bodyBytes);

//     print(_imageBase64);
//   }

//   final ImagePicker imgpicker = ImagePicker();
//   // void click(){}

//   List<XFile>? pickedImage;

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
//                       pickImage(ImageSource.camera);
//                     },
//                     icon: const Icon(Icons.camera),
//                     label: const Text("CAMERA"),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       pickImage(ImageSource.gallery);
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

//   pickImage(ImageSource imageType) async {
//     try {
//       var pickedfiles = await imgpicker.pickMultiImage();
//       // final photo = await ImagePicker().pickImage(source: imageType);
//       // you can use ImageCourse.camera for Camera capture

//       pickedImage = pickedfiles;

//       // pickedImage!.addAll(pickedfiles);
//     } catch (e) {
//       print("error while picking file.");
//     }
//   }

  
// }

// // // Padding(
// //                   //   padding: const EdgeInsets.all(8.0),
// //                   //   child: ElevatedButton.icon(
// //                         // onPressed: () {
// //                         //   imagePickerOption();
// //                         // },
// //                   //       icon:
// //                   //           const Icon(Icons.photo_size_select_actual_outlined),
// //                   //       label: const Text('UPLOAD IMAGES')),
// //                   // ),


// void imagePickerOption() {
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
//                       pickImageBase64(ImageSource.camera);
//                     },
//                     icon: const Icon(Icons.camera),
//                     label: const Text("CAMERA"),
//                   ),
//                   ElevatedButton.icon(
//                     onPressed: () {
//                       pickImageBase64(ImageSource.gallery);
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

//   // final ImagePicker imgpicker = ImagePicker();

//   // List<XFile>? pickedImage;

//   List<XFile>? _imageFile; // picked image will be store here.
//   final ImagePicker _picker = ImagePicker(); //instance of image_picker

//   pickImageBase64(ImageSource imageType) async {
//     try {
//       // pick image from gallery, change ImageSource.camera if you want to capture image from camera.
//       // var pickedfiles = await _picker.pickMultiImage();
//       final File? image = await _picker.pickMultiImage();

//       _imageFile = image;

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

//   // pickImage(ImageSource imageType) async {
//   //   try {
//   // var pickedfiles = await imgpicker.pickMultiImage();
//   //     // final photo = await ImagePicker().pickImage(source: imageType);
//   //     // you can use ImageCourse.camera for Camera capture

//   // pickedImage = pickedfiles;

//   //     // pickedImage!.addAll(pickedfiles);
//   //   } catch (e) {
//   //     print("error while picking file.");
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('IMAGE PICKER'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           // child: Lottie.network(''),
//           child: Container(
//             // height: MediaQuery.of(context).size.height,
//             // width: MediaQuery.of(context).size.width,
//             // decoration: const BoxDecoration(
//             //   gradient: LinearGradient(
//             //     begin: Alignment.topLeft,
//             //     end: Alignment.bottomRight,
//             //     colors: [
//             //       Colors.purpleAccent,
//             //       Color.fromARGB(255, 255, 90, 7),
//             //       Colors.blue,
//             //     ],
//             //   ),
//             // ),
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(30),
//             child: Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   // const SizedBox(
//                   //   height: 50,
//                   // ),
//                   // SizedBox(
//                   //   height: 170,
//                   //   width: 250,
//                   //   child: LottieBuilder.asset("assets/lottie/login2.json"),
//                   // ),

//                   // open button ----------------
//                   // Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: ElevatedButton.icon(
//                   //       onPressed: () {
//                   //         imagePickerOption();
//                   //       },
//                   //       icon:
//                   //           const Icon(Icons.photo_size_select_actual_outlined),
//                   //       label: const Text('UPLOAD IMAGES')),
//                   // ),

//                   SizedBox(
//                     height: 5,
//                   ),
//                   // Divider(),
//                   // Text(
//                   //   "Selected images are:",
//                   //   style: TextStyle(
//                   //     fontSize: 16,
//                   //     color: Color.fromARGB(255, 18, 18, 18),
//                   //   ),
//                   // ),
//                   // Divider(),

//                   _imageFile != null
//                       ? Wrap(
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
//                                               File(imageone.path),
//                                             ),
//                                           ),
//                                         ),
//                                         GFButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               _imageFile!.removeAt(0);
//                                               // pickedImage =
//                                               //     pickedImage!.removeAt(0);
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

//                   // Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: ElevatedButton.icon(
//                   //       onPressed: () {
//                   //         setState(() {
//                   //           pickedImage = null;
//                   //         });
//                   //       },
//                   //       icon: const Icon(Icons.delete),
//                   //       label: const Text('Delete')),
//                   // ),
//                 ],
//               ),
//             ),
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