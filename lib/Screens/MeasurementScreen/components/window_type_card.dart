import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WindowTypeCard extends StatelessWidget {
  const WindowTypeCard({
    Key? key,
    required this.title,
    required this.value,
    required this.selectedValue,
  }) : super(key: key);
  final String title;
  final String value;
  final String selectedValue;
  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementState>(context);

    return InkWell(
      onTap: () {
        _provider.setSelectedWindowType(value);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 20),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                color: selectedValue == value ? kGreenColor : kDarkBlueColor,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(fontSize: 18),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
