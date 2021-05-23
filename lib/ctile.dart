import 'package:flutter/material.dart';
import 'package:yamato/result.dart';



class Ctile extends StatelessWidget {
  String number;
  String name;
 // String contents;



  Ctile({String number, String name,
   //String contents
  }) {
    this.number = number;
    this.name = name;
   // this.contents = contents;
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      child: Container(
          height: 100,
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Row(
                children: <Widget>[
            Icon(Icons.stop_sharp, color: Colors.indigo[900], size: 30,),
            SizedBox(height: 100, width:10,),
            Text(
              this.name,
            style: TextStyle(color: Colors.indigo[900], fontSize: 24, fontWeight: FontWeight.w700),
            //this.code+category
          ),
            Text("＜"+this.number+"問＞", style: TextStyle(fontSize: 18, color: Colors.lightBlue),),
            ]),
            SizedBox(
              height: 100,
              width: 80,
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.arrow_right_sharp, size:70,), color: Colors.indigo[900],
              onPressed: () {
             // Navigator.push(
               //   context,MaterialPageRoute(
                 // builder: (context) =>Result()
              //)
              //);
            }, ),
      ),


          ],),
        ),

    );
  }
}