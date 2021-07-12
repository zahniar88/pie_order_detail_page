import 'package:flutter/material.dart';
import 'package:pie_detail_page/components/appbar_detail.dart';
import 'package:pie_detail_page/components/body.dart';
import 'package:pie_detail_page/constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation bgColor, textColor;
  bool favorite = false;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    bgColor = ColorTween(begin: Colors.transparent, end: whiteColor)
        .animate(animationController);
    textColor = ColorTween(begin: whiteColor, end: secondaryColor)
        .animate(animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollNotification,
        child: Stack(
          children: [
            BodyDetail(),
            AppBarDetail(
              animationController: animationController,
              bgColor: bgColor,
              textColor: textColor,
              favorite: favorite,
              favoriteTap: () {
                setState(() {
                  favorite = favorite ? false : true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  bool scrollNotification(ScrollNotification notification) {
    bool scroll = false;
    if (notification.metrics.axis == Axis.vertical) {
      animationController.animateTo(notification.metrics.pixels / 20);
      scroll = true;
    }

    return scroll;
  }
}
