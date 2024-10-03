import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/Main/screenmain.dart'; // Replace with the actual main screen path
import 'package:salhurry/presentation/create%20account/create_acc.dart';
import 'package:salhurry/utilities/common/common_top.dart';
import 'package:salhurry/utilities/common/bottomrow.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // Controllers for text fields
    final TextEditingController mobileController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top widget displaying the logo
              LoginTopWidget(height: height, width: width),

              // Header text
              Text(
                'Login',
                style: GoogleFonts.nunito(
                  fontSize: width * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.03),

              // Text fields
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    loginTextField("Your mobile number", mobileController),
                    SizedBox(height: height * 0.02),
                    loginTextField("Password", passwordController),
                    const SizedBox(height: 20),

                    // Submit button (Login)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login
                          logFunction(null, mobileController.text,
                              passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ScreenMain(), // Navigate to main screen
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            const Color.fromARGB(255, 1, 0, 70),
                          ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),

              // Bottom row to switch to Create Account screen
              BottomRowWidget(
                width: width,
                leading: "Don't have an account?",
                tail: "Create",
                onTap: () {
                  // Navigate to Create Account screen with a page transition
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenCreateAccount(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Log user input data for debugging
  void logFunction(
    String? fullName,
    String mobile,
    String password,
  ) {
    log('Mobile: $mobile');
    log('Password: $password');
  }
}

// Common TextField widget
Container loginTextField(String hintText, TextEditingController controller) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 246, 246, 246),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.white),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
