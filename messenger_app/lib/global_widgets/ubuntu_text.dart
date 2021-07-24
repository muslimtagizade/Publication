import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';



// ignore: must_be_immutable
class UbuntuText extends StatelessWidget {
  late String text;
  double size;
  FontWeight fontWeight;
  Color color;
  UbuntuText({required this.text , this.fontWeight = FontWeight.w400, this.color = ProjectColors.darkBlue, this.size = 10 });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
        height:  1.3
      ),
      maxLines: 3,
      textAlign: TextAlign.start,
    );
  }
}

