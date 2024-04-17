import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';
// import 'package:path/path.dart';
// import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/image_manager.dart';
import 'package:skin_skan_v1/presentation/screens/auth/signup.dart';

import 'package:skin_skan_v1/presentation/screens/home/homescreen.dart';

import '../../../core/theme/theme_helper.dart';
import '../../../widgets/basedbutton.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _fullnameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmpasswordController = TextEditingController();

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    // _repasswordController.dispose();
  }

  bool hideloginpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ImageAssets.login),
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 3.5.h,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, top: 45.h),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Mycolors.mintgreen),
                      ),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    buildemailtextformfield(context),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    buildpasswordtextformfield(context),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(color: Mycolors.mintgreen),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: BaseButton(
                          text: "Login",
                          onpressed: () {
                            signin();
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Signupscreen()));
                          },
                          child: const Text(
                            "signup ",
                            style: TextStyle(
                                color: Mycolors.mintgreen,
                                fontWeight: FontWeight.bold),
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
          const Padding(
            padding: EdgeInsets.only(right: 190.0),
            child: Text(
              "full name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
          const Padding(
            padding: EdgeInsets.only(right: 220.0),
            child: Text(
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
          const Padding(
            padding: EdgeInsets.only(right: 190.0),
            child: Text(
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
                  obscureText: hideloginpassword,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: toggleloginpassword,
                        child: Icon(
                            hideloginpassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey[400])),
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
          const Padding(
            padding: EdgeInsets.only(right: 130.0),
            child: Text(
              "Confirm Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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

  void toggleloginpassword() {
    setState(() {
      hideloginpassword = !hideloginpassword;
    });
  }
}
