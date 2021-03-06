import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:flutter/material.dart';

class ItemCardList extends StatelessWidget {
  ItemCardList({this.color1, this.color2, this.item, this.location});
  final Color color1;
  final Color color2;

  final String item;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.yMargin(context, 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: LinearGradient(
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
            stops: [
              0.3,
              1.0
            ],
            colors: [
              color1,
              color2,
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Config.xMargin(context, 6.94), vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  location,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
