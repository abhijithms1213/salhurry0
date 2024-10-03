import 'package:flutter/material.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    bool isNotificationEnabled = true;
    bool isDataSaverEnabled = false;
    bool isUsageInfoEnabled = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(fontSize: kbigFontSize)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        children: [
          buildSectionTitle('General'),
          khbox10,
          buildSwitchTile('Dark mode', isDarkMode, (value) {
            isDarkMode = value;
          }),
          khbox10,
          buildSwitchTile('Notifications', isNotificationEnabled, (value) {
            isNotificationEnabled = value;
          }),
          khbox10,
          buildSwitchTile('Data saver mode', isDataSaverEnabled, (value) {
            isDataSaverEnabled = value;
          }),
          khbox15,
          ListTile(
            title: const Text('Clear cache'),
            onTap: () {
              // Handle clear cache action
            },
          ),
          khbox20,
          buildSectionTitle('Usage info'),
          khbox10,
          buildSwitchTile('Send usage info', isUsageInfoEnabled, (value) {
            isUsageInfoEnabled = value;
          }),
          khbox20,
          buildSectionTitle('Legal'),
          khbox10,
          buildListTile('Terms of use', () {
            // Navigate to terms of use
          }),
          khbox5,
          buildListTile('Community Guildlines', () {
            // Navigate to community guidelines
          }),
          khbox5,
          buildListTile('Privacy Policy', () {
            // Navigate to privacy policy
          }),
          khbox5,
          buildListTile('Third party Notices', () {
            // Navigate to third party notices
          }),
          khbox20,
          buildSectionTitle('Personal'),
          khbox10,
          buildListTile('Report a bug', () {
            // Handle report bug
          }),
          khbox10,
          buildListTile('Logout', () {
            // Handle logout
          }, color: Colors.red),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: knormalFontSize, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildSwitchTile(String title, bool value, Function(bool) onChanged) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }

  Widget buildListTile(String title, Function() onTap,
      {Color color = Colors.black}) {
    return ListTile(
      title: Text(
        title,
        style:
            TextStyle(color: color), // Use the color passed or default to black
      ),
      onTap: onTap,
    );
  }
}
