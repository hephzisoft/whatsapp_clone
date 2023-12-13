import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Column(
        children: [
          Container(
            width: 300.w,
            child: Row(

              children: [
                Icon(Icons.lock),
                Text(
                  '''Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listento them. Tap to learn more.''',
                  softWrap: true,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
