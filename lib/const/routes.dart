import 'package:domal/Components/forgot_password_text.dart';
import 'package:domal/Screens/HomeScreen/home_screen.dart';
import 'package:domal/Screens/LoginScreen/login_screen.dart';
import 'package:domal/Screens/MeasurementScreen/measurement_screen.dart';
import 'package:domal/Screens/RegisterScreen/register_screen.dart';
import 'package:flutter/material.dart';

// final Map<String, WidgetBuilder> routes = {
//   LoginScreen.routeName: (_) => LoginScreen(),
//   RegisterScreen.routeName: (_) => RegisterScreen(),
//   HomeScreen.routeName: (_) => HomeScreen(),
//   MeasurementScreen.routeName: (_) => MeasurementScreen(),
// };

final routes = {
  '/Login': (BuildContext context) => LoginScreen(),
  '/Register': (BuildContext context) => RegisterScreen(),
  '/HomeScreen': (BuildContext context) => HomeScreen(),
  '/MeasurementScreen': (BuildContext context) => MeasurementScreen(),
  '/ForgetPassword': (BuildContext context) => ForgotPasswordText(),
};
