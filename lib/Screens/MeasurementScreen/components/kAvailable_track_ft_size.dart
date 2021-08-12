import 'package:domal/Screens/MeasurementScreen/components/kAddDialogComponent.dart';
import 'package:domal/Screens/MeasurementScreen/components/kEditDialogComponent.dart';
import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KAvailableTrackFeetSizeComponent extends StatelessWidget {
  const KAvailableTrackFeetSizeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementState>(context);
    _getTrack(String s) {
      switch (s) {
        case '2':
          return _provider.twoTrackFeetList;
        case '3':
          return _provider.threeTrackFeetList;
        case '4':
          return _provider.fourTrackFeetList;
        default:
          return _provider.twoTrackFeetList;
      }
    }

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
                  color: Colors.black, style: BorderStyle.solid, width: 2),
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
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_provider.selectedWindowtype + " TRACK"),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            _getTrack(_provider.selectedWindowtype).length,
                            (index) {
                          return Expanded(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return KEditDialogComponent(
                                        onDelete: () {
                                          if (_provider.selectedWindowtype ==
                                              '2') {
                                            _provider
                                                .removeFromTwoTrackFeetlist(
                                                    index);
                                          } else if (_provider
                                                  .selectedWindowtype ==
                                              '3') {
                                            _provider
                                                .removeFromThreeTrackFeetlist(
                                                    index);
                                          } else if (_provider
                                                  .selectedWindowtype ==
                                              '4') {
                                            _provider
                                                .removeFromFourTrackFeetlist(
                                                    index);
                                          }
                                        },
                                        initialvalue: _getTrack(_provider
                                            .selectedWindowtype)[index],
                                        onPress: (val) {
                                          print(val);
                                          if (_provider.selectedWindowtype ==
                                              '2') {
                                            List<String> ls =
                                                _provider.twoTrackFeetList;
                                            ls[index] = val;
                                            _provider
                                                .replaceTwoTrackFeetlist(ls);
                                          } else if (_provider
                                                  .selectedWindowtype ==
                                              '3') {
                                            List<String> ls3 =
                                                _provider.threeTrackFeetList;
                                            ls3[index] = val;
                                            _provider
                                                .replaceThreeTrackFeetList(ls3);
                                          } else if (_provider
                                                  .selectedWindowtype ==
                                              '4') {
                                            List<String> ls4 =
                                                _provider.fourTrackFeetList;
                                            ls4[index] = val;
                                            _provider
                                                .replaceFourTrackFeetList(ls4);
                                          }
                                        },
                                      );
                                    }).then((value) {
                                  _provider.setTextFieldInputText('');
                                });
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    _getTrack(
                                        _provider.selectedWindowtype)[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                        _getTrack(_provider.selectedWindowtype).length < 3
                            ? InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return KAddDialogComponent(
                                          onPress: (val) {
                                            print(val);
                                            if (_provider.selectedWindowtype ==
                                                '2') {
                                              _provider
                                                  .setTwoTrackFeetList(val);
                                            } else if (_provider
                                                    .selectedWindowtype ==
                                                '3') {
                                              _provider
                                                  .setThreeTrackFeetList(val);
                                            } else if (_provider
                                                    .selectedWindowtype ==
                                                '4') {
                                              _provider
                                                  .setFourTrackFeetList(val);
                                            }
                                          },
                                        );
                                      }).then((value) {
                                    _provider.setTextFieldInputText('');
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(Icons.add_circle_outline),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  )
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("HANDLE"),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(_provider.handleFeetList.length,
                            (index) {
                          return Expanded(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return KEditDialogComponent(
                                        onDelete: () {
                                          _provider
                                              .removeFromHandleFeetList(index);
                                        },
                                        initialvalue:
                                            _provider.handleFeetList[index],
                                        onPress: (val) {
                                          print(val);
                                          List<String> ls =
                                              _provider.handleFeetList;
                                          ls[index] = val;
                                          _provider.replaceHandleFeetList(ls);
                                        },
                                      );
                                    }).then((value) {
                                  _provider.setTextFieldInputText('');
                                });
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    _provider.handleFeetList[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                        _provider.handleFeetList.length < 3
                            ? InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return KAddDialogComponent(
                                          onPress: (val) {
                                            print(val);

                                            _provider.setHandleFeetList(val);
                                          },
                                        );
                                      }).then((value) {
                                    _provider.setTextFieldInputText('');
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(Icons.add_circle_outline),
                                ))
                            : Container(),
                      ],
                    ),
                  )
                ]),
                TableRow(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("INNERLOCK"),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(_provider.interLockFeetList.length,
                            (index) {
                          return Expanded(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return KEditDialogComponent(
                                        onDelete: () {
                                          _provider.removeFromInterLockFeetList(
                                              index);
                                        },
                                        initialvalue:
                                            _provider.interLockFeetList[index],
                                        onPress: (val) {
                                          print(val);
                                          List<String> ls =
                                              _provider.interLockFeetList;
                                          ls[index] = val;
                                          _provider
                                              .replaceInterLockFeetList(ls);
                                        },
                                      );
                                    }).then((value) {
                                  _provider.setTextFieldInputText('');
                                });
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    _provider.interLockFeetList[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                        _provider.interLockFeetList.length < 3
                            ? InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return KAddDialogComponent(
                                          onPress: (val) {
                                            print(val);
                                            _provider.setInterLockFeetList(val);
                                          },
                                        );
                                      }).then((value) {
                                    _provider.setTextFieldInputText('');
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(Icons.add_circle_outline),
                                ))
                            : Container(),
                      ],
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
