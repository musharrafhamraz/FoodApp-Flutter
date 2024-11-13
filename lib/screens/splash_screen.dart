import 'package:flutter/material.dart';
import 'package:foodappclone/screens/main_screen.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(70, 43, 156, 1),
          Color.fromRGBO(100, 74, 181, 1),
        ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/Picture3.png'),
              height: height * 0.5,
              width: width * 0.7,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigText(
                  text: 'Enjoy',
                ),
                BigText(text: 'Your Food'),
              ],
            ),
            const Gap(40),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen())),
              child: Container(
                height: height * 0.08,
                width: width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0)),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(70, 43, 156, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BigText extends StatelessWidget {
  final String text;
  const BigText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 42,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
  }
}
