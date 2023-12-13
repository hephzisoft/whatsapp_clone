import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:whatsapp_clone/common/extension/build_context_extension.dart';
import 'package:whatsapp_clone/screens/chats/chats_screen.dart';

import '../../common/utils/images/image_res.dart';
import '../../common/widgets/app_bar.dart';
import 'widgets/chat_list_widgets.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({super.key});

  List chats = const [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: Text(
          'WhatsApp',
          style: context.appTextTheme.titleLarge,
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
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20.h),
        itemBuilder: (context, index) => GestureDetector(
          child: chatItem(),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const ChatsScreen(),
              ),
            );
          },
        ),
        itemCount: chats.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(CupertinoIcons.chat_bubble_fill),
      ),
    );
  }
}
