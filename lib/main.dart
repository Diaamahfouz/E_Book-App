import 'package:e_book/constants/constants.dart';
import 'package:e_book/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EBookApp());
}
class EBookApp extends StatelessWidget {
  const EBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimarycolor),
      debugShowCheckedModeBanner: false,
      home:const SplashView(),
    );
  }
}