import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Componets/illustration_section.dart';
import 'package:farmers_app/Componets/sign_in_form_mar.dart';
import 'package:farmers_app/Componets/skip_button_mar.dart';
import 'package:farmers_app/Screens/Service_english.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInMarathi extends StatelessWidget {
  const SignInMarathi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.02),
                const Header(),
                SizedBox(height: screenSize.height * 0.03),
                const IllustrationSection(),
                Stack(
                  children: [
                    Positioned(
                      right: 16,
                      child: SkipMarathiButton(
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
                      child: SignInFormMarathi(
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
