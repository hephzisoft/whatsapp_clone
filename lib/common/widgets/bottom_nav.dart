import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/common/utils/app_colors.dart';
import 'package:whatsapp_clone/screens/chats/chats_screen.dart';

import '../../screens/calls/call_screen.dart';
import '../../screens/communities/communities.dart';
import '../../screens/updates/updates.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPage(_selectedIndex),
      bottomNavigationBar: Container(
        height: 100.h,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
              icon: bottomNavItem(
                icon: CupertinoIcons.chat_bubble_2,
                isActive: false,
                title: 'Chats',
              ),
              activeIcon: bottomNavItem(
                icon: CupertinoIcons.chat_bubble_2_fill,
                isActive: true,
                title: 'Chats',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: bottomNavItem(
                icon: CupertinoIcons.settings,
                isActive: false,
                title: 'Updates',
              ),
              activeIcon: bottomNavItem(
                icon: CupertinoIcons.settings_solid,
                isActive: true,
                title: 'Updates',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: bottomNavItem(
                icon: Icons.groups_outlined,
                isActive: false,
                title: 'Communities',
              ),
              activeIcon: bottomNavItem(
                icon: Icons.groups,
                isActive: true,
                title: 'Communities',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: bottomNavItem(
                icon: CupertinoIcons.phone,
                isActive: false,
                title: 'Calls',
              ),
              activeIcon: bottomNavItem(
                icon: CupertinoIcons.phone_solid,
                isActive: true,
                title: 'Calls',
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavItem(
      {IconData icon = CupertinoIcons.chat_bubble_2_fill,
      bool isActive = false,
      String title = 'text'}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isActive
                  ? Theme.of(context).colorScheme.brightness  == Brightness.light
                      ? lightButtonBackgroundColor
                      : darkButtonBackgroundColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
          margin: EdgeInsets.only(bottom: 13.h),
          child: Icon(
            icon,
            color: isActive
                ? Theme.of(context).colorScheme.brightness == Brightness.light
                    ? darkPrimaryColor
                    : lightPrimaryColor
                : Theme.of(context).colorScheme.brightness  == Brightness.light
                    ? darkBackgroundColor
                    : lightBackgroundColor,
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
          ),
        )
      ],
    );
  }
}

Widget buildPage(int index) {
  switch (index) {
    case 0:
      return const ChatScreen();
    case 1:
      return const UpdatesScreen();
    case 2:
      return const CommunitiesScreen();
    case 3:
      return const CallsScreen();

    default:
      return const ChatScreen();
  }
}
