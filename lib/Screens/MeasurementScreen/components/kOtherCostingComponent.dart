import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KOtherCostingComponent extends StatelessWidget {
  const KOtherCostingComponent({Key? key}) : super(key: key);

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
              'Other costing',
              style: kHeaderTextStyle,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('section type'),
              ),
              DataColumn(
                label: Text('1 feet cost'),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text("Rubber cost(1KG)"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setRubberCost1KG1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("Rubber Feet(1KG)"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setRubberFeet1KG1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("LOCK COST(1 PIS)"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setLockCost1PIS1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("BERING COST(1 PIS)"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setBearingCost1PIS1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("CORNER CLEAT"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setCornerCleat1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("TOP U GUIDE"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setTopUGuide1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("SHUTTER WING CONNECTOR"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    width: 80,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setShutterWingConnector1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("INTERLOCK CAP"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setInterLockCap1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("LOCK GUIDE"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setLockGuide1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ])
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
