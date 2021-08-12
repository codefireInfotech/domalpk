import 'package:domal/Models/WindowTypeModel.dart';
import 'package:flutter/material.dart';

class MeasurementState with ChangeNotifier {
  //width height
  String width = '';
  String height = '';

  //total window square feet
  String totalSquareFeet = '';

  List<WindowTypeModel> windowtypeList = [
    WindowTypeModel(title: '2 TRACK 2 GLASS PANAL', value: '2'),
    WindowTypeModel(title: '3 TRACK 3 GLASS PANAL', value: '3'),
    WindowTypeModel(title: '4 TRACK 4 GLASS PANAL', value: '4'),
  ];

  //select window type
  String selectedWindowtype = '2';

  //window width title
  String windowWidthPanalTitle = "2 TRACK 2 GLASS PANAL";

  //window width (+)(-)
  String windowWidthNumber = '';
  String windowWidthPlusMinus = '+';

  //window height (+)(-)
  String windowHeightNumber = '';
  String windowHeightPlusMinus = '+';

  //available track feet size
  String textFieldInputText = '';
  List<String> twoTrackFeetList = ['2'];
  List<String> threeTrackFeetList = ['3'];
  List<String> fourTrackFeetList = ['4'];
  List<String> handleFeetList = ['10'];
  List<String> interLockFeetList = ['10'];

  //available track feet size
  String twoTrackFeet = '';
  String twoTrackKG = '';
  String threeTrackFeet = '';
  String threeTrackKG = '';
  String fourTrackFeet = '';
  String fourTrackKG = '';
  String handleFeet = '';
  String handleKG = '';
  String interLockFeet = '';
  String interLockKG = '';

  //aluminum cost/kg
  String aluminiumCostPerKG = '';

  //aluminum wastage cost/kg
  String aluminiumWastageCostPerKG = '';

  //select coating type
  String twoTrack1feetCost = '';
  String threeTrack1feetCost = '';
  String fourTrack1feetCost = '';
  String handle1feetCost = '';
  String interLock1feetCost = '';

  //glass shutter(+)(-)
  String glassWidthNumber = '';
  String glassWidthPlusMinus = '+';
  String glassHeightNumber = '';
  String glassHeightPlusMinus = '+';

  //aluminum cost/kg
  String glassCostPerSquareFeet = '';

  //Other costing
  String rubberCost1KG1FeetCost = '';
  String rubberFeet1KG1FeetCost = '';
  String lockCost1PIS1FeetCost = '';
  String bearingCost1PIS1FeetCost = '';
  String cornerCleat1FeetCost = '';
  String topUGuide1FeetCost = '';
  String shutterWingConnector1FeetCost = '';
  String interLockCap1FeetCost = '';
  String lockGuide1FeetCost = '';

  // 1 pis screw cost
  String screw50by8Cost = '';
  String wallPlugCost = '';

  //6MM Wool Pile
  String oneBunchWoolPileCost = '';
  String oneBunchWoolPileFeet = '';
  String leberPerSquareFeet = '';

  //quatestion Formate
  String profitInPercentage = '';

//calculation variables

  String variable9 = '';
  String variable25 = '4'; // 2Track
  String variable27 = '8'; //handle
  String variable29 = '4';

  //setters.........................

  //width height

  void setWidth(String w) {
    this.width = w;
    notifyListeners();
  }

  void setHeight(String h) {
    this.height = h;
    notifyListeners();
  }

  //set square feet
  void setTotalSquareFeet(String s) {
    this.totalSquareFeet = s;
    notifyListeners();
  }

  //set selected window type
  void setSelectedWindowType(String s) {
    this.selectedWindowtype = s;
    this.windowtypeList.forEach((element) {
      if (element.value == s) {
        this.windowWidthPanalTitle = element.title;
      }
    });
    notifyListeners();
  }

  //set window width plus minus
  void setWindowWidthPlusMinus(String s) {
    this.windowWidthPlusMinus = s;
    notifyListeners();
  }

  //set window height plus minus
  void setWindowHeightPlusMinus(String s) {
    this.windowHeightPlusMinus = s;
    notifyListeners();
  }

  //set windowWidthNumber
  void setWindowWidthNumber(String s) {
    this.windowWidthNumber = s;
    notifyListeners();
  }

  //set windowHeightNumber
  void setWindowHeightNumber(String s) {
    this.windowHeightNumber = s;
    notifyListeners();
  }

  //set TextFieldInputText

  void setTextFieldInputText(String s) {
    this.textFieldInputText = s;
    notifyListeners();
  }

  //set twoTrackFeetList
  void setTwoTrackFeetList(String s) {
    this.twoTrackFeetList.add(s);
    notifyListeners();
  }

  void replaceTwoTrackFeetlist(List<String> ls) {
    this.twoTrackFeetList = ls;
    notifyListeners();
  }

  void removeFromTwoTrackFeetlist(int index) {
    this.twoTrackFeetList.removeAt(index);
    notifyListeners();
  }

  //set threeTrackFeetList
  void setThreeTrackFeetList(String s) {
    this.threeTrackFeetList.add(s);
    notifyListeners();
  }

  void replaceThreeTrackFeetList(List<String> ls) {
    this.threeTrackFeetList = ls;
    notifyListeners();
  }

  void removeFromThreeTrackFeetlist(int index) {
    this.threeTrackFeetList.removeAt(index);
    notifyListeners();
  }

  //set fourTrackFeetList
  void setFourTrackFeetList(String s) {
    this.fourTrackFeetList.add(s);
    notifyListeners();
  }

  void replaceFourTrackFeetList(List<String> ls) {
    this.fourTrackFeetList = ls;
    notifyListeners();
  }

