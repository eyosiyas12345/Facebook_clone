import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage())),
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 100.0,
          ),
          // child: Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     const Icon(Icons.facebook, color: Colors.blue, size: 100),
          //     ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => HomePage()),
          //         );
          //       },
          //       child: const Text('Start'),
          //       style: ElevatedButton.styleFrom(
          //         foregroundColor: Colors.blue,
          //         backgroundColor: Colors.white,
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
