import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class KQuatestionFormateComponent extends StatelessWidget {
  const KQuatestionFormateComponent({Key? key}) : super(key: key);

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
              'quatesion Formate',
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
            headingRowHeight: 20,
            columns: [
              DataColumn(
                label: Text(''),
              ),
              DataColumn(
                label: Text(''),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    'Avg. Aluminum cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Avg. Glass cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Avg. Coting cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Avg. asseris cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Avg. Leber cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Total Window avg. cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'Total Waste cost',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3, child: Center(child: Text("Profit in %"))),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: kGreenColor,
                        padding: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                        height: 40,
                        child: TextFormField(
                          onChanged: (val) {
                            _provider.setProfitInPercentage(val);
                          },
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
                            FilteringTextInputFormatter.singleLineFormatter,
                          ],
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3, child: Center(child: Text("Square feet"))),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            "100",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Center(child: Text("profit in Number"))),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            "100",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Center(child: Text("Total Window Avg. cost"))),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            "100",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
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
