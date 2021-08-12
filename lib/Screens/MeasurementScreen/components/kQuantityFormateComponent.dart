import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';

class KQuantityFormateComponent extends StatelessWidget {
  const KQuantityFormateComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: double.infinity,
          color: kDarkBlueColor,
          child: Center(
            child: Text(
              'quantity Formate',
              style: kHeaderTextStyle,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Section Name'),
              ),
              DataColumn(
                label: Text(
                  'Teck ft',
                ),
                numeric: true,
              ),
              DataColumn(
                label: Text('QYT'),
                numeric: true,
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    '2 TRACK',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '3 TRACK',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '4 TRACK',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'HANDAL',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    'EINTERLOCK',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(width: 2)),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          child: Center(
            child: Text('Glass'),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('No.'),
                numeric: true,
              ),
              DataColumn(
                label: Text(
                  'Width',
                ),
                numeric: true,
              ),
              DataColumn(
                label: Text('Height'),
                numeric: true,
              ),
              DataColumn(
                label: Text('QYT'),
                numeric: true,
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    '1',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Text(
                    '93',
                    textAlign: TextAlign.center,
                  ),
                ),
                DataCell(
                  Container(
                    child: Text(
                      '93',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(width: 2)),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          child: Center(
            child: Text('Accessory List'),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: DataTable(
            columnSpacing: 0,
            headingRowHeight: 0,
            columns: [
              DataColumn(
                label: Text(''),
              ),
              DataColumn(
                label: Text(
                  '',
                ),
                numeric: true,
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    'total rubber ft',
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
                    'lock pis',
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
                    'total bearings',
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
                    'Corner Cleat',
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
                    'Top U Guide',
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
                    'Shutter Wing connector',
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
                    'Inter lock cap',
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
                    'Lock Guide',
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
                    'Total wallfill ft',
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
        Container(
          decoration: BoxDecoration(border: Border.all(width: 2)),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          child: Center(
            child: Text('Screw'),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: DataTable(
            columnSpacing: 0,
            headingRowHeight: 0,
            columns: [
              DataColumn(
                label: Text(''),
              ),
              DataColumn(
                label: Text(
                  '',
                ),
                numeric: true,
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text(
                    '50/8',
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
                    'wall plug',
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
      ],
    );
  }
}
