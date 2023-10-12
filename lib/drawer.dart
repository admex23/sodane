import 'package:beautiful_hadiya/path_to_contact_screen.dart';
import 'package:flutter/material.dart';
import 'path_to_settings_screen.dart';
import 'about_page.dart';
import 'editors_page.dart';

class DrawerExtends extends StatefulWidget {
  final ValueChanged<ThemeData> onThemeChanged; // Callback for theme change

  const DrawerExtends({Key? key, required this.onThemeChanged})
      : super(key: key);

  @override
  _DrawerExtendsState createState() => _DrawerExtendsState();
}

class _DrawerExtendsState extends State<DrawerExtends> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xff764abc)),
            accountName: Text(
              "Admasu Edilu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "ediluadmasu@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: FlutterLogo(),
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });

              // Call the callback function to notify the main widget about theme change
              widget.onThemeChanged(getThemeData());
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Editor'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditorsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.contacts,
            ),
            title: const Text('Contact'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
            ),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          // Add more list titles as needed
        ],
      ),
    );
  }

  ThemeData getThemeData() {
    if (isDarkMode) {
      return ThemeData.dark();
    } else {
      return ThemeData.light();
    }
  }
}
