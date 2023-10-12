import 'package:beautiful_hadiya/Gallerpage.dart';
import 'package:beautiful_hadiya/splash.dart';
import 'package:flutter/material.dart';
import 'package:beautiful_hadiya/home.dart';
import 'package:beautiful_hadiya/profile_page.dart';
import 'package:beautiful_hadiya/drawer.dart';
import 'package:beautiful_hadiya/Quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        // Add your custom theme colors here
        primaryColor: Colors.deepOrange, // Change the primary color
        hintColor: Colors.amber, // Change the accent color
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Customize the dark theme colors here
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              primary:
                  Colors.deepPurple, // Change the primary color for dark mode
              secondary:
                  Colors.deepOrange, // Change the accent color for dark mode
            ),
      ),
      themeMode:
          ThemeMode.system, // Set the initial theme mode to system default
      home: const Splash(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key, required this.title});
  final String title;

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentpage = 0;
  var indexx = 0;
  // ignore: prefer_const_constructors
  List<Widget> pages = [
    const Homepage(),
    Profilepage(),
    GalleryPage(),
    QuizPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Beautiful Hadiya '),
      ),
      drawer: DrawerExtends(
        onThemeChanged: (ThemeData value) {},
      ), // ignore: unnecessary_new

      body: Container(child: pages[currentpage]),
      bottomNavigationBar: NavigationBar(
          selectedIndex: indexx,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.menu_open), label: 'menu'),
            NavigationDestination(
                icon: Icon(Icons.link_rounded), label: ' Gallery Page'),
            NavigationDestination(
                icon: Icon(Icons.person), label: 'For Tourist'),
            NavigationDestination(icon: Icon(Icons.quiz), label: 'Quiz'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              indexx = index;
              currentpage = index;
            });
          }),
    );
  }
}
