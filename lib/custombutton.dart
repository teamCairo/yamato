import 'package:flutter/material.dart';


class CustomButton extends OutlinedButton {
  const CustomButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(onPressed: () {},
      label: Text("続きから解く", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100),),
      icon:Icon(Icons.replay),
      style: OutlinedButton.styleFrom(
          primary: Colors.blueAccent,
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.blueAccent, width: 1),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),)
      ),
    );
  }
}