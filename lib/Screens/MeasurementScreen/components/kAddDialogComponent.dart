import 'package:domal/Components/input_field.dart';
import 'package:domal/Components/large_button.dart';
import 'package:domal/Screens/MeasurementScreen/components/measurement_input_field.dart';
import 'package:domal/State/MeasurementState.dart';
import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KAddDialogComponent extends StatefulWidget {
  const KAddDialogComponent({Key? key, required this.onPress})
      : super(key: key);
  final Function onPress;

  @override
  _KAddDialogComponentState createState() => _KAddDialogComponentState();
}

class _KAddDialogComponentState extends State<KAddDialogComponent> {
  bool isShowError = false;
  var _provider;
  String errorText = '';
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<MeasurementState>(context);
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
                    'Add Feet',
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
                child: MInputField(
                  initialvalue: '',
                  autoFocus: true,
                  onChanged: (val) {
                    setState(() {
                      errorText = '';
                    });
                    _provider.setTextFieldInputText(val);
                  },
                  placeholder: 'Feet',
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              errorText,
              style: TextStyle(color: Colors.red, fontSize: 11),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (_provider.textFieldInputText != '') {
                        widget.onPress(_provider.textFieldInputText);
                        _provider.setTextFieldInputText('');
                        Navigator.pop(context);
                      } else {
                        setState(() {
                          errorText = 'Please Enter Text';
                        });
                      }
                    },
                    color: kGreenColor,
                    height: 30,
                    minWidth: 10,
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            // LargeButton(
            //   lable: "Add",
            // ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
