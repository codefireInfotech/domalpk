import 'package:domal/Components/input_field.dart';
import 'package:domal/Components/large_button.dart';
import 'package:flutter/material.dart';

class FPDialogBox extends StatelessWidget {
   FPDialogBox({Key? key}) : super(key: key);
  TextEditingController _fpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Center(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Icon(Icons.cancel_outlined),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 2,
              color: Colors.black38,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: CInputField(
                controller: _fpController,
                lable: 'Email',
                lableColor: Colors.black,
                placeholder: 'Enter Email',
                icon: Icons.email_outlined,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LargeButton(
              lable: "Submit",
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
