import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/common/utils/colors/app_colors.dart';
import 'package:whatsapp_clone/screens/chats/chats_screen.dart';

import '../../../screens/calls/call_screen.dart';
import '../../../screens/communities/communities.dart';
import '../../../screens/updates/updates.dart';

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
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onTapped,
        selectedIndex: _selectedIndex,
        indicatorColor:
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? lightButtonBackgroundColor
                : darkButtonBackgroundColor,
        destinations: const [
          NavigationDestination(
            selectedIcon: Badge(
              child: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: Text('2'),
            ),
            icon: Badge(
              child: Icon(CupertinoIcons.chat_bubble_2),
              label: Text('2'),
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
            label: 'Home',
          ),
        ],
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
                  ? Theme.of(context).colorScheme.brightness == Brightness.light
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
                : Theme.of(context).colorScheme.brightness == Brightness.light
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
