import 'package:flutter/material.dart';

import 'package:messenger_app/screens/publications/widgets/cooment_and_likes.dart';
import 'package:messenger_app/utils/project_icons/project_icons.dart';

class PostWidget extends StatelessWidget {
  //Параметры макета
  final double radius = 5;
  final double sizedBoxSize =14;
  final double portraitImageHeight = 300;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:   MediaQuery.of(context).orientation == Orientation.portrait ?  MediaQuery.of(context).size.height/ 3.4 : portraitImageHeight,
            width: MediaQuery.of(context).size.width - 24,
            decoration: BoxDecoration(

            borderRadius: BorderRadius.all(Radius.circular(radius))
            ),


            child: Image.asset(ProjectIcons.postWoman, fit: BoxFit.fill,),
          ),
          SizedBox(height: sizedBoxSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              LikesAndComment(asset: ProjectIcons.heart),
              SizedBox(width: sizedBoxSize),
              LikesAndComment(asset: ProjectIcons.notification)
            ]
          )
        ],
      ),
    );
  }
}
