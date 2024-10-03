import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:salhurry/presentation/settings/edit_screen/widgets/edit_item.dart';
import 'package:salhurry/utilities/constants/const.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    return Scaffold(
      // App bar with back button
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),

              // Photo upload section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Photo",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/avatar.jpg",
                          height: 100,
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle photo upload
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.lightBlueAccent,
                          ),
                          child: const Text("Upload Image"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Name edit field
              EditItem(
                hintText: 'edit name',
                title: "Name",
                controller: nameController,
              ),
              const SizedBox(height: 40),

              // Age edit field
              EditItem(
                hintText: 'edit age',
                title: "Age",
                controller: ageController,
              ),
              const SizedBox(height: 40),

              // Email edit field
              EditItem(
                hintText: 'update your email',
                title: "Email",
                controller: emailController,
              ),
              khbox20,

              // Save button
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      String name = nameController.text;
                      String email = emailController.text;
                      String age = ageController.text;

                      // Log the values and navigate back
                      log("Name: $name");
                      log("Age: $age");
                      log("Email: $email");
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 1, 0, 70),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
