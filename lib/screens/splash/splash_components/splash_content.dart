import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text, image;

  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Image.asset(
        image,
        //height: MediaQuery.of(context).size.height*0.6,
        //width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
