import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(image: AssetImage("lib/assets/Image.png")),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          child: Center(child: Text("Edit")),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      "Lee Waters",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "San Diego, CA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
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
                                  backgroundImage:
                                      AssetImage("lib/assets/Ovale.png"),
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
            Column(
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage("lib/assets/Business.png"),
                      height: 220,
                      width: 375,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Business",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Text("30%"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: AssetImage("lib/assets/Flower.png"),
                      height: 220,
                      width: 375,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Flower",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Text("30%"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
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
