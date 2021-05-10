import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yamato/search.dart';
import 'package:yamato/db.dart';
import 'package:yamato/history.dart';


class RootWidget extends StatefulWidget{
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {


  var _textController = TextEditingController();

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
                child: ElevatedButton(
                  child: Text("学習履歴", style: TextStyle(fontSize:  20,),),
                  //style: ElevatedButton.styleFrom(
                    //side: BorderSide(
                      //primary :Colors.indigo[900],
                      //width: 3,
                  //  ),
                 // ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context)=> History(
                            )
                        )
                    )
                  },
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) => new AlertDialog(
                    title: new Text("シリアルコード"),
                    content: Container(
                      height:100,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[new Text("模試解答に記載されたシリアルコードを入力してください"),
                          TextField(
                            decoration: InputDecoration(hintText: "ここに入力"),
                            controller: _textController,
                          ),],),
                    ),
                    // ボタンの配置
                    actions: <Widget>[
                      new TextButton(
                          child: const Text('キャンセル'),
                          onPressed: () {
                            Navigator.pop(context, _DialogActionType.cancel);
                          }),
                      new TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            checkSerial();
                          })
                    ],
                  ),
                ).then<void>((value) {
                  // ボタンタップ時の処理
                  switch (value) {
                    case _DialogActionType.cancel:
                      print("cancel...");
                      break;
                    case _DialogActionType.ok:
                      print("OK!!");
                      break;
                    default:
                      print("default");
                  }
                });
              },
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

  void checkSerial() async {
    List<Parameter> parametersList = await MyDatabase().getAllparameters();

    Parameter targetParameter;
    bool foundFlg = false;
// forEach
    for(var parameter in parametersList){
      if(parameter.code.substring(0,18)=='serialcdStartedFlg' && parameter.textValue ==_textController.text) {
        foundFlg=true;
        targetParameter=parameter;
      }
    }

    if (targetParameter.booleanValue==true){

    }else{
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("確認"),
            content: Text("入力されたシリアルコードはすでに入力済みです"),
            actions: <Widget>[
              // ボタン領域
              TextButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    }
  }


}


enum _DialogActionType {
  cancel,
  ok,
}


