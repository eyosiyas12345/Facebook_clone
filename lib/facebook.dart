// import 'package:flutter/material.dart';
// import 'package:helloworld/home_page.dart';
// import 'package:helloworld/splash_screen.dart';
// import 'package:helloworld/Home_page.dart';

// class Facebook extends StatefulWidget {
//   const Facebook({super.key});

//   @override
//   State<Facebook> createState() {
//     return _FacebookState();
//   }
// }

// class _FacebookState extends State<Facebook> {
//   var activeScreen = 'splash screen';

//   switchScreen() {
//     setState(() {
//       activeScreen = 'home page';
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: activeScreen == 'splash screen'
//             ? const SplashScreen(switchScreen),
//             : const HomePage(),
//       ),
//     );
//   }
// }

// class _QuizState extends State<Quiz> {
//   var activeScreen = 'splash_screen';

//   switchScreen() {
//     setState(() {
//       activeScreen = 'questions_screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     Widget screenWidget = SplashScreen(switchScreen);

//     if (activeScreen == 'questions_screen') {
//       screenWidget = const QuestionsScreen();
//     }
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xff460252), Color(0xffa31eba)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: screenWidget,
//           // activeScreen == 'splash_screen'
//           //     ? SplashScreen(switchScreen)
//           //     : const QuestionsScreen(),
//         ),
//       ),
//     );
//   }
// }
