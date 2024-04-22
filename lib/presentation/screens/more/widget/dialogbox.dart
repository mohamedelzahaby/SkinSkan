// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:skin_skan_v1/core/resources/colors.dart';
// import 'package:skin_skan_v1/core/resources/image_manager.dart';
// import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';

// class Moredialogbox extends StatelessWidget {
//   const Moredialogbox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
//       child: SizedBox(
//         height: 30.h,
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image(
//               height: 4.h,
//               image: const AssetImage(ImageAssets.logouticon),
//             ),
//             SizedBox(height: 1.h),
//             Text(
//               "Are you sure you want to log \n out from your account?",
//               style: TextStyle(fontSize: 12.sp, color: Mycolors.circlered),
//             ),
//             SizedBox(height: 1.h),
//             Row(
//               children: [
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       side: const BorderSide(color: Mycolors.circlered),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Loginscreen()));
//                     },
//                     child: Text('Yes, Log me in',
//                         style: TextStyle(
//                             fontSize: 10.sp, color: Mycolors.circlered)),
//                   ),
//                 ),
//                 SizedBox(width: 2.h),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text("Cancel",
//                       style: TextStyle(
//                           fontSize: 10.sp, color: Mycolors.circlered)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';


import '../../../../core/resources/colors.dart';

class Moredialogbox extends StatelessWidget {
  const Moredialogbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          width: 40.h,
          height: 20.h,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 22),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const SizedBox(height: 13),
            Text(
              "log in to show  more",
              style: TextStyle(fontSize: 12.sp, color: Colors.black),
            ),
            const SizedBox(height: 17),
            // SizedBox(height: 13),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Mycolors.circlered),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Loginscreen()));
                  },
                  child: Text('Yes, Log me in',
                      style: TextStyle(
                          fontSize: 10.sp, color: Mycolors.circlered)),
                ),
                const SizedBox(width: 13),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel",
                      style: TextStyle(
                          fontSize: 10.sp, color: Mycolors.circlered)),
                )
              ],
            )
          ])),
    );
  }
}
