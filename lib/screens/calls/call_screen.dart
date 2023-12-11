import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/screens/calls/widgets/call_widget.dart';

import '../../common/utils/images/image_res.dart';
import '../../common/widgets/app_bar.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: Text(
          'Calls',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                profilepics,
                fit: BoxFit.cover,
                width: 35.w,
                height: 35.w,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.link),
              ),
              title: Text('Create call link'),
              subtitle: Text('Share a link for your Whatsapp call'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Recent',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          callItem(context),
          callItem(context),
          callItem(context),
          callItem(context),
          callItem(context),
          callItem(context),

          ],
        ),
      ),
    );
  }
}
