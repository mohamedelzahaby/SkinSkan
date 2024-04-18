// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';

import '../../../core/resources/image_manager.dart';
import '../../../widgets/basedbutton.dart';

class Select_body_Part extends StatefulWidget {
  const Select_body_Part({super.key});

  @override
  State<Select_body_Part> createState() => _Select_body_PartState();
}

class _Select_body_PartState extends State<Select_body_Part> {
  String? bodypart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 3.h),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 2.h),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios,
                          color: Mycolors.mintgreen)),
                  SizedBox(
                    width: 2.h,
                  ),
                  Text(
                    "Select Body Part $bodypart",
                    style:
                        TextStyle(fontSize: 20.sp, color: Mycolors.mintgreen),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 70.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(ImageAssets.Body),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.5.h,
                      horizontal: 20.0.h,
                    ),
                    child: SelectfacePart(context, "Face"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
                    child: Row(
                      children: [
                        SelectbackPart(context, "Back"),
                        SelectcheastPart(context, "Cheast"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 8.h),
                    child: SelectlegPart(context, "Legs"),
                  ),
                ],
              ),
            ),
            const Spacer(),
            BaseButton(
                text: "Start Skan !",
                onpressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) =>  ()));
                }),
          ]),
        ),
      ),
    );
  }

  Widget SelectfacePart(BuildContext context, String text) {
    return Transform.scale(
      scale: 1.3,
      child: Radio(

          // activeColor: Colors.blue,
          value: "face",
          groupValue: bodypart,
          onChanged: (val) {
            setState(() {
              bodypart = val;
              Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0688C0),
                            Color(0xff00AA99),
                            Color(0xff75C163),
                          ]),
                      borderRadius: BorderRadius.circular(18)),
                  height: 4.h,
                  width: 4.h);
            });
          }),
    );
  }

////////////////////////////////////////////
  Widget SelectbackPart(BuildContext context, String text) {
    return Transform.scale(
      scale: 1.3,
      child: Radio(
          value: "back",
          groupValue: bodypart,
          onChanged: (val) {
            setState(() {
              bodypart = val;
              Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0688C0),
                            Color(0xff00AA99),
                            Color(0xff75C163),
                          ]),
                      borderRadius: BorderRadius.circular(18)),
                  height: 4.h,
                  width: 4.h);
            });
          }),
    );
  }

//////////////////////////////////////////////////////////////////
  Widget SelectcheastPart(BuildContext context, String text) {
    return Transform.scale(
      scale: 1.3,
      child: Radio(
          value: "cheast",
          groupValue: bodypart,
          onChanged: (val) {
            setState(() {
              bodypart = val;
              Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0688C0),
                            Color(0xff00AA99),
                            Color(0xff75C163),
                          ]),
                      borderRadius: BorderRadius.circular(18)),
                  height: 4.h,
                  width: 4.h);
            });
          }),
    );
  }

//////////////////////////////////////////////////////////////////////
  Widget SelectlegPart(BuildContext context, String text) {
    return Transform.scale(
      scale: 1.3,
      child: Radio(
          value: "leg",
          groupValue: bodypart,
          onChanged: (val) {
            setState(() {
              bodypart = val;
              Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0688C0),
                            Color(0xff00AA99),
                            Color(0xff75C163),
                          ]),
                      borderRadius: BorderRadius.circular(18)),
                  height: 4.h,
                  width: 4.h);
            });
          }),
    );
  }
}
