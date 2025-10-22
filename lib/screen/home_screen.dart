// shortcut
// stl =Stateless
// stf= Statefull

import 'package:flutter/material.dart';
import 'package:full_course_app/screen/profile_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar have 3: leading, title, actions
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: TextButton(
            child:Text ("Page title",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
          onPressed: () {
            print("Click me!!!");
          },
        ),
        leading: IconButton(
          onPressed: () {
            print("Click me!!!");
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                },
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  print("Test me");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                },
                icon: Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
            Text("Hello World"),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
        ],
      ),
    );
  }
}
