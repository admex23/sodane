// Timport 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: true,
              onChanged: (value) {
                // Handle switch state changes
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Appearance Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: false,
                onChanged: (value) {
                  // Handle switch state changes
                },
              ),
            ),
            ListTile(
              title: const Text('Font Size'),
              trailing: DropdownButton<String>(
                value: 'Medium',
                onChanged: (newValue) {
                  // Handle dropdown value changes
                },
                items: <String>['Small', 'Medium', 'Large']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
