import 'package:flutter/material.dart';
import 'package:messenger_app/global_widgets/ubuntu_text.dart';
import 'package:messenger_app/screens/publications/widgets/avatar.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';

class UserWidget extends StatelessWidget {
  late String assetAvatar;
  late String userName;
  late String authTime;
  UserWidget({required this.assetAvatar, required this.authTime, required this.userName});
  //Параметры верски
  final double userTextSize = 12;
  final double authTextSize = 10;
  final double sizedBoxWidth = 8;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(asset: assetAvatar),
          SizedBox(width: sizedBoxWidth,),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UbuntuText(text: userName, size:userTextSize , fontWeight: FontWeight.w500, color: ProjectColors.darkBlue,),
              UbuntuText(text: authTime,  size:  authTextSize, fontWeight: FontWeight.w300, color: ProjectColors.gray)

            ],
          )
        ],
      ),
    );
  }
}
