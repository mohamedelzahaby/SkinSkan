import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:path/path.dart';
// import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/image_manager.dart';
import 'package:skin_skan_v1/presentation/screens/auth/loginscreen.dart';

import 'package:skin_skan_v1/presentation/screens/home/homescreen.dart';

import '../../../core/resources/colors.dart';
import '../../../core/theme/theme_helper.dart';
import '../../../data/auth/auth.dart';
import '../../../widgets/basedbutton.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final _fullnameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmpasswordController = TextEditingController();

  final _ageController = TextEditingController();

  List<String> genderlist = ['Male', 'Female'];

  String? selecteditem = "Male";

   Future signup() async {
    // print("object");
    // var userCredential =
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        )
        .catchError((e) => print(e));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const auth();
      }),
    );
  }

  // bool repassword() {
  //   if (_passwordController.text == _repasswordController.text) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    // _repasswordController.dispose();
  }

  bool ishidepassword = true;
  bool ishiderepassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(ImageAssets.sign_up),
        )),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 3.2.h,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w, top: 19.h),
              child: const Text(
                "Sign up",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Mycolors.mintgreen),
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            buildnametextformfield(context),
            SizedBox(
              height: 1.5.h,
            ),
            buildemailtextformfield(context),
            SizedBox(
              height: 1.5.h,
            ),
            buildpasswordtextformfield(context),
            SizedBox(
              height: 1.5.h,
            ),
            buildconfirmpasswordtextformfield(context),
            SizedBox(
              height: 1.5.h,
            ),
            buildagetextformfield(context),
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: BaseButton(
                  text: "Signup",
                  onpressed: () {
                    signup();
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?  "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Loginscreen();
                      }),
                    );
                  },
                  child: const Text(
                    "Login ",
                    style: TextStyle(
                        color: Mycolors.mintgreen, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }

  Widget buildnametextformfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: const Text(
              "full name",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Mycolors.mintgreen),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 45,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                  controller: _fullnameController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    contentPadding: const EdgeInsetsDirectional.all(10),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildemailtextformfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: const Text(
              "Email",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Mycolors.mintgreen),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 45,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    contentPadding: const EdgeInsetsDirectional.all(10),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildpasswordtextformfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: const Text(
              "Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Mycolors.mintgreen),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 45,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                  controller: _passwordController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "*******************",
                    contentPadding: const EdgeInsetsDirectional.all(10),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildconfirmpasswordtextformfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: const Text(
              "Confirm Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Mycolors.mintgreen),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            height: 45,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                  controller: _confirmpasswordController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "******************",
                    contentPadding: const EdgeInsetsDirectional.all(10),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: appTheme.blueGray100,
                        width: 1,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildagetextformfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: const Text(
                  "age",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Mycolors.mintgreen),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextFormField(
                      controller: _ageController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "20",
                        contentPadding: const EdgeInsetsDirectional.all(10),
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 1.h,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: const Text(
                  "gender",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Mycolors.mintgreen),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 45,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: DropdownButtonFormField(
                      borderRadius: BorderRadius.circular(22),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: appTheme.blueGray100,
                            width: 1,
                          ),
                        ),
                      ),
                      // decoration: InputDecoration(
                      //   focusedBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(22),
                      //     borderSide: BorderSide(
                      //       color: appTheme.blueGray100,
                      //       width: 1,
                      //     ),
                      //   ),
                      //   enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(22),
                      //     borderSide: BorderSide(
                      //       color: appTheme.blueGray100,
                      //       width: 1,
                      //     ),
                      //   ),
                      // ),
                      value: selecteditem,
                      items: genderlist
                          .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ))
                          .toList(),
                      onChanged: (item) {
                        setState(() => selecteditem = item);
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
