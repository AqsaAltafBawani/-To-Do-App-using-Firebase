import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:to_do_app_using_flutter/home_page.dart';
import 'package:to_do_app_using_flutter/login_screen.dart';
import 'package:to_do_app_using_flutter/signup_screen.dart';
import 'package:to_do_app_using_flutter/forget_password_screen.dart'; // Import ForgetPasswordScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the configuration
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDovylV8OiUav4LeT4T_tFLAgsckJH3dUY",
      authDomain: "to-do-app-using-firebase.firebaseapp.com",
      projectId: "to-do-app-using-firebase",
      storageBucket: "to-do-app-using-firebase.firebasestorage.app",
      messagingSenderId: "614603325401",
      appId: "1:614603325401:web:e6ce573556adfaf6c563c8",
      measurementId: "G-TKZC4DG2WT",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        hintColor: Colors.amberAccent,
        scaffoldBackgroundColor: Colors.deepPurple.shade50,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple.shade700,
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomePage(),
        '/forget-password': (context) =>
            const ForgetPasswordScreen(), // Add the route for ForgetPasswordScreen
      },
    );
  }
}
