import 'package:flutter/material.dart';
import 'package:yamato/qtile.dart';
import 'package:yamato/question.dart';
import 'package:filter_list/filter_list.dart';

import 'filter.dart';

class Result extends StatefulWidget {


  Result({Key key}) : super(key: key);




  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {


  var qlist = ['対ベトナムラオスみゃんまー','井らに楽シリアドバイク','エジプトエチオ','フランスイギリスイタリアスお会あぽこぽぽぽぽぽぽぽぽぽぽぽぽぽ','アメリカメキシコカナダ地理'];

  void osareta() {

    qlist.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("検索結果：X問"),
        backgroundColor: Colors.lightBlue[400],
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.shuffle),
              onPressed: () {setState(() {
                qlist.shuffle();
              });},
            ),
          ),
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
    ),],
      ),
      body: Column(
    children: <Widget>[
      Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: qlist.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child:Container(
                height: 90,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                Container(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Text('mondaicode', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black26)),
                        SizedBox(width: 10,),
                        Text('カテゴリー', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ],),
                    ),
                    Flexible(child:Text(qlist[index], style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold, ),overflow: TextOverflow.ellipsis),),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //Text('必修', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black54)),
                          Container(
                            height: 20,
                            width: 40,
                              decoration: BoxDecoration(
                                border: const Border(
                                  left: const BorderSide(
                                    color: Colors.black54,
                                    width: 1,
                                  ),
                                  top: const BorderSide(
                                    color: Colors.black54,
                                    width: 1,
                                  ),
                                  right: const BorderSide(
                                    color: Colors.black54,
                                    width: 1,
                                  ),
                                  bottom: const BorderSide(
                                    color: Colors.black54,
                                    width: 1,
                                  ),
                                ),
                              ),
                            child:Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 2, 2),
                                child:Text('必修', style: TextStyle(fontSize: 12,color: Colors.black),)),),
                          SizedBox(width: 5,),
                          Text('出題回', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54)),
                          SizedBox(width: 5,),
                          Text('模試：誤', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54)),
                        ],
                      ),
                    ),
                  ],
                )),
                Container(child:Row(
                  children: <Widget>[

                    Container(
                      height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('＜模試：誤＞', style: TextStyle(fontSize: 10,  color: Colors.black)),
                      Icon(Icons.check),
                    ],
                  ),
                ),
                    SizedBox(width: 5,),
                    Icon(Icons.star_border, color: Colors.lightBlue, size: 30,),
                    SizedBox(width: 10,),
                    ]),
                ),
            ]),
            ),
            );
    }
         // children: <Widget>[
            //Qtile(code: "SA116354", category: "呼吸器", contents: "口呼吸",),
            //Qtile(code: "SS132164", category: "循環器", contents: "循環器",),
           // Qtile(code: "SZ546115", category: "血液", contents: "血中濃度",),
            //Qtile(code: "SA515616", category: "呼吸器", contents: "深呼吸",),
            //Qtile(code: "SW489332", category: "免疫", contents: "免疫機能",),
            //Qtile(code: "SR156844", category: "小児", contents: "カゼ",),
            //Qtile(code: "SF154984", category: "感染", contents: "ウイルス",),
            //Qtile(code: "SZ548646", category: "血液", contents: "出血",),
           // Qtile(code: "SA548989", category: "呼吸器", contents: "肺胞",),
            //Qtile(code: "SG654486", category: "精神", contents: "精神疾患",),
           // Qtile(code: "SF461565", category: "感染", contents: "感染症",),
           // Qtile(code: "SB654648", category: "神経", contents: "神経系",),


            //],
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
          );
        }, child: Text("演習を始める", style: TextStyle(fontSize:  20,),),),
    ),
      ),
    ],

      ),


      );



  }
  }