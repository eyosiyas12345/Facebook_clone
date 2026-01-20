import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';
import 'package:helloworld/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formGlobalKey = GlobalKey<FormState>();

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
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text("Email:"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.isEmpty || !value!.contains("@")
                    ? "Invalid email"
                    : null,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty || value.length < 8
                      ? "Incorrect password"
                      : null),
              SizedBox(
                height: 20,
              ),
              //Login Button
              FilledButton(
                onPressed: () {
                  if (_formGlobalKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Succefully logged in")),
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: FilledButton.styleFrom(
                    backgroundColor: Color(0xff0084fe),
                    minimumSize: Size(300, 40)),
              ),
              SizedBox(height: 40),
              //Create account
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
                child: Text("Create New Account",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Color(0xff0084fe),
                  minimumSize: Size(150, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
