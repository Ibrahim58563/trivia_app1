import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        title: Center(
          child: Text(
            "PROFILE",
            style: TextStyle(color: Colors.black),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(image: AssetImage("")),
                Container(
                  height: 40,
                  width: 80,
                  child: Center(child: Text("Edit")),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                Text(
                  "Lee Waters",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "San Diego, CA",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "STATS",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "ACTIVE 1 MIN AGO",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "1000 CORRECT ANSWERS",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "500 INCORRECT ANSWERS",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "2,900 TOTAL QUESTIONS",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My Account"),
                              Text("Edit your informations"),
                            ],
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.greenAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Text("FOLLOWER"), Text("2318")],
                    ),
                    Column(
                      children: [Text("FOLLWING"), Text("364")],
                    ),
                    Column(
                      children: [Text("SHARE"), Icon(Icons.ios_share)],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "FOLLOWER",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Expanded(
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(""),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 20,
                                ),
                            itemCount: 9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(""),
                        height: 220,
                        width: 375,
                      ),
                      Column(
                        children: [
                          Text(
                            "Business",
                            style: TextStyle(color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Text("30%"),
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(""),
                        height: 220,
                        width: 375,
                      ),
                      Column(
                        children: [
                          Text(
                            "Business",
                            style: TextStyle(color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Text("30%"),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 375,
              child: Center(
                child: CircleAvatar(
                  radius: 62.5,
                  backgroundColor: Colors.greenAccent,
                  child: Text(
                    "30%",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
