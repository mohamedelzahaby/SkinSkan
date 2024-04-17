import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/widgets/historyskanitem.dart';

import '../../../core/resources/colors.dart';

class Skanshistory extends StatelessWidget {
  const Skanshistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0688C0),
              Color(0xff00AA99),
              Color(0xff75C163),
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 2.h),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Mycolors.mywhite)),
                SizedBox(
                  width: 7.h,
                ),
                Text(
                  "Skan History",
                  style: TextStyle(fontSize: 20.sp, color: Mycolors.mywhite),
                ),
              ],
            ),
            // SizedBox(
            //   height: 1.h,
            // ),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Historyitem();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
