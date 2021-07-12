import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_detail_page/constant.dart';

class AppBarDetail extends StatelessWidget {
  const AppBarDetail({
    Key? key,
    required this.bgColor,
    required this.textColor,
    required this.animationController,
    required this.favorite,
    required this.favoriteTap,
  }) : super(key: key);

  final Animation bgColor, textColor;
  final AnimationController animationController;
  final bool favorite;
  final GestureTapCallback favoriteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return AppBar(
            backgroundColor: bgColor.value,
            elevation: 0,
            title: Text(
              "Pie Detail",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor.value,
              ),
            ),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: space),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Icon(
                  FontAwesomeIcons.angleLeft,
                  color: textColor.value,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: space),
                child: InkWell(
                  onTap: favoriteTap,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Icon(
                    favorite
                        ? FontAwesomeIcons.solidHeart
                        : FontAwesomeIcons.heart,
                    color: favorite ? orangeColor : textColor.value,
                    size: 20,
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
