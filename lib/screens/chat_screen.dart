import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 222,
              child: Center(
                child: Text(
                  "Hi Harry! How was your day?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 72,
              width: 293,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hi dear! very nice, Do you see something interesting today?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadiusDirectional.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 222,
              child: Center(
                child: Text(
                  "Hi Harry! How was your day?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}
