import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formGlobalKey = GlobalKey<FormState>();
  File? _image;

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _formGlobalKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //---NAME FIELD---
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Full Name:",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty || value == null ? "Enter your name" : null,
                maxLength: 30,
              ),
              const SizedBox(height: 10),

              //---EMAIL FIELD---
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => !value!.contains('@') || value.isEmpty
                    ? 'Invalid email'
                    : null,
              ),
              SizedBox(height: 20),

              //----PHONE NUMBER-----
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.length < 10 ? "Enter valid number" : null,
              ),
              SizedBox(height: 20),

              //----PASSWORD -----
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.length < 6 ? "Minimum 6 character" : null,
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
              SizedBox(height: 30),

              //----SUBMIT BUTTON -----

              //Register Button
              FilledButton(
                onPressed: () {
                  if (_formGlobalKey.currentState!.validate()) {
                    const Text("invalid input");
                  }
                },
                child: Text("Register"),
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xff862c0c),
                  minimumSize: Size(300, 40),
                ),
              ),
              const SizedBox(height: 20),

              //Login Button
              FilledButton(
                onPressed: () {},
                child: Text("Login"),
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(300, 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
