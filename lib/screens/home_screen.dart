import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
            "HOME",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
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
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[200],
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image(image: AssetImage('lib/assets/illustration.png')),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Today's winning pool",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "15 winners",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent,
                radius: 70,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 55,
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent,
                radius: 46,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1 Hr 10 Min",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "played",
                      style: TextStyle(color: Colors.grey[400], fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "History",
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
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(
                                "",
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("World"),
                                      Row(
                                        children: [
                                          Text("Prizes"),
                                          Text("2"),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.amber,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_right_alt),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: 3),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // activeIcon: Container(
            //   decoration: BoxDecoration(
            //     color: Colors.greenAccent,
            //   ),
            // ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.flash_on,
                color: Colors.black,
              ),
              label: "Quizzes"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.black,
              ),
              label: "Wallet"),
        ],
      ),
    );
  }
}
