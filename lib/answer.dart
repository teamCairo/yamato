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
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          title: Text("?/???　問題番号???"),
          backgroundColor: Colors.lightBlue[400],
          actions: [],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Text('解答:bool',  style: TextStyle(fontSize: 25),),
            SizedBox(height: 20),
            Text('正解:a~d',  style: TextStyle(fontSize: 25),),
            SizedBox(height: 18),
            Text('解答時間:time',  style: TextStyle(fontSize: 15),),
            SizedBox(height: 10),
            Text('国試正答率:int％', style: TextStyle(fontSize: 15),),
            SizedBox(height: 8),
            Text('~~~~~~~',  style: TextStyle(fontSize: 20),),
            SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(8),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 4.0),
                      child: Image.network('https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_ORuY3auNKO_SGC79HkaeLLiJlOV258tTKjNtwKxI1RkCFf5EU7Dh3Ng8lSLG7sxwKxm-QmB1GJ0jqhMkRetaRT9IYTihNFldNsafAjn0g_KRuSqMqzACO4FViJGJOSzpXO5rdzgyOgMDCeAKIr_pdYVXTT5_BiRdSWfoWP9ynIUv8LWsQpZfZ47i_g79x9Cri10Hn-_a30nvfbQhrXuVwslkBXyddUrxHUAKGmqEqaw_OZVHhhIr65RXCw3Dfv1Yz0-kdKhTK1vGzBC7f8wUA=/montore_visual.jpg',),
                      width: 500.0,
                      height: 100.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                      width: 280.0,
                      height: 150.0,
                        child: Text("解説がめちゃめちゃ入る予定です、J'essaie faire le texte en langue different, I write the text in English. En quelque langue latin, on utilise l'apostrophe dans un texte, on doit  faire attentiion l'usage de les guillemets.", style: TextStyle(fontSize: 16,),),
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
                width: 250,
                height: 60,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => Question())
                    );},
                  child: Text("次の問題", style: TextStyle(fontSize: 15,),),
                ),
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
              Container(
                  width: 150,
                  height: 37,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)
                      ),
                      elevation: 10,
                      shadowColor: Colors.blue,
                      primary: Colors.white,
                    ),

                    onPressed: () {Navigator.of(context).pop();},
                    icon: Icon(Icons.arrow_left_rounded,size: 40,color: Colors.lightBlue,),
                    label: Text('前の問題', style: TextStyle(
                      color: Colors.blue,
                    ),),
                  )
              ),
              Container(
                width: 150,
                height: 37,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)
                    ),

                    elevation: 10,
                    shadowColor: Colors.blue,
                    primary: Colors.white,
                  ),

                  onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Answer())
                  );},
                  child: Padding(padding: EdgeInsets.fromLTRB(16, 2, 0, 2),
                    child:Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('次の問題', style: TextStyle(color: Colors.blue),),
                          Icon(Icons.arrow_right_rounded,size: 40, color: Colors.lightBlue,),
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
}