  void removeFromFourTrackFeetlist(int index) {
    this.fourTrackFeetList.removeAt(index);
    notifyListeners();
  }

  //set handleFeetList
  void setHandleFeetList(String s) {
    this.handleFeetList.add(s);
    notifyListeners();
  }

  void replaceHandleFeetList(List<String> ls) {
    this.handleFeetList = ls;
    notifyListeners();
  }

  void removeFromHandleFeetList(int index) {
    this.handleFeetList.removeAt(index);
    notifyListeners();
  }

  //set interLockFeetList
  void setInterLockFeetList(String s) {
    this.interLockFeetList.add(s);
    notifyListeners();
  }

  void replaceInterLockFeetList(List<String> ls) {
    this.interLockFeetList = ls;
    notifyListeners();
  }

  void removeFromInterLockFeetList(int index) {
    this.interLockFeetList.removeAt(index);
    notifyListeners();
  }

  //available track feet size

  // set twotrackfeet KG
  void setTwoTrackFeet(String s) {
    this.twoTrackFeet = s;
    notifyListeners();
  }

  void setTwoTrackKG(String s) {
    this.twoTrackKG = s;
    notifyListeners();
  }

  // set threetrackfeet KG
  void setThreeTrackFeet(String s) {
    this.threeTrackFeet = s;
    notifyListeners();
  }

  void setThreeTrackKG(String s) {
    this.threeTrackKG = s;
    notifyListeners();
  }

  // set fourtrackfeet KG
  void setFourTrackFeet(String s) {
    this.fourTrackFeet = s;
    notifyListeners();
  }

  void setFourTrackKG(String s) {
    this.fourTrackKG = s;
    notifyListeners();
  }

  // set handleFeet KG
  void setHandleFeet(String s) {
    this.handleFeet = s;
    notifyListeners();
  }

  void setHandleKG(String s) {
    this.handleKG = s;
    notifyListeners();
  }

  // set interLockFeet KG
  void setInterLockFeet(String s) {
    this.interLockFeet = s;
    notifyListeners();
  }

  void setInterLockKG(String s) {
    this.interLockKG = s;
    notifyListeners();
  }

  //set Aluminum Cost
  void setAluminiumCost(String s) {
    this.aluminiumCostPerKG = s;
    notifyListeners();
  }

  //set Aluminum Wastage Cost
  void setAluminiumWastage(String s) {
    this.aluminiumWastageCostPerKG = s;
    notifyListeners();
  }

//select coting type

  void setTwoTrck1FeetCost(String s) {
    this.twoTrack1feetCost = s;
    notifyListeners();
  }

  void setThreeTrck1FeetCost(String s) {
    this.threeTrack1feetCost = s;
    notifyListeners();
  }

  void setFourTrck1FeetCost(String s) {
    this.fourTrack1feetCost = s;
    notifyListeners();
  }

  void setHandle1FeetCost(String s) {
    this.handle1feetCost = s;
    notifyListeners();
  }

  void setInterLock1FeetCost(String s) {
    this.interLock1feetCost = s;
    notifyListeners();
  }

  //select glass shutter (+)(-)
  void setGlassWidthNumber(String s) {
    this.glassWidthNumber = s;
    notifyListeners();
  }

  void setGlassWidthPlusMinus(String s) {
    this.glassWidthPlusMinus = s;
    notifyListeners();
  }

  void setGlassHeightNumber(String s) {
    this.glassHeightNumber = s;
    notifyListeners();
  }

  void setGlassHeightPlusMinus(String s) {
    this.glassHeightPlusMinus = s;
    notifyListeners();
  }

  //glass coast per squarefeet
  void setGlassCostPerSquareFeet(String s) {
    this.glassCostPerSquareFeet = s;
    notifyListeners();
  }

  //Other costing
  void setRubberCost1KG1FeetCost(String s) {
    this.rubberCost1KG1FeetCost = s;
    notifyListeners();
  }

  void setRubberFeet1KG1FeetCost(String s) {
    this.rubberFeet1KG1FeetCost = s;
    notifyListeners();
  }

  void setLockCost1PIS1FeetCost(String s) {
    this.lockCost1PIS1FeetCost = s;
    notifyListeners();
  }

  void setBearingCost1PIS1FeetCost(String s) {
    this.bearingCost1PIS1FeetCost = s;
    notifyListeners();
  }

  void setCornerCleat1FeetCost(String s) {
    this.cornerCleat1FeetCost = s;
    notifyListeners();
  }

  void setTopUGuide1FeetCost(String s) {
    this.topUGuide1FeetCost = s;
    notifyListeners();
  }

  void setShutterWingConnector1FeetCost(String s) {
    this.shutterWingConnector1FeetCost = s;
    notifyListeners();
  }

  void setInterLockCap1FeetCost(String s) {
    this.interLockCap1FeetCost = s;
    notifyListeners();
  }

  void setLockGuide1FeetCost(String s) {
    this.lockGuide1FeetCost = s;
    notifyListeners();
  }

  // set 1 pis screw cost
  void setScrew50by8Cost(String s) {
    this.screw50by8Cost = s;
    notifyListeners();
  }

  void setWallPlugCost(String s) {
    this.wallPlugCost = s;
    notifyListeners();
  }

  //6MM Wool Pile
  void setOneBunchWoolPileCost(String s) {
    this.oneBunchWoolPileCost = s;
    notifyListeners();
  }

  void setOneBunchWoolPileFeet(String s) {
    this.oneBunchWoolPileFeet = s;
    notifyListeners();
  }

  void setLeberPerSquareFeet(String s) {
    this.leberPerSquareFeet = s;
    notifyListeners();
  }

//quatestion Formate
  void setProfitInPercentage(String s) {
    this.profitInPercentage = s;
    notifyListeners();
  }
}
