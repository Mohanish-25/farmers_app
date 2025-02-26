import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Componets/illustration_section.dart';
import 'package:farmers_app/Componets/sign_in_form_eng.dart';
import 'package:farmers_app/Componets/skip_button_eng.dart';
import 'package:farmers_app/Screens/service/service_eng.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInEnglish extends StatelessWidget {
  const SignInEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const Header(),
                const IllustrationSection(),
                Stack(
                  children: [
                    Positioned(
                      right: 16,
                      child: SkipButton(
                        onPressed: () {
                          // Handle skip button press
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceEnglishScreen()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.02,
                        horizontal: screenSize.width * 0.05,
                      ),
                      child: SignInForm(
                        onSubmit: (mobile, otp) {
                          // Show toast message
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Fluttertoast.showToast(
                              msg: "Coming soon",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
