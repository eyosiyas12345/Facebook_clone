import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "username",
              ),
              keyboardType: TextInputType.name,
            )
          ],
        ),
      ),
    );
  }
}
