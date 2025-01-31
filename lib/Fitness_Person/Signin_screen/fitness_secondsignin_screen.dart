import 'package:flutter/material.dart';
import 'package:heathfit/Fitness_Person/Signin_screen/fitness_otp_screen.dart';
import 'package:heathfit/Fitness_Person/Signin_screen/fitness_signin_screen.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/constant.dart';
import '../../utilities/sizeconfigure.dart';

class FitnessSecondSigninScreen extends StatefulWidget {
  const FitnessSecondSigninScreen({super.key});

  @override
  State<FitnessSecondSigninScreen> createState() => _FitnessSecondsigninState();
}

class _FitnessSecondsigninState extends State<FitnessSecondSigninScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 350,left: 20,top: 50),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessSignInScreen()));                  },
                            child: Container(
                                height: 5.5 * SizeConfigure.heightMultiplier!,
                                width: 15.0 * SizeConfigure.widthMultiplier!,
                                decoration: BoxDecoration(
                                    color: Colors.grey[800], shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: kTitleColor,
                                    size: 2.2*SizeConfigure.textMultiplier!,
                                  ),
                                ))),
                      ),
                      Image.asset(
                        'assets/fitnessimages/fsignin1.png',
                        height: 56.6* SizeConfigure.heightMultiplier!,
                        width: 56* SizeConfigure.widthMultiplier!,
                      ),
                    ],
                  ),

                  Positioned(
                      top: 310,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("      One ‘Rep’ More\nTo Start Your Journey",

                          style:  TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 3.0*SizeConfigure.textMultiplier!,
                          ),),
                      ))
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Text('Email', style: TextStyle(color: kMainColor,fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 40), // Reduced right padding
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.')) {
                        return "Enter a Valid email";
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'example@gmail.com',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12, // Change the hint text color to your desired color
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,right: 210),
                  child: Text('Mobile', style: TextStyle(color: kMainColor,fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 40), // Reduced right padding
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid phone number";
                      }
                      else if (value.length < 10 || value.length > 10) {
                        return "phone must be 10 character";
                      }
                      else
                        return null;
                    },
                    controller: phonecontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: '+91 999 999 9999',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12, // Change the hint text color to your desired color
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,right: 190),
                  child: Text('Password', style: TextStyle(color: kMainColor,fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 40), // Reduced right padding
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a password";
                      }
                      else if (value.length < 10 || value.length > 10) {
                        return "password must be 6 character";
                      }
                      else
                        return null;
                    },
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: '**********',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff3a3737), // Change the border color to your desired color
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12, // Change the hint text color to your desired color
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FitnessOtpScreen()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22,right: 22,top: 13,bottom: 13),
                          child: AppText(
                            text: "Sign Up ➤",
                            color: kButtonTextColor,
                            size: 1.8*SizeConfigure.textMultiplier!,
                            fw: FontWeight.w500,
                          ),
                        )))




              ],
            )
          ],
        ),
      ),
    );
  }
}
