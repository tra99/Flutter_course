import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final String? number;
  final ImageProvider? image;
  final IconData? icon1;
  final IconData? icon2;
  final Color? titleColor;
  const CustomAppBar({
    super.key,
    required this.name,
    this.number,
    this.image,
    this.icon1,
    this.icon2,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade600,
      title: Text(
        "Hello, Jane!",
        style: TextStyle(color: titleColor, fontSize: 16),
      ),
      leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios_new_outlined,color:Colors.white,),),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.file_copy_outlined, color: Colors.white),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.print_outlined, color: Colors.white),
            ),
            SizedBox(width: 10),
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("10+", style: TextStyle(color: titleColor))),
            ),
            SizedBox(width: 10),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  height: 50,
                  width: 50,
                  "https://tse3.mm.bing.net/th/id/OIP.kN8tEO6_wPf1PMEofLrdTgHaGh?cb=12ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
