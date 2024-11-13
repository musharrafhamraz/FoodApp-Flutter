import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(149, 119, 242, 1),
            Color.fromRGBO(160, 133, 247, 1)
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Todays Offer',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                'Free Box of Fries',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'on all orders above \$150',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          GestureDetector(
              onTap: () {},
              child: const Image(image: AssetImage('assets/Picture6.png')))
        ],
      ),
    );
  }
}
