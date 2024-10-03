
import 'package:flutter/material.dart';
import 'package:salhurry/presentation/settings/edit_screen/edit_screen.dart';

class WidgetProfileEditButton extends StatelessWidget {
  const WidgetProfileEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            // Navigate to edit profile screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EditAccountScreen(),
              ),
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              const Color.fromARGB(255, 1, 0, 70),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Text(
                '   Edit profile   ',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(212, 255, 255, 255)),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
