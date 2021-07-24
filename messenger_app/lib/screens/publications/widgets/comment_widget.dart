import 'package:flutter/material.dart';
import 'package:messenger_app/global_widgets/ubuntu_text.dart';
import 'package:messenger_app/screens/publications/publications_screen.dart';
import 'package:messenger_app/screens/publications/widgets/avatar.dart';
import 'package:messenger_app/screens/publications/widgets/cooment_and_likes.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';

import 'package:messenger_app/utils/project_icons/project_icons.dart';

import '../../../main.dart';

class CommentWidget extends StatelessWidget {
  late String avatarAsset;
  late String name;
  late String comment;
  late String time;

  CommentWidget(
      {required this.avatarAsset,
      required this.comment,
      required this.name,
      required this.time});

  @override
  Widget build(BuildContext context) {
    //Параметры верcтки
    final double nameSizeText = 12;
    final double commentSizetext = 10;
    final double atTimeSizeText = 10;
    final double iconSize = 10;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(
            asset: avatarAsset,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UbuntuText(
                  text: name,
                  size: nameSizeText,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.darkBlue,
                ),
                Container(
                    child: UbuntuText(
                        text: comment,
                        size: commentSizetext,
                        fontWeight: FontWeight.w300,
                        color: ProjectColors.gray)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UbuntuText(
                      text: "at 15:00",
                      fontWeight: FontWeight.w300,
                      size: atTimeSizeText,
                      color: ProjectColors.lightGray,
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        LikesAndComment(
                          asset: ProjectIcons.notification,
                          iconSize: iconSize,
                          isVisiblyText: false,
                        ),
                        SizedBox(width: 10),
                        LikesAndComment(
                          asset: ProjectIcons.heart,
                          iconSize: iconSize,
                          isVisiblyText: false,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
