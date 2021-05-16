import 'package:flutter/material.dart';
import 'package:yamato/question.dart';



class Qtile extends StatelessWidget {
  String code;
  String category;
  String contents;


  Qtile({String code, String category, String contents}) {
    this.code = code;
    this.category = category;
    this.contents = contents;
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Container(
        child: ListTile(
          //leading: ,
          title: Text(
             this.contents
        //this.code+category
         ),
          subtitle: Text(this.code+"/"+this.category),
          onTap: () {
            Navigator.push(
              context,MaterialPageRoute(
             builder: (context) =>Question()
            )
            );
          },
        ),
      ),
    );
  }
}