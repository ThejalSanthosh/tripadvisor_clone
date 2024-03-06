import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/image_constants.dart';
import 'package:trip_advisor/view/account_create_screen/account_create_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    
    Future.delayed(Duration(seconds: 4)).then((value) {

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AccountCreateScreen(),));

    });
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageConstant.tripAdvisorLogoPng,scale: 3.5,),
      ),
    );
  }
}