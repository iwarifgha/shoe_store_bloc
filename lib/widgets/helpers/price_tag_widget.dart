import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({super.key, required this.price, this.fontSize});

  final String price;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return  RichText(
        text: TextSpan(
            text: '₦ ',
            style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                  text: price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Courier',
                    fontSize: fontSize ?? 19,
                    color: Colors.black,
                  )
              )
            ]
        ));
  }
}
