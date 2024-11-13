import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textcolor;
  final VoidCallback? function;
  const MainButton(
      {super.key,
      required this.text,
      required this.bgcolor,
      required this.textcolor,
      this.function});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return GestureDetector(
      onTap: function,
      child: Container(
        height: height * 0.08,
        width: width * 0.7,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(22.0)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: textcolor),
          ),
        ),
      ),
    );
  }
}



// Color.fromRGBO(70, 43, 156, 1)