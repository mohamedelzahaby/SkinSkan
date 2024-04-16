import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';
import 'package:skin_skan_v1/widgets/buildScanitem.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.h, bottom: 1.h),
              child: Text(
                "Welcome, Ahmed!",
                style: TextStyle(
                    color: Mycolors.mywhite,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                height: 25.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Text(
                      "SKANS Statistics",
                      style: TextStyle(
                          color: Mycolors.bottuncolor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h, top: 0.2.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildChart(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildChartdetails(
                                  "Completed SKANS: 123", Mycolors.circlegreen),
                              SizedBox(
                                height: 3.h,
                              ),
                              buildChartdetails(
                                  "Without problems: 110", Mycolors.circleblue),
                              SizedBox(
                                height: 3.h,
                              ),
                              buildChartdetails(
                                  "Diagnosed problems: 13", Mycolors.circlered),
                            ],
                          )
                        ]),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 1.5.h, vertical: 1.h),
                height: 46.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child: Text(
                      "My SKANS",
                      style: TextStyle(
                          color: Mycolors.bottuncolor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  buildHistoryList(),
                  GestureDetector(
                    child: const Text("View all",
                        style: TextStyle(color: Mycolors.bottuncolor)),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHistoryList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 0.2,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: 6,
      // _searchTextController.text.isEmpty
      //     ? allCharacters.length
      //     : searchedForCharacters.length,
      itemBuilder: (cxt, index) {
        return const buildScanItem();
      },
    );
  }

  Widget buildChart() {
    return CircularPercentIndicator(
      radius: 65.0,
      lineWidth: 3.0,
      percent: 0.95,
      progressColor: Mycolors.circleblue,
      backgroundColor: Mycolors.circlered,
      startAngle: 120,
      center: CircularPercentIndicator(
        radius: 60.0,
        lineWidth: 3.0,
        percent: 1.0,
        center: const Text(
          "123",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        progressColor: Mycolors.circlegreen,
      ),
    );
  }

  Widget buildChartdetails(String text, Color color) {
    return Row(
      children: [
        Container(
          height: 0.8.h,
          width: 0.8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
          ),
        ),
        SizedBox(
          width: 0.2.h,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
