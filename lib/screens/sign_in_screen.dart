import 'package:flutter/material.dart';
import 'package:trivia_app/components.dart';

class SignInScreen extends StatelessWidget {
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
              'Sign In',
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
              // Image(
              //   image: AssetImage('lib/assets/Mask Group 9.png')
              // ),
              preSpace: 3.0,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('lib/assets/illustration.png')),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Today's Grand Prize",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
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
