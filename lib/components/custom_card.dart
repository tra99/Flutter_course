import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final ImageProvider image;
  final String name;
  const CustomCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 150,
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child: Image(image: image),
              ),
            ),
            SizedBox(height: 10),
            Text(name),
          ],
        ),
      ),
    );
  }
}
