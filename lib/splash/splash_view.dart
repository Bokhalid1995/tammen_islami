
import 'package:flutter/material.dart';
import 'package:tammen_islami/Splash/splash_body.dart';
import 'package:tammen_islami/core/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
           decoration: const BoxDecoration(
             color: PColor,
             image: DecorationImage(
               image: AssetImage("assets/images/insurance/pic (1).png" ),
               fit: BoxFit.cover
             ),

           ),
          child: const SplashBody()),
    );
  }
}
