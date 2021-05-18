import 'package:flutter/material.dart';

import 'answer.dart';

enum Alternative { a, b, c, d }

class Question extends StatefulWidget {


  Question ({Key key}) : super(key: key);


  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  var _alternative = null;
  void _onChanged(Alternative value) {
    setState(() {_alternative = value;   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("?/???　問題番号???"),
        backgroundColor: Colors.lightBlue[400],
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.star_border_outlined, color: Colors.white,),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
          padding: const EdgeInsets.all(20),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12),
                  margin: EdgeInsets.all(20),
                  child: Image.network('https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_ORuY3auNKO_SGC79HkaeLLiJlOV258tTKjNtwKxI1RkCFf5EU7Dh3Ng8lSLG7sxwKxm-QmB1GJ0jqhMkRetaRT9IYTihNFldNsafAjn0g_KRuSqMqzACO4FViJGJOSzpXO5rdzgyOgMDCeAKIr_pdYVXTT5_BiRdSWfoWP9ynIUv8LWsQpZfZ47i_g79x9Cri10Hn-_a30nvfbQhrXuVwslkBXyddUrxHUAKGmqEqaw_OZVHhhIr65RXCw3Dfv1Yz0-kdKhTK1vGzBC7f8wUA=/montore_visual.jpg', ),
                  width: 300.0,
                  height: 100.0,
                ),
               Container(
                 padding: const EdgeInsets.all(6),
                 child: SizedBox(
                   width: 280,
                   height: 180,
                   child: Text('ここには問題文が入る予定です。枠の大きさやフォントサイズはまだいじっていません。細かい部分も気にするなら適切に改行とかも機能としてあるのか？検討', style: TextStyle(fontSize: 16,),),
                 ),
               ),
              ],
             ),
             ),
          ),
          Expanded(
            child:Padding(
              padding: EdgeInsets.fromLTRB(25,0,25,0),
              child: Column(

               children: <Widget>[
                RadioListTile<Alternative>(
                  title: Text("a:~~~~~~", style: TextStyle(fontSize: 18,),),
                  value: Alternative.a,
                  groupValue: _alternative,
                  onChanged: _onChanged,
                  activeColor: Colors.lightBlue,
                  tileColor: Colors.white,
                  selectedTileColor: Colors.indigo[900],
                ),
                RadioListTile<Alternative>(
                  title: Text("b:~~~~~~", style: TextStyle(fontSize: 18,),),
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
          ),

          Container(
          padding: const EdgeInsets.all(6),
          margin: EdgeInsets.fromLTRB(4, 0, 4, 70),
            child: SizedBox(
              width: 220,
              height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.indigo[900]),
                  onPressed: () {
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => Answer())
                   );
                   },

                  child: Text("解答する", style: TextStyle(fontSize: 18,
                    color: Colors.yellow,
                    ), ),),
    ),
    ),

          //Row(
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            //children:<Widget>[
             // Container(
               // padding: const EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                //child: SizedBox(
                // width: 110,
                 //height: 30,
                 //child: ElevatedButton(onPressed: () {}, child: Text("解説を見る"),),
               //),
              //),

          //],
          //),


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
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 130,
                height: 50,
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
      child: Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
        child:Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.arrow_left_rounded,size: 40, color: Colors.lightBlue,),
              Text('前の問題', style: TextStyle(fontSize: 14, color: Colors.blue),),
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
                    icon: Icon(Icons.list,size: 30,color: Colors.lightBlue,),
                    label: Text("一覧へ", style: TextStyle(
                      color: Colors.blue,
                    ),),
                  )
              ),
              Container(
                width: 130,
                height: 50,
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
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                      child:Container(

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('次の問題', style: TextStyle(fontSize: 14, color: Colors.blue),),
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