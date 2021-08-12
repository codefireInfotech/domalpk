// import 'package:domal/Screens/HomeScreen/home_screen.dart';
import 'package:domal/Screens/HomeScreen/home_screen.dart';
import 'package:domal/Screens/LoginScreen/login_screen.dart';
// import 'package:domal/Screens/MeasurementScreen/measurement_screen.dart';
// import 'package:domal/Screens/RegisterScreen/register_screen.dart';
import 'package:domal/State/MeasurementNewState.dart';
import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/MeasurementScreen/measurement_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MeasurementState()),
        ChangeNotifierProvider(create: (_) => MeasurementNewState())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routes: routes,
        home: LoginScreen(),
      ),
    );
  }
}
