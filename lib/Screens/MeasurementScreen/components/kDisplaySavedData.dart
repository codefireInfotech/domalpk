import 'dart:convert';
import 'package:domal/Screens/MeasurementScreen/components/measurement_input_field.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KDisplySavedDataComponent extends StatelessWidget {
  const KDisplySavedDataComponent({
    Key? key,
    required this.number,
    required this.trackNumber,
    required this.onTap,
  }) : super(key: key);

  final String number;
  final String trackNumber;
  final Function onTap;

  Future<dynamic> _getData() async {
    String data = await rootBundle.loadString('assets/dummyData.json');
    return jsonDecode(data);
// return await TrackModel.fromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          child: Stack(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: kDarkBlueColor,
                child: Center(
                  child: Text(
                    trackNumber + ' Track',
                    style: kHeaderTextStyle,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                child: Container(
                  height: 30,
                  color: kDarkBlueColor,
                  child: Center(
                    child: Text(
                      number + ")",
                      style: kHeaderTextStyle,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30,
                child: InkWell(
                  onTap: () {
                    onTap();
                  },
                  child: Container(
                    height: 30,
                    color: kDarkBlueColor,
                    child: Center(
                        child: Icon(
                      Icons.edit_rounded,
                      color: Colors.white,
                      size: 20,
                    )),
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
