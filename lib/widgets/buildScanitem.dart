// ignore_for_file: sort_child_properties_last, file_names, camel_case_types, avoid_unnecessary_containers

// import 'package:breaking_bad/core/strings.dart';
// import 'package:breaking_bad/data/models/charactersmodel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skin_skan_v1/core/resources/colors.dart';

import '../core/resources/image_manager.dart';

class buildScanItem extends StatelessWidget {
  const buildScanItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 8),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Mycolors.mywhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, chractersdetailsscreen,
          //     arguments: character);
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: const AssetImage(
                    ImageAssets.scan,
                  ),
                  height: 11.h,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Scan E",
                style: TextStyle(
                  height: 1.3,
                  fontSize: 14,
                  color: Mycolors.mygray,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "May 5, 2023",
                style: TextStyle(
                  height: 1.3,
                  fontSize: 8.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        // child: GridTile(
        //   child: Hero(
        //     tag: 12,
        //     child: Container(
        //         // color: const Color.fromRGBO(52, 58, 64, 1),
        //         child: Image(
        //       image: AssetImage(
        //         ImageAssets.scan,
        //       ),
        //       fit: BoxFit.cover,
        //     ),

        //         // ? FadeInImage.assetNetwork(
        //         //     width: double.infinity,
        //         //     height: double.infinity,
        //         //     placeholder: 'assets/images/loading.gif',
        //         //     image: character.image!,
        //         //     fit: BoxFit.cover,
        //         //   )
        //         // : Image.asset('assets/images/image_not_found.png'),
        //         ),
        //   ),
      ),
    );
  }
}
