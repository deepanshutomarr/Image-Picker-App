// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:lottie/lottie.dart';
// import 'package:getwidget/getwidget.dart';
// import 'package:http/http.dart';

// class UploadProfileImage extends StatefulWidget {
//   const UploadProfileImage({Key? key}) : super(key: key);

//   @override
//   State<UploadProfileImage> createState() => _UploadProfileImageState();
// }

// class _UploadProfileImageState extends State<UploadProfileImage> {
//   final ImagePicker imgpicker = ImagePicker();

//   File? pickedImage;

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
//       // final List<XFile> pickedfiles = await imgpicker.pickMultiImage();
//       final XFile? pickedfiles =
//           await imgpicker.pickImage(source: ImageSource.gallery);
//       // final photo = await ImagePicker().pickImage(source: imageType);
//       // you can use ImageCourse.camera for Camera capture

//       if (pickedfiles == null) return;

//       // read picked image byte data.
//       Uint8List imagebytes = await pickedfiles.readAsBytes();

//       String _base64String = base64.encode(imagebytes);
//       print(_base64String);

//       final imageTemp = File(pickedfiles.path);

//       setState(() {
//         // pickedImage = pickedfiles;
//       });

//       // pickedImage!.addAll(pickedfiles);
//     } catch (e) {
//       print("error while picking file.");
//     }
//   }

//   // void _getImageBase64() async{

//   //    http.Response response = await http.get(Uri.parse('https://protocoderspoint.com/wp-content/uploads/2022/09/Whats-New-in-Flutter-3.3-696x392.jpg'));

//   //    var _base64 = base64Encode(response.bodyBytes);

//   //    print(_base64);

//   // }

// //   var _decodedImage = base64Decode(_base64);

// // // Now in Image.memory( ) Widget pass it.

// // Image.memory(_decodedImage);

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

//                   pickedImage != null
//                       ? Wrap(
//                           children: pickedImage!.map(
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
//                                               pickedImage!.removeAt(0);
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
// }

// // Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: ElevatedButton.icon(
//                         // onPressed: () {
//                         //   imagePickerOption();
//                         // },
//                   //       icon:
//                   //           const Icon(Icons.photo_size_select_actual_outlined),
//                   //       label: const Text('UPLOAD IMAGES')),
//                   // ),