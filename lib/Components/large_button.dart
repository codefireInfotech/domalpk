import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    Key? key,
    required this.lable,
    this.backgrooundColor = kGreenColor,
  }) : super(key: key);
  final String lable;
  final Color backgrooundColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/HomeScreen');
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            )
          ],
          color: backgrooundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        height: 50,
        child: Center(
          child: Text(
            lable,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
