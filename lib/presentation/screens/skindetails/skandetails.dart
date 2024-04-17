import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/resources/colors.dart';
import '../../../core/resources/image_manager.dart';
import '../../../widgets/basedbutton.dart';

class Skandetails extends StatelessWidget {
  const Skandetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 1.h),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Mycolors.mintgreen)),
                SizedBox(
                  width: 2.h,
                  // height: 3.h,
                ),
              ],
            ),
            Text(
              "Acne",
              style: TextStyle(fontSize: 20.sp, color: Mycolors.mintgreen),
            ),
            SizedBox(
              height: 2.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: const AssetImage(
                  ImageAssets.scan,
                ),
                height: 20.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            /////////////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 22.h),
              child: Text(
                "Disease Overview",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "The bacteria that causes acne grows in the hair roots of the face, neck, chest, and back, causing inflammation, increased oil production, and increased keratinization—all of which are brought on by hormones. Acne is a chronic inflammatory disease of the pilosebaceous unit.",
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            ///////////////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 14.h),
              child: Text(
                "Treatment Recommendation",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),
            // SizedBox(
            //   height: 1.h,
            // ),
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Text(
                "Over-the-counter scrubs and creams",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),
            Text(
              "Choose gentle scrubs and specially formulated noncomedogenic creams that don't clog pores. ",
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            ///////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 27.h),
              child: Text(
                "Topical medications",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Text(
                "Examples are benzoyl peroxide, retinoids and antibiotics",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            /////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 28.h),
              child: Text(
                "Oral medications",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Text(
                "These medications include antibiotics or isotretinoin, which is a powerful acne medication.",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 28.h),
              child: Text(
                "Physical treatments",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Mycolors.mintgreen),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Text(
                "Treatments range from laser or light therapy to dermabrasion, which removes the surface layers of skin.",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            ///////////////////////////////////////////////////////////
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Text(
                    "Risk/Threaten Level >",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Mycolors.mintgreen),
                  ),
                ),
                Container(
                  height: 5.h,
                  width: 7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Mycolors.circlegreen),
                  child: const Center(
                    child: Text(
                      "low",
                      style: TextStyle(color: Mycolors.mywhite),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            BaseButton(text: "Done", onpressed: () {}),
          ],
        ),
      ),
    );
  }
}
