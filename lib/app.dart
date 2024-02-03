import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/bidings/general_bidings.dart';
import 'package:js_goods/utils/constants/colors.dart';
import 'package:js_goods/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        initialBinding: GeneralBidings(),
        /// sShow loader orcircular progress indicator meanwhile autentication repository is deciding to show relevant screen.
        home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(TColors.white),
            ),
          )
        )
      );
  }
}