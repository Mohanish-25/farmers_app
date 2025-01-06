import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  final Function(String, String)? onSubmit;
  final double? width;
  final double? height;

  const SignInForm({
    super.key,
    this.onSubmit,
    this.width,
    this.height,
  });

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _mobileController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final formWidth = widget.width ?? screenSize.width * 0.85;

    return SizedBox(
      width: formWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign In to continue',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C2E35),
                ),
              ),
              SizedBox(height: screenSize.height * 0.01), // Adjusted spacing
              const Text(
                'Enter Your Mobile Number',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2C2E35),
                ),
              ),
            ],
          ),

          SizedBox(height: screenSize.height * 0.04), // Adjusted spacing

          // Input Fields
          Column(
            children: [
              // Mobile Number Input
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFC5C5C5)),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8.5),
                child: Row(
                  children: [
                    const Icon(Icons.phone, color: Color(0xFF878787)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: _mobileController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Mobile Number',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xFF878787),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenSize.height * 0.02), // Adjusted spacing

              // OTP Input
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFC5C5C5)),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8.5),
                child: Row(
                  children: [
                    const Icon(Icons.phone_android_sharp,
                        color: Color(0xFF878787)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: _otpController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'OTP',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xFF878787),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: screenSize.height * 0.04), // Adjusted spacing

          // Continue Button
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                if (widget.onSubmit != null) {
                  widget.onSubmit!(_mobileController.text, _otpController.text);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B9846),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: const BorderSide(color: Color(0xFF2B9846)),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mobileController.dispose();
    _otpController.dispose();
    super.dispose();
  }
}
