import 'dart:math';
import 'package:flutter/material.dart';
import 'package:foodappclone/widgets/button.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(70, 43, 156, 1),
            Color.fromRGBO(100, 74, 181, 1)
          ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    right: 24.0,
                    left: 24.0,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Transform.rotate(
                angle: pi / 7,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      // color: Colors.white.withOpacity(0.01),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white
                              .withOpacity(0.08), // Shadow color with opacity
                          spreadRadius: 8, // How much the shadow spreads
                          blurRadius: 12, // Softness of the shadow
                          offset: const Offset(4, 4), // Offset for X and Y
                        ),
                      ]),
                  child: Transform.rotate(
                      angle: -pi / 7,
                      child: const Image(
                        image: AssetImage('assets/Picture1.png'),
                        fit: BoxFit.contain,
                      )),
                ),
              ),
              const Gap(55),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingAndPrice(),
                    Gap(10),
                    ProductNameAndQuatitySelection(),
                    // Description
                    Gap(10),
                    Text(
                      'Big juicy beef burger with cheese, lettuce, tomato, onion and special sauce!.',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300),
                    ),
                    Gap(10),
                    Text(
                      'Adds on',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AddOnsItem(),
                        AddOnsItem(),
                        AddOnsItem(),
                      ],
                    ),
                    Gap(20),
                    // Button
                    Align(
                      alignment: Alignment.center,
                      child: MainButton(
                        text: 'Add To Cart',
                        bgcolor: Color.fromRGBO(70, 43, 156, 1),
                        textcolor: Colors.white,
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      )),
    );
  }
}

class AddOnsItem extends StatelessWidget {
  const AddOnsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Image(image: AssetImage('assets/Picture8.png')),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Image.asset(
          'assets/Picture7.png',
          height: 30,
        ),
      )
    ]);
  }
}

class ProductNameAndQuatitySelection extends StatelessWidget {
  const ProductNameAndQuatitySelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Beef Burger',
          style: TextStyle(
              fontSize: 22, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Iconsax.minus_cirlce,
              color: Color.fromRGBO(70, 43, 156, 1),
            ),
            Gap(12),
            Text(
              '1',
              style: TextStyle(
                color: Color.fromRGBO(70, 43, 156, 1),
              ),
            ),
            Gap(12),
            Icon(
              Iconsax.add_circle,
              color: Color.fromRGBO(70, 43, 156, 1),
            )
          ],
        )
      ],
    );
  }
}

class RatingAndPrice extends StatelessWidget {
  const RatingAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 52,
          width: 100,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(70, 43, 156, 1),
              borderRadius: BorderRadius.circular(50)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Iconsax.star1,
                color: Colors.amber,
                size: 29,
              ),
              Text(
                '4.8',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const Text('\$12',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.amber)),
      ],
    );
  }
}
