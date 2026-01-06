import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:helloworld/splash_screen.dart';
// import 'package:helloworld/home_page.dart';
// import 'package:helloworld/facebook.dart';
import 'package:helloworld/signup_page.dart';
// import 'package:helloworld/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "Facebook Clone",
      // home: SplashScreen(),
      home: Scaffold(
        body: SignUpPage(),
      ),
      // const SplashScreen(),
      // HomePage(),
      // Login(),
    ),
  );
}

// class SignUpPage extends StatefulWidget {
//   SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final _formGlobalKey = GlobalKey<FormState>();
//   File? _image;

//   @override
//   Widget build(context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 40),
//         child: Form(
//           key: _formGlobalKey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               //---NAME FIELD---
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Full Name:",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) =>
//                     value!.isEmpty || value == null ? "Enter your name" : null,
//                 maxLength: 30,
//               ),
//               const SizedBox(height: 10),

//               //---EMAIL FIELD---
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) => !value!.contains('@') || value.isEmpty
//                     ? 'Invalid email'
//                     : 'null',
//               ),
//               SizedBox(height: 20),

//               //----PHONE NUMBER-----
//               TextFormField(
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   labelText: "Phone number",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) =>
//                     value!.length < 10 ? "Enter valid number" : null,
//               ),
//               SizedBox(height: 20),

//               //----PASSWORD -----
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: "Password",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) =>
//                     value!.length < 6 ? "Minimum 6 character" : null,
//               ),
//               SizedBox(
//                 height: 30,
//               ),

//               //----SUBMIT BUTTON -----
//               FilledButton(
//                   onPressed: () {
//                     if (_formGlobalKey.currentState!.validate()) {
//                       Text("invalid input");
//                     }
//                   },
//                   child: Text("Register"),
//                   style: FilledButton.styleFrom(
//                       backgroundColor: Color(0xff862c0c))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//submit button
