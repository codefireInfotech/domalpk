import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KGlassShutterPlusMinusComponent extends StatelessWidget {
  const KGlassShutterPlusMinusComponent({Key? key}) : super(key: key);

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
              'glass shutter (+)(-)',
              style: kHeaderTextStyle,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _provider.setGlassWidthPlusMinus('+');
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  color: _provider.glassWidthPlusMinus == '+'
                      ? kGreenColor
                      : kDarkBlueColor,
                  width: 100,
                  height: 40,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  child: Center(
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setWindowWidthNumber(val);
                      },
                      validator: (val) {
                        if (val == null || val.length == 0) {
                          return 'Please enter value';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Glass Width',
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: kDarkBlueColor, width: 3),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        // contentPadding: EdgeInsets.zero,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkBlueColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _provider.setGlassWidthPlusMinus('-');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 100,
                  height: 40,
                  color: _provider.glassWidthPlusMinus == '-'
                      ? kGreenColor
                      : kDarkBlueColor,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  print('object');
                  _provider.setGlassHeightPlusMinus('+');
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  color: _provider.glassHeightPlusMinus == '+'
                      ? kGreenColor
                      : kDarkBlueColor,
                  width: 100,
                  height: 40,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  child: Center(
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setWindowHeightNumber(val);
                      },
                      validator: (val) {
                        if (val == null || val.length == 0) {
                          return 'Please enter value';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Glass Height',
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: kDarkBlueColor, width: 3),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        // contentPadding: EdgeInsets.zero,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkBlueColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _provider.setGlassHeightPlusMinus('-');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 100,
                  height: 40,
                  color: _provider.glassHeightPlusMinus == '-'
                      ? kGreenColor
                      : kDarkBlueColor,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
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
