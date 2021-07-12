import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:pie_detail_page/constant.dart';

class BodyDetail extends StatefulWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  int quantity = 1;
  int price = 59999;
  NumberFormat rupiah =
      NumberFormat.currency(locale: "ID", name: "IDR ", decimalDigits: 0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset("assets/pie.png"),
          Container(
            margin: EdgeInsets.only(top: 456),
            width: double.infinity,
            height: 700,
            padding: EdgeInsets.all(space),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DoubleJumbo Pie",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
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
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
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
                            "4.8",
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
                      fontSize: 12, color: greyColor, letterSpacing: 1.5),
                ),
                SizedBox(height: space),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          if (quantity > 1) {
                            quantity--;
                          }
                        });
                      },
                      minWidth: 26,
                      height: 26,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: lightPurpleColor,
                      elevation: 0,
                      padding: EdgeInsets.all(5),
                      child: FaIcon(
                        FontAwesomeIcons.minus,
                        size: 16,
                      ),
                    ),
                    Container(
                      width: 10,
                      alignment: Alignment.center,
                      child: Text(
                        quantity.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: blackColor,
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: orangeColor,
                      elevation: 0,
                      padding: EdgeInsets.all(5),
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: 16,
                        color: whiteColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      rupiah.format(quantity * price),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: orangeColor,
                  elevation: 0,
                  child: Text(
                    "Checkout Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
