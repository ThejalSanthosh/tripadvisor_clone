import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';
import 'package:trip_advisor/view/profile_screen/widgets/custom_inkwell_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                        color: ColorConstant.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 245, 122, 113),
                    child: Icon(Icons.person),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 217, 217),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      maxLines: 2,
                      "Sign in to manage your booking and easily plan your next trip",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomElevatedButton(
                      text: "Sign in",
                      textColor: ColorConstant.primaryWhite,
                      buttonColor: ColorConstant.primaryBlack,
                      horizontalPadding: 100,
                      verticalPadding: 10,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              CustomProfileInkwellButton(
                  icon: Icons.settings,
                  text: "Preferences",
                  icon2: Icons.arrow_forward_ios),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              CustomProfileInkwellButton(
                  icon: Icons.contact_support_outlined,
                  text: "Support",
                  icon2: Icons.arrow_forward_ios),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),

              // Text("Version:"),SizedBox(height: 10,),
              // Text("Device ID:")
            ],
          ),
        ),
      ),
    );
  }
}
