import 'package:domal/Components/input_field.dart';
import 'package:domal/Components/large_button.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

  static String routeName = '/register';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
          child: Form(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: CInputField(
                    controller: _controller,
                      lable: 'Name',
                      placeholder: 'Enter Name',
                      icon: Icons.person),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: CInputField(
                    controller: _controller,
                    lable: 'Email',
                    placeholder: 'Enter Email',
                    icon: Icons.email_outlined,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: CInputField(
                    controller: _controller,
                    lable: 'Password',
                    placeholder: 'Enter Password',
                    icon: Icons.lock_outline_rounded,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                LargeButton(
                  lable: "REGISTER",
                ),
                Container(
                  height: 2,
                  margin: EdgeInsets.only(top: 50, left: 100, right: 100),
                  decoration: BoxDecoration(
                    color: kGreenColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent,
                      ),
                      child:
                          Image(image: AssetImage('assets/Images/google.png')),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
