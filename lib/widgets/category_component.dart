import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String imgPath;
  final String label;
  final Function(String)? onSelectCategory;

  const CategoryButton(
      {super.key,
      required this.label,
      required this.imgPath,
      required this.onSelectCategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelectCategory!(label);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image(
                    fit: BoxFit.contain,
                    height: 50,
                    image: AssetImage(imgPath)),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
