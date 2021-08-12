import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';

class KSaveEditButtonComponent extends StatelessWidget {
  const KSaveEditButtonComponent(
      {Key? key, required this.onSave, required this.onEdit})
      : super(key: key);
  final Function onSave;
  final Function onEdit;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                onSave();
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                color: Colors.green,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                onEdit();
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: kDarkBlueColor,
                child: Center(
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
