
import 'package:flutter/material.dart';
import 'package:salhurry/presentation/Notifications/widgets/custom_button.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  ButtonRowState createState() => ButtonRowState();
}

class ButtonRowState extends State<ButtonRow> {
  String _selectedButton = 'All';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomTopRowButtons(
          text: 'All',
          isSelected: _selectedButton == 'All',
          onPressed: () => setState(() => _selectedButton = 'All'),
        ),
        const SizedBox(width: 8),
        CustomTopRowButtons(
          text: 'New',
          isSelected: _selectedButton == 'New',
          onPressed: () => setState(() => _selectedButton = 'New'),
        ),
        const SizedBox(width: 8),
        CustomTopRowButtons(
          text: 'Mention',
          isSelected: _selectedButton == 'Mention',
          onPressed: () => setState(() => _selectedButton = 'Mention'),
        ),
      ],
    );
  }
}
