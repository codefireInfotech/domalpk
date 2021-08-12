import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KAluminumWastageCostComponent extends StatelessWidget {
  const KAluminumWastageCostComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementState>(context);
    return Column(
      children: [
        Container(
          height: 30,
          width: double.infinity,
          color: kDarkBlueColor,
          child: Center(
            child: Text(
              'Aluminium wastage cost/KG',
              style: kHeaderTextStyle,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Container(
          height: 35,
          margin: EdgeInsets.only(top: 10, bottom: 30, left: 130, right: 130),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '₹',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: TextFormField(
                    onChanged: (val) {
                      _provider.setAluminiumWastage(val);
                    },
                    validator: (val) {
                      if (val == null || val.length == 0) {
                        return 'Please enter value';
                      }
                      return null;
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    maxLines: 1,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkBlueColor, width: 3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 3),
                      ),
                      errorStyle:
                          TextStyle(height: 0, color: Colors.transparent),
                      contentPadding: EdgeInsets.zero,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kDarkBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
