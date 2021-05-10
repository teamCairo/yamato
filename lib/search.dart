import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/result.dart';

class Search extends StatefulWidget {


  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("問題一覧"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),

      floatingActionButton: Container(
          height: 100.0,
          width: 100.0,
          margin:EdgeInsets.only(bottom: 100.0),
          child: FloatingActionButton(
                child: Icon(Icons.search, size: 40),
                  onPressed: () {
                   showDialog(context: context, builder: (_) => AlertDialog(
                     title: Text('SEARCH!'),
                     content: Text('検索画面の仮置き'),
                     actions: <Widget>[
                       ElevatedButton(
                         child: Text("遷移"),
                         onPressed: () {
                           Navigator.push(
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
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp, color: Colors.blue),
              title: Text("消化器　＜X問＞", style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
          child: ListTile(
            leading: Icon(Icons.stop_sharp),
            title: Text("循環器　＜X問＞"),
            trailing: Icon(Icons.arrow_circle_down_rounded),
            subtitle: Text("書くことあれば欄"),
            onTap: () {},
          ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("呼吸器　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("腎臓　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("内分泌代謝　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("神経　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.stop_sharp),
              title: Text("血液　＜X問＞"),
              trailing: Icon(Icons.arrow_circle_down_rounded),
              subtitle: Text("書くことあれば欄"),
              onTap: () {},
            ),
          ),

        ],
      ),
    );
  }
}