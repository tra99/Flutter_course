import 'package:flutter/material.dart';
import 'package:full_course_app/components/custom_app_bar.dart';
import 'package:full_course_app/components/custom_card.dart';

class CardData{
  String name;
  String image;
  CardData({required this.name,required this.image});
}

class EmployeeScreen extends StatelessWidget {
   EmployeeScreen({super.key});

  List<CardData> cardData = [
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test2", image: "https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png"),
    CardData(name: "test3", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test4", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: CustomAppBar(
          name: "Employee Home",
          centerTitle: true,
          iconLeading: Icons.menu_rounded,
          icon1: Icons.notifications_outlined,
          isShowIcon1: true,
        ),
      ),
      // children[]: Row, Column, Stack
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",width: 70,height: 70,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jessica Jones",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Flutter developer freelance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color:Colors.grey),),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("View personal profile"),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                width: screenWidth,
                height: screenHeight,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: cardData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12
                    ),
                    itemBuilder: (context, index) {
                      final card = cardData[index];
                      return CustomCard(image: NetworkImage(card.image), name: card.name);
                    },
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
