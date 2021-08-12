import 'package:domal/Screens/LoginScreen/components/forgotte_password_dialog_box.dart';
import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return FPDialogBox();
            },
          );
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
