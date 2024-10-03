import 'package:flutter/material.dart';

class EditItem extends StatelessWidget {
  final String title;
  const EditItem({
    super.key,
    required this.title,
    required this.controller,
    required this.hintText,
  });
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
            flex: 5,
            child: Container(
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
            ))
      ],
    );
  }
}
