import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../core/resources/colors.dart';
import '../core/resources/image_manager.dart';

class Historyitem extends StatelessWidget {
  const Historyitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
            height: 9.h,
            width: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      height: 7.h,
                      width: 7.h,
                      image: const AssetImage(
                        ImageAssets.scan,
                      ),
                      // height: 11.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 3.h),
                  Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        "Acne",
                        style: TextStyle(
                            color: Mycolors.mintgreen, fontSize: 15.sp),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "15.06.2024",
                        style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                      ),
                    ],
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
      ),
    );
  }
}
