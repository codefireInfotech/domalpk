import 'package:domal/const/Const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CInputField extends StatelessWidget {
  const CInputField({
    Key? key,
    required this.lable,
    required this.placeholder,
    required this.icon,
    this.lableColor = Colors.white, required this.controller,
  }) : super(key: key);
  final String lable;
  final String placeholder;
  final IconData icon;
  final Color lableColor;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              lable,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600, color: lableColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 65),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kGreenColor, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: TextFormField(
                  controller: controller,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: placeholder,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    icon,
                    color: kGreenColor,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
