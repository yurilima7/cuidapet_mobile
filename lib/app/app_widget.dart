import 'package:asuka/asuka.dart' as asuka;
import 'package:cuidapet_mobile/app/core/ui/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setObservers([asuka.asukaHeroController]);
    Modular.setInitialRoute('/auth/');

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => MaterialApp.router(
        title: UiConfig.title,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return asuka.builder(context, child);
        },
        theme: UiConfig.theme,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
