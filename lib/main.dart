import 'package:bloc_architecture/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/app_config.dart';
import 'config/app_theme.dart';
import 'config/build_variant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig().setConfig(BuildVariant.BETA);
  changeStatusBarColor();
  // FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
  // Size size = view.physicalSize;
  // printLog(size);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // AppConfig().setScreenSize(MediaQuery.of(context).size);
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      key: appGlobalKey,
      title: 'Flutter Demo',
      theme: appTheme,
      themeMode: ThemeMode.light,
      routes: AppRoutes.define(),
      home: Scaffold(
        backgroundColor: AppConfig().colors.white,
          body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amberAccent,
          child: const Text("Flutter Bloc Architecture Sample"),
        ),
      )),
    );
  }
}
