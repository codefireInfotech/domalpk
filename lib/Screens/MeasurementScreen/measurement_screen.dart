import 'package:domal/Models/WindowTypeModel.dart';
import 'package:domal/Screens/MeasurementScreen/components/KFormComponent.dart';
import 'package:domal/State/MeasurementNewState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<WindowTypeModel> windowtype = [
  WindowTypeModel(title: '2 TRACK 2 GLASS PANAL', value: '2'),
  WindowTypeModel(title: '3 TRACK 3 GLASS PANAL', value: '3'),
  WindowTypeModel(title: '4 TRACK 4 GLASS PANAL', value: '4'),
];

class MeasurementScreen extends StatelessWidget {
  MeasurementScreen({Key? key}) : super(key: key);
  static String routeName = '/measurement';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<MeasurementNewState>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kGreenColor,
        title: Text('Measurement'),
      ),
      body: SafeArea(
        child: KFormContainer(
          formKey: _formKey,
          provider: _provider,
        ),
      ),
    );
  }
}
