import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/global_widgets/ubuntu_text.dart';
import 'package:messenger_app/utils/project_colors/project_colors.dart';
import 'package:messenger_app/utils/project_icons/project_icons.dart';

class GlobalAppBar extends StatefulWidget with PreferredSizeWidget {
 late bool leadingMode;
 late bool isNoSearch;
  FocusNode focus;
  TextEditingController controller;

  GlobalAppBar(
      {this.leadingMode = true,
      this.isNoSearch = true,
      required this.focus,
      required this.controller});

  @override
  _GlobalAppBarState createState() => _GlobalAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  //Параметры верстки
  final double iconSize = 24;
  final double paddings = 24;
  final double radius = 3;
  final double sizeBoxWidth = 18;
  final double searchFormWidth = 250;
  final double textSize = 18;

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.loose,
        alignment: Alignment.bottomCenter,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: ProjectColors.white,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  widget.leadingMode
                      ? Center(
                          child: Container(
                            height: iconSize,
                            width: iconSize,
                            child: SvgPicture.asset(
                              ProjectIcons.leading,
                              fit: BoxFit.cover,
                              color: ProjectColors.darkBlue,
                            ),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: sizeBoxWidth,
                  ),

                  widget.isNoSearch ? UbuntuText(text: "Publication", size: textSize, fontWeight: FontWeight.w700,) :
                  Container(
                      width: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? searchFormWidth
                          : searchFormWidth * 1.8,
                      child: CupertinoSearchTextField(focusNode: widget.focus, controller: widget.controller,))
                ]),
                Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            widget.isNoSearch = !widget.isNoSearch;
                          });
                        },
                        child: Container(
                          height: iconSize,
                          width: iconSize,
                          child: SvgPicture.asset(
                            ProjectIcons.search,
                            fit: BoxFit.cover,
                            color: ProjectColors.darkBlue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeBoxWidth,
                      ),
                      Container(
                        height: iconSize,
                        width: iconSize,
                        child: SvgPicture.asset(
                          ProjectIcons.bell,
                          fit: BoxFit.cover,
                          color: ProjectColors.darkBlue,
                        ),
                      )
                    ],
                  ),

              ],
            ),
          ),
          Container(
            height: 2,
            width: MediaQuery.of(context).size.width - paddings,
            decoration: BoxDecoration(
                color: ProjectColors.backgroungGrey,
                borderRadius: BorderRadius.all(Radius.circular(radius))),
          ),
        ]);
  }
}
