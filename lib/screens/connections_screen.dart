import 'package:flutter/material.dart';

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "Connections",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Text(
                      '40',
                      style: TextStyle(color: Colors.amber),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Follower",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Following",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Invite",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 122,
              color: Colors.grey[200],
              child: Center(
                child: (Column(
                  children: [
                    Text(
                      "Invite friends",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Earn 0.5 points for every new connection that",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "This is your unique signup code",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Open the app and enter this code during signup",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 300,
              height: 60,
              color: Colors.grey[200],
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "qwyd7278ehje99j3jk2kflsu",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(Icons.copy)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Share",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
