import 'package:flutter/material.dart';
import 'package:full_course_app/components/custom_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(name: "Hey, Jane!", titleColor: Colors.white),
      ),
      body: Center(
        child: Container(
          width: screenWidth*0.5,
          height: screenHeight*0.5,
          decoration: BoxDecoration(
            color: Colors.blueGrey,),
          child: Center(
            child: Text("Profile Screen"),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      // ),
    );
  }
}
