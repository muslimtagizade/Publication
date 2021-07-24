import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/global_widgets/ubuntu_text.dart';
import 'package:messenger_app/screens/publications/publications_screen.dart';
import 'package:messenger_app/utils/project_icons/project_icons.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';

import '../../../main.dart';

class LikesAndComment extends StatelessWidget {
  String asset;
  int count;
  double textSize;
  double iconSize;
  bool isVisiblyText;

  LikesAndComment(
      {required this.asset,
      this.count = 15,
      this.textSize = 10,
      this.iconSize = 16,
      this.isVisiblyText = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            height: iconSize,
            width: iconSize,
            color: ProjectColors.gray,
          ),
          Visibility(
            visible: isVisiblyText,
            child: Row(
              children: [
                SizedBox(width: 4),
                UbuntuText(
                  text: "${count}",
                  color: ProjectColors.gray,
                  fontWeight: FontWeight.w500,
                  size: textSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
