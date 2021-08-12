import 'package:domal/const/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MInputField extends StatelessWidget {
  MInputField({
    required this.onChanged,
    this.placeholder = 'Inch',
    this.autoFocus = false,
    required this.initialvalue,
  });

  final Function onChanged;
  final String placeholder;
  final String initialvalue;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Center(
        child: Container(
          height: 40,
          child: TextFormField(
            autofocus: autoFocus,
            onChanged: (value) {
              onChanged(value);
            },
            initialValue: initialvalue,
            validator: (val) {
              if (val == null || val.length == 0) {
                return 'Please enter value';
              }
              return null;
            },
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [
              // FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.singleLineFormatter,
              FilteringTextInputFormatter.allow(RegExp('[0-9.]'))
            ],
            maxLines: 1,
            decoration: InputDecoration(
              hintText: placeholder,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kDarkBlueColor, width: 3),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 3),
              ),
              errorStyle: TextStyle(height: 0, color: Colors.transparent),
              contentPadding: EdgeInsets.zero,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kDarkBlueColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
