import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/image_manager.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

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
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 3.h),
          child: Column(
            children: [
              Text(
                "Ahmed Mohamed",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Mycolors.mywhite),
              ),
              SizedBox(
                height: 3.h,
              ),
              buildmyskans(context),
              SizedBox(
                height: 3.h,
              ),
              buildallownotification(context),
              SizedBox(
                height: 3.h,
              ),
              buildaboutus(context),
              SizedBox(
                height: 3.h,
              ),
              buildFaq(context),
              SizedBox(
                height: 3.h,
              ),
              buildsendemail(context),
              SizedBox(
                height: 3.h,
              ),
              buildlogout(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildmyskans(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.handscanicon),
                ),
                SizedBox(width: 3.h),
                Text(
                  "My SKAN’s",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }

  Widget buildallownotification(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.bellnotfiicon),
                ),
                SizedBox(width: 3.h),
                Text(
                  "Allow Notifications",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }

  Widget buildaboutus(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.i_markicon),
                ),
                SizedBox(width: 3.h),
                Text(
                  "About us",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }

  Widget buildFaq(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.question_markicon),
                ),
                SizedBox(width: 3.h),
                Text(
                  "FAQ’s",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }

  Widget buildsendemail(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.lettaricon),
                ),
                SizedBox(width: 2.h),
                Text(
                  "Send Email Notification",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }

  Widget buildlogout(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: [
                Image(
                  height: 4.h,
                  image: const AssetImage(ImageAssets.logouticon),
                ),
                SizedBox(width: 3.h),
                Text(
                  "logout",
                  style: TextStyle(color: Mycolors.mintgreen, fontSize: 15.sp),
                ),
                const Spacer(
                    // flex: 1,
                    ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Mycolors.mintgreen),
                )
              ],
            ),
          )),
    );
  }
}
