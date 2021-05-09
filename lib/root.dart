import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yamato/search.dart';

class RootWidget extends StatefulWidget{
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {



  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      Center(

        //child: Container(
          //padding: const EdgeInsets.all(32),
          //margin: EdgeInsets.all(32),
          child: Column(

            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(24),
                   margin: EdgeInsets.all(20),
                   child: Image.network('https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG_ORuY3auNKO_SGC79HkaeLLiJlOV258tTKjNtwKxI1RkCFf5EU7Dh3Ng8lSLG7sxwKxm-QmB1GJ0jqhMkRetaRT9IYTihNFldNsafAjn0g_KRuSqMqzACO4FViJGJOSzpXO5rdzgyOgMDCeAKIr_pdYVXTT5_BiRdSWfoWP9ynIUv8LWsQpZfZ47i_g79x9Cri10Hn-_a30nvfbQhrXuVwslkBXyddUrxHUAKGmqEqaw_OZVHhhIr65RXCw3Dfv1Yz0-kdKhTK1vGzBC7f8wUA=/montore_visual.jpg',),
                height: 200.0,
                width: 500.0,
              ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.all(4),
              child: SizedBox(
                width: 280,
                height: 60,
                child:ElevatedButton(onPressed: () {},
                  child: Text("続きから解く", style: TextStyle(fontSize: 20,),),
                  //style: ElevatedButton.styleFrom(
                    //side: BorderSide(
                      //primary: Colors.indigo[900],
                      //width: 3,
                    //),
                  //),
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
                      MaterialPageRoute(builder: (context) => Search()),
                    );
                },

                  child: Text("問題検索", style: TextStyle(fontSize: 20,),),
                  //style: ElevatedButton.styleFrom(
                    //side: BorderSide(
                      //primary :Colors.indigo[900],
                      //width: 3,
                //    ),
                  //),
                ),
               ),
             ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.all(4),
                child: SizedBox(
                width: 280,
                height: 60,
                child: ElevatedButton(onPressed: () {},
                  child: Text("学習履歴", style: TextStyle(fontSize:  20,),),
                  //style: ElevatedButton.styleFrom(
                    //side: BorderSide(
                      //primary :Colors.indigo[900],
                      //width: 3,
                  //  ),
                 // ),
                 ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.all(4),
                child: SizedBox(
                width: 280,
                height: 60,
              child: ElevatedButton(onPressed: () {},
                  child: Text("シリアルコード", style: TextStyle(fontSize: 20,),),
                //style: ElevatedButton.styleFrom(
                  //side: BorderSide(
                    //primary :Colors.indigo[900],
                    //width: 3,
                  //),
                ),
                ),
               ),
             // ),
            ],
          ),
      ),
      //),



    );

  }
}