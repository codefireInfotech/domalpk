import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KAvailableTrackFeetSizeKGComponent extends StatelessWidget {
  const KAvailableTrackFeetSizeKGComponent({Key? key}) : super(key: key);

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
              'AVAILABLE TRACK FEET SIZE',
              style: kHeaderTextStyle,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Table(
              border: TableBorder.all(
                  color: Colors.black54, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Window type"),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Feet"),
                  )),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("KG"),
                  )),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_provider.selectedWindowtype + " TRACK"),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        if (_provider.selectedWindowtype == '2') {
                          _provider.setTwoTrackFeet(val);
                        } else if (_provider.selectedWindowtype == '3') {
                          _provider.setThreeTrackFeet(val);
                        } else if (_provider.selectedWindowtype == '4') {
                          _provider.setFourTrackFeet(val);
                        }
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        if (_provider.selectedWindowtype == '2') {
                          _provider.setTwoTrackKG(val);
                        } else if (_provider.selectedWindowtype == '3') {
                          _provider.setThreeTrackKG(val);
                        } else if (_provider.selectedWindowtype == '4') {
                          _provider.setFourTrackKG(val);
                        }
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("HANDLE"),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setHandleFeet(val);
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setHandleKG(val);
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("INNERLOCK"),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setInterLockFeet(val);
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setInterLockKG(val);
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
                        errorStyle:
                            TextStyle(height: 0, color: Colors.transparent),
                        contentPadding: EdgeInsets.only(bottom: 10),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
