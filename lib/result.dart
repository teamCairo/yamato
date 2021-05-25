import 'package:flutter/material.dart';
import 'package:yamato/qtile.dart';
import 'package:yamato/question.dart';
import 'package:yamato/db.dart';
import 'package:filter_list/filter_list.dart';

import 'filter.dart';

class Result extends StatefulWidget {




  //Result({Key key}) : super(key: key);
  Result(this.question1 ,this.qtext1, this.kailist1,this.codelist1, this.catlist1, this.hitsulist1, this.moshi1);
  List question1;
  List qtext1;
  List catlist1;
  List codelist1;
  List hitsulist1;
  List<bool> moshi1;
  List kailist1;



  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {


  //var qlist = ['うっ血心不全について正しいのはどれか。','右心不全の兆候でないのはどれか。','うっ血心不全で認められる浮腫の特徴はどれか。','高拍出性心不全をきたすのはどれか。２つ選べ。','心不全に特徴的な心臓の聴診所見はどれか。'
                //'成人の胃食道逆流症の典型的な症状はどれか。２つ選べ。','胸やけの誘因となりにくいのはどれか。','胃食道逆流症＜GERD＞の増悪因子でないのはどれか。','上部消化管内視鏡像を別に示す。診断はどれか。',
             //   '逆流性食道炎について正しいのはどれか。３つ選べ。','逆流性食道炎の治療に最も有用なのはどれか。','本問は、政界した受験者については採点対象に含め、不正解','54歳の男性。胸やけを主訴に来院した。来年前から',];

 // var codelist = ['1','15','36','102','6','76','19','2','I11','28','99','4','56'];
 // var catlist = ['循環器','呼吸器','血液','免疫','中毒','循環器','呼吸器','循環器','循環器','呼吸器','呼吸器','消化器','消化器'];
 // List<bool> moshi = [false,false,true,false,true,true,false,true,true,false,true,true,true];
//  var hitulist = ['必修','必修以外','必修','必修以外','必修','必修','必修','必修以外','必修','必修','必修','必修','必修'];
 // var kailist = ['第１回','第２回','第５回','第４回','第２回','第５回','第３回','第４回','第３回','第１回','第２回','第２回','第４回'];

   bool favorite = false;
   Color _iconcol = Colors.lightBlue;
   List<int> qorder = <int>[];
   List question2;
   List qtext2;
   List kailist2;
   List codelist2;
   List catlist2;
   List hitsulist2;
   List moshi2;
   List<bool> checkm = [];
   List hissyulist = [];
   bool _ordercheck = false;


  void initState() {
    super.initState();
    if(widget.question1 != null){
      this.question2 = widget.question1;
    }
    if (widget.qtext1 != null) {
      this.qtext2 =  widget.qtext1;
    }
    if (widget.kailist1 != null) {
      this.kailist2 =  widget.kailist1;
    }
    if (widget.catlist1 != null) {
      this.catlist2 = widget.catlist1;
    }
      if (widget.codelist1 != null) {
        this.codelist2 =  widget.codelist1;
      }
    if (widget.hitsulist1 != null) {
      this.hitsulist2 = widget.hitsulist1;
    }
    if (widget.moshi1 != null) {
      this.moshi2 = widget.moshi1;
    }
    for(var i = 0; i < moshi2.length; i++)
      if(moshi2[i] == 0) {
        checkm.add(false);
      } else if (moshi2[i] ==1) {
        checkm.add(true);
      } else {}

    for(var i = 0; i < hitsulist2.length; i++)
      if(hitsulist2[i] == 0) {
        hissyulist.add("0");
      } else if (hitsulist2[i] ==1) {
        hissyulist.add("1");
      } else {}
  }









  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.cyan[100],

      appBar: AppBar(
        elevation: 8,
        leading:Icon(Icons.home_sharp),
        title: Text("検索結果：${question2.length}問"),
        backgroundColor: Colors.lightBlue[400],
        actions: [

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
               itemCount: qtext2.length,
               itemBuilder: (BuildContext context, int index){
                 return InkWell(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder:(context) => Question(),),);
                   },
                   child:Card(
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
                                       SizedBox(width: 5),
                                       Container(
                                         width: 100,
                                         child:Text("第"+kailist2[index].toString()+"回"+'/'+codelist2[index].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54)),),
                                       SizedBox(width: 4,),
                                       Container(child:Text(catlist2[index].toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),),),
                                       SizedBox(width: 15,),
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
                                             child:Text(hissyulist[index].toString(), textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.black),)),),
                                     ],),
                                 ),
                                 Container(
                                   width: 260,
                                   child:Row(children:<Widget>[
                                     SizedBox(width: 20,),
                                     Flexible(child:Text(qtext2[index], style: TextStyle(fontSize: 16, color: Colors.indigo[900], fontWeight: FontWeight.bold, ),overflow: TextOverflow.ellipsis,  maxLines: 2,),)]),
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
                                           visible: true,
                                           //checkm[index],
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
                                   GestureDetector(
                                     onTap: (){setState(() {
                                       if (favorite == false) {
                                         _iconcol = Colors.yellow;
                                         favorite = true;

                                       } else if (favorite == true) {
                                         _iconcol = Colors.lightBlue;
                                         favorite = false;

                                       } else {}

                                     });},

                                     child:
                                     Icon(Icons.star_border, color: _iconcol , size: 30,),
                                   ),
                                   SizedBox(width: 10,),
                                 ]),
                             ),
                           ]),
                     ),
                   ),);
               }

           ),
         ),
         SizedBox(
           height: 30,
           width: 250,
           child:CheckboxListTile(
           value: _ordercheck,
           title: Text(
             "順番をシャッフルする",
             style: TextStyle(fontSize: 12,
               fontWeight: FontWeight.bold,
               //color: Colors.indigo[900],
             ),
           ),
           controlAffinity: ListTileControlAffinity.leading,
           onChanged: (bool value) {
             setState(() {
               _ordercheck = value;
             });
           },
         ),),
      Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.all(4),
      child: SizedBox(
      width: 280,
      height: 60,
        child: ElevatedButton(onPressed: () {
          if(_ordercheck == true) {
            question2.shuffle();
          }
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