import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/common/extension/build_context_extension.dart';
// import 'package:whatsapp_clone/screens/updates/widgets/dynamic_border.dart';

import '../../common/utils/images/image_res.dart';
import '../../common/widgets/app_bar.dart';
import 'widgets/updates_widgets.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: Text(
          'Updates',
          style: context.appTextTheme.bodyMedium!.copyWith(fontSize: 20),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Status',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  )
                ],
              ),
              SizedBox(
                height: 80.h,
                child: ListTile(
                  leading: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          profilepics,
                          fit: BoxFit.cover,
                          width: 50.w,
                          height: 50.w,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                          ),
                          icon: const Icon(
                            Icons.add,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  title: const Text('My Status'),
                  subtitle: const Text('Tap to add status update'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10.w,
                ),
                child: const Text(
                  'Recent Updates',
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                height: context.screenHeight * 0.75,
                child: ListView.builder(
                  itemCount: 13,
                  itemBuilder: (context, index) => statusItem(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10.w,
                ),
                child: const Text(
                  'Recent Updates',
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
