import 'dart:convert';
import 'package:domal/Components/forgot_password_text.dart';
import 'package:domal/Components/input_field.dart';
import 'package:domal/Components/large_button.dart';
import 'package:domal/Screens/HomeScreen/home_screen.dart';
import 'package:domal/const/Const.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routeName = '/Login';

  @override
    _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = new GlobalKey<FormState>();

  TextEditingController _email = new TextEditingController();

  TextEditingController _password = new TextEditingController();

  TextEditingController _action = new TextEditingController();

  checklogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.containsKey("islogin")) {
      if (pref.getBool("islogin") == true) {
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed('/HomeScreen');
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
          child: Form(
        key: _formkey,
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
                    controller: _email,
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
                    controller: _password,
                    lable: 'Password',
                    placeholder: 'Enter Password',
                    icon: Icons.lock_outline_rounded,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50, top: 10),
                  child: ForgotPasswordText(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: RaisedButton(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Log In",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w400)),
                        ),
                        onPressed: () async {
                          // print("Button Click");
                          var user_email = _email.text.toString();
                          var user_pass = _password.text.toString();
                          var check_login = _action.text.toString();

                          // Uri uri = Uri.parse(
                          //     "https://pkwebdevelopers.com/domal/save_user_data.php");
                          print(user_email);
                          print(user_pass);

                          var response = await http.post(
                              Uri.parse(
                                  "https://pkwebdevelopers.com/domal/save_user_data.php"),
                              body: {
                                "user_email": _email.text.toString(),
                                "user_pass": _password.text.toString(),
                                "action": "check_login",
                              });
                          if (response.statusCode == 200) {
                            print(response.body);
                            var json = jsonDecode(response.body);
                            var status = json["status"];
                            if (status == "Success") {
                              var user_id = json["data"]["id"];
                              //var name = json["userdata"]["first_name"];

                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              pref.setString("userid", user_id);
                              // pref.setString("first_name", name);
                              pref.setBool("islogin", true);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()));
                            }
                            else {
                              Fluttertoast.showToast(
                                  msg: "Email id or Password not Found",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          }
                        },
                        splashColor: Colors.red.shade900,
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                // LargeButton(
                //   lable: 'Login',
                // ),
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
