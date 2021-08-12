import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KSixMMWoolPileComponent extends StatelessWidget {
  const KSixMMWoolPileComponent({Key? key}) : super(key: key);

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
              '6 MM Wool pile',
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
                label: Text('type'),
              ),
              DataColumn(
                label: Text(' cost'),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text("1 bunch wool pile cost "),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setOneBunchWoolPileCost(val);
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
                  Text("1 bunch wool pile Feet"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setOneBunchWoolPileFeet(val);
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
                  Text("Lebar per sQuare Feet"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setLeberPerSquareFeet(val);
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
