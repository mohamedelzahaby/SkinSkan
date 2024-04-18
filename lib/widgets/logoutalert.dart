import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';

import '../core/resources/image_manager.dart';

class Logoutalert extends StatelessWidget {
  const Logoutalert({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 4.h,
                image: const AssetImage(ImageAssets.logouticon),
              ),
              SizedBox(height: 1.h),
              Text(
                "Are you sure you want to log \n out from your account?",
                style: TextStyle(fontSize: 12.sp, color: Mycolors.circlered),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  
                    side: BorderSide(color: Mycolors.circlered),
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text('Yes, Log me out',
                      style: TextStyle(
                          fontSize: 10.sp, color: Mycolors.circlered)),
                ),
              ),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.circlered)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
