import 'package:domal/Models/WindowTypeModel.dart';
import 'package:domal/Screens/MeasurementScreen/components/window_type_card.dart';
import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KSelectWindowTypeComponent extends StatelessWidget {
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
              'Select Window type',
              style: kHeaderTextStyle,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: List.generate(3, (index) {
              return WindowTypeCard(
                title: _provider.windowtypeList[index].title,
                value: _provider.windowtypeList[index].value,
                selectedValue: _provider.selectedWindowtype,
              );
            }),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
