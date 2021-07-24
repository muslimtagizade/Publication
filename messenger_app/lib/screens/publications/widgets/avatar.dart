import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/main.dart';
import 'package:messenger_app/screens/publications/publications_screen.dart';

class Avatar extends StatelessWidget {
  //Параметры верстки
  double size = 40;
  double radius = 100;
  late String asset; 
  Avatar({required this.asset});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius))
      ),
      child: Image.asset(asset, fit: BoxFit.contain,),
    );
  }
}
