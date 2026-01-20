// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:helloworld/login_page.dart';
// import 'package:helloworld/home_page.dart';
// import 'dart:io';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final _formGlobalKey = GlobalKey<FormState>();
//   File? _image;

//   // Function to pick image from gallery
//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(
//         () {
//           _image = File(pickedFile.path);
//         },
//       );
//     }
//   }

//   @override
//   Widget build(context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40),
//           child: Form(
//             key: _formGlobalKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 //---NAME FIELD---
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: "Full Name:",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) => value!.isEmpty || value == null
//                       ? "Enter your name"
//                       : null,
//                   maxLength: 30,
//                 ),
//                 const SizedBox(height: 10),

//                 //---EMAIL FIELD---
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: "Email",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) => !value!.contains('@') || value.isEmpty
//                       ? 'Invalid email'
//                       : null,
//                 ),
//                 SizedBox(height: 20),

//                 //----PHONE NUMBER-----
//                 TextFormField(
//                   keyboardType: const TextInputType.numberWithOptions(),
//                   decoration: InputDecoration(
//                     labelText: "Phone number",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) =>
//                       value!.length != 10 ? "Ten digits needed" : null,
//                 ),
//                 SizedBox(height: 20),

//                 //----PASSWORD -----
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) =>
//                       value!.length < 8 ? "Minimum 6 character" : null,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 OutlinedButton(
//                   onPressed: () => _pickImage(),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       Text("Add Profile Picture"),
//                       Icon(
//                         Icons.photo,
//                         color: Colors.grey,
//                       ),
//                     ],
//                   ),
//                   style: OutlinedButton.styleFrom(
//                       backgroundColor: Color(0x00fefefe),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       foregroundColor: Color(0xff646464)),
//                 ),
//                 SizedBox(height: 30),

//                 //----SUBMIT BUTTON -----

//                 //Register Button
//                 FilledButton(
//                   onPressed: () {
//                     if (_formGlobalKey.currentState!.validate()) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text("Account has created")),
//                       );
//                       Navigator.pushReplacement(context,
//                           MaterialPageRoute(builder: (context) => HomePage()));
//                     }
//                   },
//                   child: Text("Signup",
//                       style: TextStyle(fontWeight: FontWeight.w500)),
//                   style: FilledButton.styleFrom(
//                     backgroundColor: Color(0xff0084fe),
//                     minimumSize: Size(300, 40),
//                   ),
//                 ),
//                 const SizedBox(height: 20),

//                 //Login Button
//                 FilledButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(context,
//                         MaterialPageRoute(builder: (context) => LoginPage()));
//                   },
//                   child: Text(
//                     "Login",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   style: FilledButton.styleFrom(
//                       backgroundColor: Color(0xff00ff0d),
//                       minimumSize: Size(300, 40)),
//                 ),
//                 SizedBox(height: 20),
//                 //--- GOOGLE BUTTON ---
//                 OutlinedButton(
//                   onPressed: () {
//                     // TODO: Implement Google Sign-In logic
//                     print("Google Sign Up Tapped");
//                   },
//                   style: OutlinedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     minimumSize:
//                         const Size(300, 48), // Matching your other buttons
//                     side: const BorderSide(
//                         color: Color(0xFFE0E0E0)), // Light grey border
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Google Logo (Using a network image for quick setup)
//                       Image.network(
//                         'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
//                         height: 20,
//                       ),
//                       const SizedBox(width: 12),
//                       const Text(
//                         "Sign up with Google",
//                         style: TextStyle(
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:io';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formGlobalKey = GlobalKey<FormState>();
  File? _image;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loading = false;

  // Function to pick image from gallery
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(
        () {
          _image = File(pickedFile.path);
        },
      );
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: _formGlobalKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //---NAME FIELD---
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Full Name:",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Enter your name"
                      : null,
                  maxLength: 30,
                ),
                const SizedBox(height: 10),

                //---EMAIL FIELD---
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      (value == null || value.isEmpty || !value.contains('@'))
                          ? 'Invalid email'
                          : null,
                ),
                SizedBox(height: 20),

                //----PHONE NUMBER-----
                TextFormField(
                  controller: _phoneController,
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => (value == null || value.length != 10)
                      ? "Ten digits needed"
                      : null,
                ),
                SizedBox(height: 20),

                //----PASSWORD -----
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => (value == null || value.length < 8)
                      ? "Minimum 8 characters"
                      : null,
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () => _pickImage(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Add Profile Picture"),
                      Icon(
                        Icons.photo,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0x00fefefe),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      foregroundColor: Color(0xff646464)),
                ),
                const SizedBox(height: 10),
                if (_image != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: FileImage(_image!),
                    ),
                  ),
                const SizedBox(height: 20),

                //----SUBMIT BUTTON -----

                //Register Button
                FilledButton(
                  onPressed: _loading ? null : _registerWithEmail,
                  child: _loading
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text("Signup"),
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xff0084fe),
                    minimumSize: const Size(300, 40),
                  ),
                ),
                const SizedBox(height: 20),

                //Login Button
                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: FilledButton.styleFrom(
                      backgroundColor: Color(0xff00ff0d),
                      minimumSize: Size(300, 40)),
                ),
                SizedBox(height: 20),
                //--- GOOGLE BUTTON ---
                OutlinedButton(
                  onPressed: () async {
                    await _signInWithGoogle();
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize:
                        const Size(300, 48), // Matching your other buttons
                    side: const BorderSide(
                        color: Color(0xFFE0E0E0)), // Light grey border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Logo (Using a network image for quick setup)
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
                        height: 20,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Sign up with Google",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                // Google Sign-In implementation
                FutureBuilder(
                  future: Future.value(null),
                  builder: (context, snapshot) => const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return; // user cancelled

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Sign-in failed: $e')));
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _registerWithEmail() async {
    if (!_formGlobalKey.currentState!.validate()) return;
    setState(() => _loading = true);
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text);

      if (userCredential.user != null) {
        await userCredential.user!
            .updateDisplayName(_nameController.text.trim());
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? 'Signup failed')));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Signup failed: $e')));
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }
}
