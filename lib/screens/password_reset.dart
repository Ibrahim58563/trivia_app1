import 'package:flutter/material.dart';
import 'package:trivia_app/components.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password Reset',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter your email id to reset your password',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            defaultFormField(
              prefix: null,
              labelText: "Email",
              type: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 50.0,
            ),
            defaultButton(
                function: () {},
                text: "Continue",
                color: Colors.greenAccent,
                textColor: Colors.black,
                suffix: Icons.arrow_forward,
                endSpace: 170),
          ],
        ),
      ),
    );
  }
}
