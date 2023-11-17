import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/widgets/app_bar.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: Text(
          'Communities',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
        ),
        actions: [],
      ),
    );
  }
}
