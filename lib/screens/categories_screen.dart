import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "CATEGORIES",
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
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.greenAccent,
                height: 50,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.check), Text("Following")],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
