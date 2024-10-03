// Job Detail Chip Widget
import 'package:flutter/material.dart';

class JobDetailChip extends StatelessWidget {
  final String label;

  const JobDetailChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color.fromARGB(
            255,
            214,
            214,
            214,
          )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
