import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final String? number;
  final ImageProvider? image;
  final IconData? icon1;
  final IconData? icon2;
  final Color? titleColor;
  final bool? centerTitle;
  final Color? iconColorLeading;
  final IconData? iconLeading;
  final bool? isShowIcon1;
  final bool? isShowIcon2;
  final bool? isShowText;
  const CustomAppBar({
    super.key,
    required this.name,
    this.number,
    this.image,
    this.icon1,
    this.icon2,
    this.titleColor,
    this.centerTitle,
    this.iconColorLeading,
    this.iconLeading,
    this.isShowIcon1,
    this.isShowIcon2,
    this.isShowText
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.blue.shade600,
      title: Text(
        "Hello, Jane!",
        style: TextStyle(color: titleColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: centerTitle,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(iconLeading, color: iconColorLeading),
      ),
      actions: [
        Row(
          children: [
            isShowIcon1 == true
                ? Stack(
                  children: [
                    IconButton(
                        onPressed: () {

                        },
                        icon: Icon(icon1,),
                      ),
                    Positioned(right: 4,top: 4,child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 40, 15, 107),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("8",style: TextStyle(fontSize: 10,color: Colors.white),)),
                    ))
                  ],
                )
                : Container(),
            // SizedBox(width: 10),
            isShowIcon2 == true ?IconButton(
              onPressed: () {},
              icon: Icon(Icons.print_outlined, color: Colors.white),
            ): Container(),
            SizedBox(width: 10),
            isShowText == true?Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("10+", style: TextStyle(color: titleColor)),
              ),
            ): Container(),
            SizedBox(width: 10),
            isShowText == true?Container(
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
            ): Container(),
          ],
        ),
      ],
    );
  }
}
