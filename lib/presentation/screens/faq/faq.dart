import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';

class Faqscreen extends StatelessWidget {
  const Faqscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // SizedBox(
          //   height: 3.h,
          // ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Mycolors.mintgreen)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 8.h),
            child: const Text(
              "FAQ’s",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Mycolors.mintgreen),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Column(
              children: [
                Text(
                    textAlign: TextAlign.justify,
                    "Revolutionizing Skin Health Through AI-Powered Diagnostics and Treatment.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                /////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "In a world where skin health is of paramount importance, SkinSkan emerges as the beacon of innovation, providing a seamless blend of technology and healthcare to empower individuals in their journey towards healthy, radiant skin.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                ///////////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "Understanding the significance of timely detection and precise treatment of skin diseases, SkinSkan harnesses the power of artificial intelligence to offer unparalleled diagnostic accuracy and personalized treatment recommendations. Gone are the days of uncertainty and delay in identifying skin conditions; with SkinSkan, users gain instant access to reliable insights right at their fingertips.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                ///////////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "At the heart of SkinSkan lies its cutting-edge AI algorithms, meticulously trained on vast datasets encompassing diverse skin types and a myriad of dermatological conditions. This robust foundation enables SkinSkan to swiftly analyze images of skin lesions or anomalies uploaded by users, swiftly identifying potential issues with remarkable accuracy.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                ///////////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "The user experience with SkinSkan is intuitive and user-friendly. Upon capturing and uploading images of their skin concern via the mobile application, users are guided through a seamless process, receiving prompt feedback on their condition along with tailored recommendations for further steps. Whether it's a benign rash, a pesky blemish, or a potentially serious dermatological issue, SkinSkan delivers clarity and peace of mind.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                ///////////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "Security and privacy are paramount in SkinSkan's ethos. Utilizing state-of-the-art encryption protocols and adhering to stringent privacy standards, SkinSkan ensures that user data remains safeguarded at all times. Users can rest assured that their sensitive information is handled with the utmost care and confidentiality.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
                ///////////////////////////////////////////////////////////
                Text(
                    textAlign: TextAlign.justify,
                    "In an era marked by the convergence of healthcare and technology, SkinSkan stands at the forefront, pioneering a new era of accessible, efficient, and personalized skin health management. Whether you're seeking clarity on a concerning skin condition or striving to maintain optimal skin health, SkinSkan is your trusted ally, empowering you to embrace your skin with confidence and vitality. Experience the future of skincare with SkinSkan today.",
                    style:
                        TextStyle(fontSize: 10.sp, color: Mycolors.textcolor)),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////
        ]),
      ),
    ));
  }
}
