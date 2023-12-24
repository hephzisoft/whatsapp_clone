
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/colors/app_colors.dart';
import '../../../common/utils/images/image_res.dart';
import 'update_status.dart';

Widget statusItem() {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 5,
    ),
    child: Row(
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularBorder(
              borderColor: darkPrimaryColor,
              
              
              borderWidth: 3,
              
              radius: 35,
              numSegments:10,
              spacing: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  profilepics,
                  fit: BoxFit.cover,
                  width: 50.w,
                  height: 50.w,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DEV XP'),
            Text('20 minutes ago'),
          ],
        ),
      ],
    ),
  );
}
