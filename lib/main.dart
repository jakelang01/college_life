import 'package:college_life/screens/calculator_screen.dart';
import 'package:college_life/screens/calendar_screen.dart';
import 'package:college_life/screens/clock_screen.dart';
import 'package:college_life/screens/diary_screen.dart';
import 'package:college_life/screens/grocery_screen.dart';
import 'package:college_life/screens/notes_screen.dart';
import 'package:college_life/screens/profile_screen.dart';
import 'package:college_life/screens/quizlet_screen.dart';
import 'package:college_life/screens/recipe_screen.dart';
import 'package:college_life/screens/settings_screen.dart';
import 'package:college_life/screens/sleep_screen.dart';
import 'package:college_life/screens/unit_converter_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_life/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To The College Life'),
        centerTitle: true,
      ),
      body: const Center(
        child: Image(
            image: AssetImage("assets/images/Bulldog_Logo.png")
        ),
      ),
      bottomNavigationBar: navBar(),
      drawer: HamburgerDir(),
    );
  }
}

BottomNavigationBar navBar() {
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'accounts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo),
          label: 'add photo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo),
          label: 'add photo',
        ),
      ]
  );
}

class HamburgerDir extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children: [
              ListTile(
                  title: Text('Login'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return LogInScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Calculator'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return CalculatorScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Calendar'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return CalendarScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Clock'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return ClockScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Diary'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return DiaryScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Grocery'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return GroceryScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Notes'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return NotesScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return ProfileScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Quizlet'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return QuizletScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Recipe'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return RecipeScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SettingsScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Sleep'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SleepScreen();
                            }));
                  }
              ),
              ListTile(
                  title: Text('Unit'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return UnitScreen();
                            }));
                  }
              ),
            ]
        )
    );
  }
}