import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/common/extension/build_context_extension.dart';
import 'package:whatsapp_clone/common/utils/colors/app_colors.dart';
import 'package:whatsapp_clone/screens/chats/chats_screen.dart';

import '../../../screens/calls/call_screen.dart';
import '../../../screens/communities/communities.dart';
import '../../../screens/updates/updates.dart';
import 'controller/bottom_nav_controller.dart';

class AppBottomNavigation extends ConsumerWidget {
  const AppBottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int _selectedIndex = ref.watch(bottomNavProvider);
    return Scaffold(
      body: buildPage(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.transparent,
        onDestinationSelected: (value) =>
            ref.read(bottomNavProvider.notifier).changeIndex(value),
        selectedIndex: _selectedIndex,
        indicatorColor:
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? lightButtonBackgroundColor
                : darkButtonBackgroundColor,
        destinations: const [
          NavigationDestination(
            selectedIcon: Badge(
              label: Text('2'),
              child: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            icon: Badge(
              label: Text('2'),
              child: Icon(CupertinoIcons.chat_bubble_2),
            ),
            label: 'Chats',
          ),
          NavigationDestination(
            selectedIcon: Badge(
              smallSize: 10,
              // backgroundColor:Colors.green,
              child: Icon(CupertinoIcons.settings_solid),
            ),
            icon: Badge(
              smallSize: 10,
              child: Icon(CupertinoIcons.settings),
            ),
            label: 'Updates',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.groups),
            icon: Icon(Icons.groups_outlined),
            label: 'Communities',
          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.phone_solid),
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
        ],
      ),
    );
  }

  Widget buildPage(int index) {
    switch (index) {
      case 0:
        return ChatScreen();
      case 1:
        return const UpdatesScreen();
      case 2:
        return const CommunitiesScreen();
      case 3:
        return const CallsScreen();

      default:
        return ChatScreen();
    }
  }
}
