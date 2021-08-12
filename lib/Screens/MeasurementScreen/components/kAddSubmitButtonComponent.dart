import 'dart:ffi';

import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';

class KAddSubmitButtonComponent extends StatelessWidget {
  const KAddSubmitButtonComponent(
      {Key? key, required this.onAddTap, required this.onSubmitTap})
      : super(key: key);
  final Function onAddTap;
  final Function onSubmitTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => onAddTap(),
                  child: Container(
                    color: kDarkBlueColor,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                        child: Text(
                      "ADD",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => onSubmitTap(),
                  child: Container(
                    color: Colors.yellow,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                        child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: kDarkBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
