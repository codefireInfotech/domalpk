import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KTotalWindowSquareFeetComponent extends StatelessWidget {
  const KTotalWindowSquareFeetComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementState>(context);
    return Container(
      child: Column(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            color: kDarkBlueColor,
            child: Center(
              child: Text(
                'Total Windows Square feet',
                style: kHeaderTextStyle,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black, width: 2)),
            child: Center(
              child: Text(
                _provider.totalSquareFeet != ''
                    ? _provider.totalSquareFeet
                    : '0',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
