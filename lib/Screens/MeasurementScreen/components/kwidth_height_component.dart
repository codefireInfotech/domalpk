import 'package:domal/Screens/MeasurementScreen/components/measurement_input_field.dart';
import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:domal/const/functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KWidthHeightComponent extends StatelessWidget {
  KWidthHeightComponent({Key? key}) : super(key: key);
  MeasurementFunctions _functions = MeasurementFunctions();
  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementState>(context);
    return Column(
      children: [
        Container(
          height: 30,
          color: kDarkBlueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Width",
                style: kHeaderTextStyle,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Height",
                style: kHeaderTextStyle,
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: MInputField(
                  initialvalue: _provider.width,
                  onChanged: (val) {
                    if (val == null) {
                      val = '';
                    }
                    _provider.setWidth(val);
                    if (_provider.width != '') {
                      _provider.setTotalSquareFeet(
                          _functions.calculateSquareFeet(
                              width: _provider.width,
                              height: _provider.height));
                    }
                  },
                ),
              ),
              Expanded(
                child: MInputField(
                  initialvalue: _provider.height,
                  onChanged: (val) {
                    if (val == null) {
                      val = '';
                    }
                    _provider.setHeight(val);
                    _provider.setTotalSquareFeet(_functions.calculateSquareFeet(
                        width: _provider.width, height: _provider.height));

                    // _functions.calculateSquareFeet(
                    //     width: _provider.width, height: _provider.height);
                  },
                ),
              ),
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
