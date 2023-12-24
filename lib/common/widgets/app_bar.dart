import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar({required Widget title, required List<Widget> actions}) {
  return AppBar(

    title: title,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.3),
        height: 1,
      ),
    ),
    actions: actions,
  );
}
