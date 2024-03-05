
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shose_app/view/Productview_screen.dart';
import 'package:shose_app/view/home_screen.dart';
import 'package:shose_app/view/splash_screen.dart';


void main(){
  
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}
