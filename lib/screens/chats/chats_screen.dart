import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/utils/images/image_res.dart';
import '../../common/widgets/app_bar.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: const Text('Dev'), actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.videocam_outlined,
            size: 37,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone_outlined,
            size: 35,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 35,
          ),
        ),
      ]),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xff182329),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  const Icon(
                    Icons.lock,
                    color: Color(0xfffbd37b),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: Text(
                      'Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.',
                      softWrap: true,
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: const Color(0xfffbd37b),
                        height: 1.8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xff182329),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      profilepics,
                      fit: BoxFit.cover,
                      width: 70.w,
                      height: 70.w,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '09011745977',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Hephzisoft',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a contact . Not common groups',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                        icon: const Icon(Icons.block),
                        onPressed: () {},
                        label: const Text('Block'),
                      ),
                      OutlinedButton.icon(
                        icon: const Icon(Icons.person_add),
                        onPressed: () {},
                        label: const Text('Add contact'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
