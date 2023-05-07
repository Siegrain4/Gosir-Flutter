import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi kasir',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xffFFB133),
      )),
      initialRoute: initialRoute,
      getPages: routes,
    );
  }
}
