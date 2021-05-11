import 'package:flutter/material.dart';
import 'package:yamato/question.dart';


class Answer extends StatefulWidget {


  Answer ({Key key}) : super(key: key);


  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("?/???　問題番号???"),
          backgroundColor: Colors.lightBlue[400],
          actions: [],
        ),
        body: Column(
          children: <Widget>[
            Text('解答:bool',  style: TextStyle(fontSize: 25),),
            Text('正解:a~d',  style: TextStyle(fontSize: 25),),
            Text('解答時間:time',  style: TextStyle(fontSize: 25),),
            Text('国試正答率:int％', style: TextStyle(fontSize: 25),),
            Text('~~~~~~~',  style: TextStyle(fontSize: 25),),
            Card(
            child: Text('解答履歴'),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(24),
                      margin: EdgeInsets.all(20),
                      child: Image.network('https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_ORuY3auNKO_SGC79HkaeLLiJlOV258tTKjNtwKxI1RkCFf5EU7Dh3Ng8lSLG7sxwKxm-QmB1GJ0jqhMkRetaRT9IYTihNFldNsafAjn0g_KRuSqMqzACO4FViJGJOSzpXO5rdzgyOgMDCeAKIr_pdYVXTT5_BiRdSWfoWP9ynIUv8LWsQpZfZ47i_g79x9Cri10Hn-_a30nvfbQhrXuVwslkBXyddUrxHUAKGmqEqaw_OZVHhhIr65RXCw3Dfv1Yz0-kdKhTK1vGzBC7f8wUA=/montore_visual.jpg',),
                      height: 100.0,
                      width: 500.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(60),
                      child: SizedBox(
                      width: 280,
                      height: 200,
                        child: Text("解説がめちゃめちゃ入る予定です、J'essaie faire le texte en langue different, I write the text in English. En quelque langue latin, on utilise l'apostrophe dans un texte, on doit  faire attentiion l'usage de les guillemets."),
                            ),
                          ),
                   ],
                ),
              ),
            ),


          Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 280,
                height: 60,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => Question())
                    );},
                  child: Text("次の問題"),),
              ),
            ),
          ],
        ),
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
           IconButton(icon: Icon(Icons.arrow_left_rounded, size: 20), onPressed: () {
             Navigator.of(context).pop();
           }),
           IconButton(icon: Icon(Icons.arrow_right_rounded, size: 20), onPressed: () {
             Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Answer())
             );
           }),
         ],
       ),
        ),
      ),
    );
  }
}