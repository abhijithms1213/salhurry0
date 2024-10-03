import 'dart:developer';

import 'package:flutter/material.dart';

class ComonClass {
  const ComonClass();
  ElevatedButton elevatedButtonCommon(
      String centerButton,
      String which,
      TextEditingController fullNameController,
      TextEditingController mobileController,
      TextEditingController passwordController) {
    return ElevatedButton(
      onPressed: () {},
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {
              if (which == 'login') {
                log('Mobile: ${mobileController.text}');
                log('Password: ${passwordController.text}');
              } else if (which == 'create Account') {
                log('Full Name: ${fullNameController.text}');
                log('Mobile: ${mobileController.text}');
                log('Password: ${passwordController.text}');
              }
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
            child: Text(
              '   $centerButton   ',
              style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(212, 255, 255, 255),
                  letterSpacing: 3),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

Container logintextfield(String hintText, TextEditingController controller) {
  //commonly using in some screens, .it is a text field 
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 246, 246),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white)),
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
