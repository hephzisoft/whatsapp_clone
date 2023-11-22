import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/images/image_res.dart';

Widget chatItem() {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 20,
    ),
    child: Row(
      children: [
        GestureDetector(
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
        SizedBox(
          width: 10.w,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DEV XP'),
            Text('Bug: if you like'),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text('10:20 PM', ),
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                '100',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
