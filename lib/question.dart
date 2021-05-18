import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'answer.dart';

enum Alternative { a, b, c, d }

class Question extends StatefulWidget {
  Question({Key key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var _alternative = null;
  final double elev = 20;
  String outputtext = '';
  List<Image> outputimgList = [];
  int businessYear = 2021;
  int period = 1;
  int questionNo = 26;
  int tryingListNo = 26;

  void _onChanged(Alternative value) {
    setState(() {
      _alternative = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (outputtext == '') {
      loadAsset();
    } else {}

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("1/86　${businessYear.toString().substring(2)}年 第${period.toString()}回 No.${questionNo.toString()}"),
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
                    Card(
                      margin: EdgeInsets.all(10),
                      child:Column(
                        children:[Container(
                          padding: const EdgeInsets.all(8),
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
                          for (int i = 0; i < outputimgList.length; i++)
                            Container(
                                padding: const EdgeInsets.all(3),
                                margin: EdgeInsets.all(10),
                                child: outputimgList[i]),

                        ]
                      )
                    ),

        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: <Widget>[
              RadioListTile<Alternative>(
                title: Text(
                  "a:赤血球",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                value: Alternative.a,
                groupValue: _alternative,
                onChanged: _onChanged,
                activeColor: Colors.lightBlue,
                tileColor: Colors.white,
                selectedTileColor: Colors.indigo[900],
              ),
              RadioListTile<Alternative>(
                title: Text(
                  "b:~~~~~~",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                value: Alternative.b,
                groupValue: _alternative,
                onChanged: _onChanged,
                activeColor: Colors.lightBlue,
                tileColor: Colors.white,
                selectedTileColor: Colors.indigo[900],
              ),
              RadioListTile<Alternative>(
                title: Text("c:~~~~~~"),
                value: Alternative.c,
                groupValue: _alternative,
                onChanged: _onChanged,
                activeColor: Colors.indigo.shade300,
                tileColor: Colors.white,
                selectedTileColor: Colors.indigo[900],
              ),
              RadioListTile<Alternative>(
                title: Text("d:~~~~~~"),
                value: Alternative.d,
                groupValue: _alternative,
                onChanged: _onChanged,
                activeColor: Colors.indigo,
                tileColor: Colors.white,
                selectedTileColor: Colors.indigo[900],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          margin: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 4.0),
          child: SizedBox(
            width: 220,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.indigo[900]),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Answer()));
              },
              child: Text(
                "解答する",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
        ),
      ]))),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        notchMargin: 6.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 120,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    elevation: 10,
                    shadowColor: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Answer()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_left_rounded,
                            size: 35,
                            color: Colors.lightBlue,
                          ),
                          Text(
                            '前の問題',
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 110,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                      elevation: 10,
                      shadowColor: Colors.blue,
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlue,
                    ),
                    label: Text(
                      "一覧へ",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )),
              Container(
                width: 120,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    elevation: 10,
                    shadowColor: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Answer()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '次の問題',
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            size: 35,
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
      ),
    );
  }

  void loadAsset() async {

    //this.questionNo
    //UTF8
    String value =
        await rootBundle.loadString('assets/text/2021_2_1_022_question_01.txt');

    await this.outputimgList.add(Image.asset(
        'assets/image/2021_2_1_022_question_01.jpg',
        fit: BoxFit.contain));

    await this.outputimgList.add(Image.asset(
        'assets/image/2021_2_1_022_question_02.jpg',
        fit: BoxFit.contain));

    if (value == this.outputtext) {
    } else {
      setState(() {
        print('text読み込み処理' + this.outputtext);
        this.outputtext = value;
      });
    }
  }
}
