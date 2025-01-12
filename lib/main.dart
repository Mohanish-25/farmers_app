import 'package:farmers_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Set the status bar to be transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness:
        Brightness.dark, // For dark icons on light background
  ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _preloadImages();
  }

  Future<void> _preloadImages() async {
    final List<String> imagePaths = [
      'assets/images/College_Logo.jpg',
      'assets/images/NSS_Logo.jpg',
      // Add all other asset image paths here
    ];

    for (String path in imagePaths) {
      await precacheImage(AssetImage(path), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krushi मित्र',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(), // Set SplashScreen as the home widget
    );
  }
}
