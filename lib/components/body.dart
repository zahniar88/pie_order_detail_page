import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_detail_page/constant.dart';

class BodyDetail extends StatefulWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {

  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset("assets/pie.png"),
          Container(
            margin: EdgeInsets.only(top: 456),
            width: double.infinity,
            padding: EdgeInsets.all(space),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            constraints: BoxConstraints(
              minHeight: 700,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DoubleJumbo Pie",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "IDR 59.999",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: orangeColor,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 13,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: lightPurpleColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.dollarSign,
                            size: 12,
                            color: purpleColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Free Delivery",
                            style: TextStyle(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidClock,
                            size: 12,
                            color: purpleColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "20 - 30",
                            style: TextStyle(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            size: 12,
                            color: purpleColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Cream Sweet Pie is a pie made from real honey and combined with cream on top of the pie",
                  style: TextStyle(
                    fontSize: 12,
                    color: greyColor,
                    letterSpacing: 1.4,
                  ),
                ),
                SizedBox(height: space),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          if ( quantity > 0 ) {
                            quantity--;
                          }
                        });
                      },
                      minWidth: 26,
                      height: 26,
                      padding: EdgeInsets.all(5),
                      color: lightPurpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 0,
                      child: FaIcon(
                        FontAwesomeIcons.minus,
                        size: 16,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 15,
                      child: Text(
                        quantity.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      minWidth: 26,
                      height: 26,
                      padding: EdgeInsets.all(5),
                      color: orangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 0,
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: 16,
                        color: whiteColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "IDR 119.998",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: orangeColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: space),
                MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: 55,
                  elevation: 0,
                  color: orangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Checkout Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
