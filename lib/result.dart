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


  var qlist = ['うっ血心不全について正しいのはどれか。','右心不全の兆候でないのはどれか。','うっ血心不全で認められる浮腫の特徴はどれか。','高拍出性心不全をきたすのはどれか。２つ選べ。','心不全に特徴的な心臓の聴診所見はどれか。'
                '成人の胃食道逆流症の典型的な症状はどれか。２つ選べ。','胸やけの誘因となりにくいのはどれか。','胃食道逆流症＜GERD＞の増悪因子でないのはどれか。','上部消化管内視鏡像を別に示す。診断はどれか。',
                '逆流性食道炎について正しいのはどれか。３つ選べ。','逆流性食道炎の治療に最も有用なのはどれか。','本問は、政界した受験者については採点対象に含め、不正解','54歳の男性。胸やけを主訴に来院した。来年前から',];
  var codelist = ['108H16','103B21','106G15','102D6','106A1','107D16','112E19','106A12','109I11','87B28','99E29','104C11','108D56'];
  var catlist = ['循環器','呼吸器','血液','免疫','中毒','循環器','呼吸器','循環器','循環器','呼吸器','呼吸器','消化器','消化器'];
  List<bool> moshi = [false,false,true,false,true,true,false,true,true,false,true,true,true];
  var hitulist = ['必修','必修以外','必修','必修以外','必修','必修','必修','必修以外','必修','必修','必修','必修','必修'];
  var kailist = ['第１回','第２回','第５回','第４回','第２回','第５回','第３回','第４回','第３回','第１回','第２回','第２回','第４回'];

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
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => Question(),),);
              },
              child:Card(
              child:Container(
                height: 110,
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
                          SizedBox(width: 5),
                        Container(
                          width: 60,
                          child:Text(codelist[index], textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black45)),),
                        SizedBox(width: 10,),
                        Container(child:Text(catlist[index], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),),),
                      ],),
                    ),
                    Container(
                        width: 260,
                        child:Row(children:<Widget>[
                          SizedBox(width: 20,),
                        Flexible(child:Text(qlist[index], style: TextStyle(fontSize: 16, color: Colors.indigo[900], fontWeight: FontWeight.bold, ),overflow: TextOverflow.ellipsis,  maxLines: 2,),)]),
                          ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //Text('必修', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black54)),
                          SizedBox(width: 5),
                          Container(
                            height: 20,
                            width: 60,
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
                                padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                child:Text(hitulist[index], textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.black),)),),
                          SizedBox(width: 10,),
                          Text(kailist[index], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54)),
                          SizedBox(width: 5,),
                          //Text('模試：誤', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54)),
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
                      SizedBox(height: 5,),

                       Visibility(
                         visible: moshi[index],
                         child:Column(children: <Widget>[
                         Text('＜模試：誤＞', style: TextStyle(fontSize: 11,  color: Colors.black, fontWeight: FontWeight.w500)),
                         SizedBox(height: 5,),
                         Icon(Icons.check),
                      ]),),
                      SizedBox(height: 5,),
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
            ),);
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