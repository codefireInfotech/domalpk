import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KSelectCotingTypeComponent extends StatelessWidget {
  const KSelectCotingTypeComponent({Key? key}) : super(key: key);

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
              'select coting type',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
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
                  Text(_provider.selectedWindowtype + " Track"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        if (_provider.selectedWindowtype == '2') {
                          _provider.setTwoTrck1FeetCost(val);
                        } else if (_provider.selectedWindowtype == '3') {
                          _provider.setThreeTrck1FeetCost(val);
                        } else if (_provider.selectedWindowtype == '4') {
                          _provider.setFourTrck1FeetCost(val);
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
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ]),
              DataRow(cells: [
                DataCell(
                  Text("HANDLE"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setHandle1FeetCost(val);
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
                  Text("EINTER LOCK"),
                ),
                DataCell(
                  Container(
                    height: 40,
                    child: TextFormField(
                      onChanged: (val) {
                        _provider.setInterLock1FeetCost(val);
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
