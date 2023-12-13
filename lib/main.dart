import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'common/utils/theme/app_theme.dart';
import 'common/widgets/bottom_nav/bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      child: MaterialApp(
        themeMode: ThemeMode.system,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const AppBottomNavigation(),
      ),
    );
  }
}
