import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamato/question.dart';

class Answer extends StatefulWidget {
  Answer({Key key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final double elev = 20;
  String outputtext = '';

  @override
  Widget build(BuildContext context) {
    if (outputtext == '') {
      loadAsset();
    } else {}

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("1/86　21年 第2回 No.26"),
        leading: Icon(Icons.home_sharp),
        elevation: elev,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Icon(Icons.close, size: 100, color: Colors.indigo)),
                  padding: const EdgeInsets.all(16),
                ),
                Text('正解:a\nあなたの回答:c',
                    style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            outputtext,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Question()));
                      },
                      child: Text(
                        "次の問題",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(4.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                label: Text("前へ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    )),
                icon: Icon(Icons.arrow_left_rounded, size: 30),
                style: OutlinedButton.styleFrom(
                    elevation: 10,
                    primary: Colors.lightBlue,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
              ),
            ),
            Container(
                width: 110,
                height: 40,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    ),
                    elevation: 10,
                    primary: Colors.white,
                  ),

                  onPressed: () {Navigator.of(context).pop();},
                  icon: Icon(Icons.list,size: 40,color: Colors.lightBlue,),
                  label: Text("一覧", style: TextStyle(
                    color: Colors.blue,
                  ),),
                )
            ),
            Container(
              width: 110,
              height: 40,
              margin: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  elevation: 10,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question()));
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 2, 0, 2),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '次へ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Colors.lightBlue),
                        ),
                        Icon(
                          Icons.arrow_right_rounded,
                          size: 30,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadAsset() async {
    //UTF8
    String value =
    await rootBundle.loadString('assets/text/2021_2_1_021_answer_01.txt');
    if (value == this.outputtext) {
    } else {
      setState(() {
        print('text読み込み処理' + this.outputtext);
        this.outputtext = value;
      });
    }
  }
}
