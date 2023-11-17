import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/widgets/app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title:  Text(
          'Whatsapp',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [],
      ),
    );
  }
}
