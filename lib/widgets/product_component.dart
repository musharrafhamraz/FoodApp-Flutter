import 'package:flutter/material.dart';
import 'package:foodappclone/screens/product_detail_screen.dart';
import 'package:gap/gap.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProductDetailScreen())),
      child: Container(
        height: 190,
        width: 161,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          children: [
            Image(
              image: AssetImage('assets/Picture1.png'),
            ),
            Gap(5.0),
            Text(
              'Beef Burger',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('\$12',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.amber)),
                Image(
                  image: AssetImage('assets/Picture7.png'),
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
