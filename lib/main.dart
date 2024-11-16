// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:foodappclone/provider/bottom_navigation_index_provider.dart';
import 'package:foodappclone/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // DevicePreview(
    //   builder: (context) => MultiProvider(
    //     providers: [
    //       ChangeNotifierProvider(
    //           create: (_) => BottomNavigationIndexProvider()),
    //       // Add other providers here if needed
    //     ],
    //     child: const MyApp(),
    //   ),
    // ),
    ChangeNotifierProvider(
      create: (context) => BottomNavigationIndexProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
