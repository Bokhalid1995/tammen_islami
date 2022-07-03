import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tammen_islami/splash/splash_view.dart';

void main() {
  runApp(const IslamicInsurance());
}

class IslamicInsurance extends StatelessWidget {
  const IslamicInsurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      textDirection: TextDirection.rtl,
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      home: const SplashView(),
    );
  }
}