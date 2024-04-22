// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api, sort_child_properties_last, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';
import 'package:skin_skan_v1/core/resources/image_manager.dart';
// import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';
import 'package:skin_skan_v1/presentation/screens/home/homescreen.dart';
import 'package:skin_skan_v1/presentation/screens/more/morescreen.dart';
import 'package:skin_skan_v1/presentation/screens/select_body_part/select_body_part.dart';
import 'package:skin_skan_v1/presentation/screens/more/widget/dialogbox.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    const Homescreen(),
    // const Morescreen(),
    // const Loginscreen(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Homescreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomSheet: Container(
        height: 8.h,
        width: double.infinity,
        // decoration: BoxDecoration(
        //        borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(2), topRight: Radius.circular(2))
        // ),
        child: Stack(clipBehavior: Clip.none, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 10,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              const Homescreen(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 0
                                ? Mycolors.mintgreen
                                : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: currentTab == 0
                                  ? Mycolors.mintgreen
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Right Tab bar icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StreamBuilder<User?>(
                        stream: FirebaseAuth.instance.authStateChanges(),
                        builder: (context, snapshot) {
                          return MaterialButton(
                            minWidth: 10,
                            onPressed: () {
                              if (snapshot.hasData) {
                                setState(() {
                                  currentScreen =
                                      const Morescreen(); // if user taps on this dashboard tab will be active
                                  currentTab = 0;
                                });
                              } else {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          const Moredialogbox());
                                });
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.dehaze,
                                  color: currentTab == 2
                                      ? Mycolors.mintgreen
                                      : Colors.grey,
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(
                                    color: currentTab == 2
                                        ? Mycolors.mintgreen
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 17.9.h,
            bottom: 1.5.h,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Select_body_Part();
                  }),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(ImageAssets.navb),
                        )),
                  ),
                  const Text(
                    "SKAN now!",
                    style: TextStyle(
                        color: Mycolors.mintgreen,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
