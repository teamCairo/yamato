import 'package:flutter/material.dart';



class Qtile extends StatelessWidget {
  double code;
  String category;
  String contents;


  Qtile({double code, String category, String contents}) {
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
             "仮置き"
        //this.code+category
         ),
          subtitle: Text(this.contents),
          //onTap: () {
            //Navigator.push(
            //  context,MaterialPageRoute(
            //  builder: (context) =>???()
           // )
           // );
         // },
        ),
      ),
    );
  }
}