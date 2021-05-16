import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:yamato/result.dart';

import 'ctile.dart';
import 'filter.dart';

class Search extends StatefulWidget {


  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("問題一覧"),
        backgroundColor: Colors.lightBlue[400],
        actions: [
          Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {Navigator.push(
                context, MaterialPageRoute(
              builder: (context) => Filter(),
              //以下を追加
              fullscreenDialog: true,
            )
            )},
          ),
        ),
        ],
      ),

      floatingActionButton: Container(
          height: 100.0,
          width: 100.0,
          margin:EdgeInsets.only(bottom: 100.0),
          child: FloatingActionButton(
                child: Icon(Icons.search, size: 40),
                  onPressed: () {
                   showDialog(context: context, builder: (_) => AlertDialog(
                     shape: RoundedRectangleBorder(
                       borderRadius:
                         BorderRadius.all((Radius.circular(10.0)),),
                     ),
                     content: Builder(
                       builder: (context) {
                         var height = MediaQuery.of(context).size.height;
                         var width = MediaQuery.of(context).size.width;

                         return Container(
                           height: height - 400,
                           width: width -400,
                         );
                       }
                     ),
                     title: Text('SEARCH!'),
                     //content: Text('検索画面の仮置き'),
                     actions: <Widget>[
                       ElevatedButton(
                         child: Text("遷移"),
                         onPressed: () {
                           Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(builder: (context) => Result()),
                           );
                         },

                       ),
                     ],
                   ),
                   );
                      },
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
         Ctile(number:"20", name:"呼吸器"),
          Ctile(number: "30", name: "循環器",),
         Ctile(number: "", name: "消化器",),
        Ctile(number: "", name: "腎臓",),
        Ctile(number: "", name: "内代",),
        Ctile(number: "", name: "神経",),
        Ctile(number: "", name: "血液",),
          Ctile(number: "", name: "免疫",),
          Ctile(number: "", name: "感染",),
          Ctile(number: "", name: "中毒・異常症",),
          Ctile(number: "", name: "救急",),
          Ctile(number: "", name: "小児",),
          Ctile(number: "", name: "産科",),











        ],
      ),
    );
  }
}