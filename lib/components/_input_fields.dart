import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{
  final Icon fieldIcon;
  final String hintText;

  CustomInputField(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 350,
      child: Material(
        elevation:5.0,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.white,
        child: Container(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: fieldIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: Colors.amber,
                  style: BorderStyle.solid,
                )
              )
            ),
          ),
        ),

      ),

    );
  }
}