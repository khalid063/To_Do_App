import 'package:flutter/material.dart';

InputDecoration appInputDecoretion(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    fillColor: Colors.white70,
    filled: true,
    labelText: label,
    border: OutlineInputBorder(),
  );
}

ButtonStyle appButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.pink,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))
    ),
  );
}

SizedBox sizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: child,
    ),
  );
}