import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget{
  TextEditingController Controller;
  String HintText;
  IconData icon;
  String hint;
  TextFields({required this.Controller, required this.HintText, required this.icon,required this.hint});
  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
        onPressed: (){},
        style: OutlinedButton.styleFrom(side: BorderSide(width: 2.0, color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),),backgroundColor: Colors.white),
        child:TextFormField(validator: (value){
          if(value==null||value.isEmpty){
            return hint;
          }
        },
          controller: Controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              hintText: HintText,
              border: InputBorder.none,
              suffixIcon:Icon(icon,color: Colors.blue,)

          ),
        )
    );
  }

}