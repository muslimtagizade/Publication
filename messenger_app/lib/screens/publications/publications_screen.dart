import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/global_widgets/app_bar.dart';
import 'package:messenger_app/global_widgets/ubuntu_text.dart';
import 'package:messenger_app/screens/publications/widgets/comment_widget.dart';
import 'package:messenger_app/screens/publications/widgets/post_widget.dart';
import 'package:messenger_app/screens/publications/widgets/user_widget.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';
import 'package:messenger_app/utils/project_icons/project_icons.dart';

import '../../main.dart';

class PublicationsScreen extends StatefulWidget {
  @override
  _PublicationsScreenState createState() => _PublicationsScreenState();
}

class _PublicationsScreenState extends State<PublicationsScreen> {
  int currentIndex = 1;
  TextEditingController controller = TextEditingController();
  FocusNode focus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Параметры верски
    final double padding = 12;
    final double lastSize = 500;
    return GestureDetector(
      onTap: () {
        focus.unfocus();
      },
      child: Scaffold(
        appBar: GlobalAppBar(focus: focus, controller: controller),
        backgroundColor: ProjectColors.white,
        body: Container(
          padding: EdgeInsets.only(left: padding, right: padding, top: padding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                UserWidget(
                    assetAvatar: ProjectIcons.avatar_woman,
                    authTime: "5 minutes ago",
                    userName: "Julia Pro"),
                SizedBox(
                  height: 8,
                ),
                PostWidget(),
                SizedBox(
                  height: 16,
                ),
                UbuntuText(
                  text: "1 Comment",
                  fontWeight: FontWeight.w400,
                  size: 10,
                  color: ProjectColors.lightGray,
                ),
                SizedBox(
                  height: 12,
                ),
                CommentWidget(
                    avatarAsset: ProjectIcons.avatarMan,
                    comment:
                        "Could you tell me where such a cool T-shirt is sold? Looks super stylish",
                    name: "Vlad Boom",
                    time: "at 15:00"),
                SizedBox(height: lastSize,)
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 62,
          child: BottomNavigationBar(
            backgroundColor: ProjectColors.backgroungGrey,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ProjectIcons.homeOutline,
                    color: getItemColor(0),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ProjectIcons.smilingFaceOutline,
                      color: getItemColor(1)),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ProjectIcons.personOutline,
                      color: getItemColor(2)),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ProjectIcons.settingsOutline,
                      color: getItemColor(3)),
                  label: ""),
            ],
          ),
        ),
      ),
    );
  }

  Color getItemColor(int index) =>
      index == currentIndex ? ProjectColors.darkBlue : ProjectColors.gray;
}
