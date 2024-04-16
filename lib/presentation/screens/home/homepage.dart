// // ignore_for_file: unused_field, avoid_print

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();
//     _loading = true;

//     loadModel().then((value) {
//       setState(() {
//         _loading = false;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }

//   void pickImage() async {
//     var reternedimage =
//         await ImagePicker().pickImage(source: ImageSource.camera);

//     if (reternedimage == null) return null;
//     setState(() {
//       _selectedimage = File(reternedimage.path);
//     });

//     recognizeImage(_selectedimage!);
//   }

//   File? _selectedimage;
//   List? _recognitions;
//   bool _loading = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(onPressed: pickImage, child: const Text("Take Image")),
//         _selectedimage == null ? Container() : Image.file(_selectedimage!),

//         // _loading == true
//         //     ? SizedBox(
//         //         height: 300,
//         //         width: 300,
//         //         child: Image.file(_selectedimage!),
//         //       )
//         //     : Container(),
//         _recognitions != null
//             ? Text(
//                 '${_recognitions![0]["label"]}',
//                 style: const TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold),
//               )
//             : Container(),
//       ],
//     ));
//   }

//   Future recognizeImage(File image) async {
//     // int startTime = new DateTime.now().millisecondsSinceEpoch;
//     final List? recognitions = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 2,
//       threshold: 0.5,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );
//     setState(() {
//       _recognitions = recognitions;
//       _loading = false;
//       print(recognitions);
//     });
//     // int endTime = new DateTime.now().millisecondsSinceEpoch;
//     // print("Inference took ${endTime - startTime}ms");
//   }

//   loadModel() async {
//     await Tflite.loadModel(
//       model: "assets/cancer_model.tflite",
//       labels: "assets/labels.txt",
//     );
//   }
// }
