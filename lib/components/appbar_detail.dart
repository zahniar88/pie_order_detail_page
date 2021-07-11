import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_detail_page/constant.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
    required this.animationController,
    required this.bgColor,
    required this.textColor,
    required this.favotire,
    required this.onTap,
    required this.elevation,
  }) : super(key: key);

  final AnimationController animationController;
  final Animation bgColor, textColor, elevation;
  final bool favotire;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return AppBar(
            backgroundColor: bgColor.value,
            elevation: elevation.value,
            centerTitle: true,
            title: Text(
              "Pie Detail",
              style: TextStyle(
                color: textColor.value,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: space),
              child: Icon(
                FontAwesomeIcons.angleLeft,
                color: textColor.value,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: space),
                child: InkWell(
                  onTap: onTap,
                  child: favotire
                      ? Icon(
                          FontAwesomeIcons.solidHeart,
                          color: orangeColor,
                        )
                      : Icon(
                          FontAwesomeIcons.heart,
                          color: textColor.value,
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
