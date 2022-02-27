import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/default_button.dart';

import '../widgets/default_form_field.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(
              function: () {},
              text: "Sign in with facebook",
              color: Colors.blue,
              iconColor: Colors.white,
              textColor: Colors.white,
              prefix: Icons.facebook,
              preSpace: 3.0,
            ),
            SizedBox(
              height: 10,
            ),
            defaultButton(
              function: () {},
              text: "Sign in with facebook",
              color: Colors.red,
              iconColor: Colors.white,
              textColor: Colors.white,
              prefix: Icons.facebook,
              preSpace: 3.0,
            ),
            SizedBox(
              height: 20,
            ),
            defaultFormField(
              labelText: "Email",
              type: TextInputType.emailAddress,
              prefix: Icons.email_outlined,
            ),
            SizedBox(
              height: 20,
            ),
            defaultFormField(
              labelText: "User name",
              type: TextInputType.emailAddress,
              prefix: Icons.person,
            ),
            SizedBox(
              height: 20,
            ),
            defaultFormField(
                labelText: "Password",
                type: TextInputType.number,
                prefix: Icons.lock,
                suffix: Icons.remove_red_eye_outlined),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "By creating an account, you agree to our \nterm & conditions",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(
                function: () {},
                text: "Sign In",
                color: Colors.greenAccent,
                textColor: Colors.black,
                suffix: Icons.login_outlined,
                endSpace: 170),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign in"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: TextButton(
                    onPressed: () {}, child: Text("Forget password?"))),
          ],
        ),
      ),
    );
  }
}
