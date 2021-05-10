import 'package:flutter/material.dart';
import 'package:yamato/datamigrant.dart';

class History extends StatefulWidget {


  History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(4),
        child: SizedBox(
          width: 280,
          height: 60,
          child:ElevatedButton(onPressed:() {
            DataMigrant dataMigrant = DataMigrant();
            dataMigrant.dataReset();
          },
            child: Text("データリセット", style: TextStyle(fontSize: 20,),),

          ),
        ),
    ),);
  }
}


