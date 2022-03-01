import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:trivia_app/screens/categories_screen.dart';
import 'package:trivia_app/screens/chat_screen.dart';
import 'package:trivia_app/screens/home_tab.dart';
import 'package:trivia_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Image(image: AssetImage('lib/assets/Oval.png')),
          ),
        ),
        title: const Center(
          child: Text(
            "HOME",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(0),
            child: Row(
              children: const [
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
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(25.0)),
          ),
        ],
      ),
      body: Container(child: show[currentPage]),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        currentIndex: currentPage,
        items: [
          SalomonBottomBarItem(
            // activeIcon: Container(
            //   decoration: BoxDecoration(
            //     color: Colors.greenAccent,
            //   ),
            // ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("profile"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.flash_on,
              color: Colors.black,
            ),
            title: Text("quizzes"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.black,
            ),
            title: Text("quizzes"),
          ),
        ],
      ),
    );
  }

  List<Widget> show = [
    HomeTab(),
    ProfileScreen(),
    ChatScreen(),
    CategoriesScreen(),
  ];
}
