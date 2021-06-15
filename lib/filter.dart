import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/result.dart';
import 'package:yamato/root.dart';


class SubjectFilter {
  const SubjectFilter(this.name, this.num);
  final String name;
  final int num;
}

class Filter extends StatefulWidget {

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  final List<SubjectFilter> _elements = <SubjectFilter>[
    SubjectFilter("産科",1,),
    SubjectFilter("婦人",2,),
    SubjectFilter("呼吸",3,),
    SubjectFilter("循環",4,),
    SubjectFilter("消化",5,),
    SubjectFilter("肝胆",6,),
    SubjectFilter("血液",7,),
    SubjectFilter("腎臓",8,),
    SubjectFilter("神経",9,),
    SubjectFilter("内分",10),
    SubjectFilter("代謝",11),
    SubjectFilter("ア膠",12,),
    SubjectFilter("免疫",13,),
    SubjectFilter("感染",14,),
    SubjectFilter("中毒",15,),
    SubjectFilter("救急",16,),
    SubjectFilter("複合",17,),
    SubjectFilter("小複",18,),
    SubjectFilter("精神",19,),
    SubjectFilter("皮膚",20,),
    SubjectFilter("眼科",21,),
    SubjectFilter("耳鼻",22,),
    SubjectFilter("泌尿",23,),
    SubjectFilter("整形",24,),
    SubjectFilter("放射",25,),
    SubjectFilter("麻酔",26,),
    SubjectFilter("公衆",27,),
    SubjectFilter("一般",28,),
  ];

  List<String> _subjectfilters = <String>[];
  List<String> _compulsory = <String>[];
  List<String> _favorite = <String>[];
  List<String> _period = <String>[];
  bool _pediatrics;
  int _moshi = 0;
  List<QuestionForSearch>  _questions = [];
  List<int> yearlist = [];
  List<int> periodlist = [];
  List<String> numberlist = [];
  List<int> moshilist2 = [];
  List<Color> btncolorList = [];
  List<Color> btnsubcolorList = [];
  List<bool> btnflagList = [];
  List<String> subjectTextList =
  ["産科","婦人","呼吸","循環","消化","肝胆","血液","腎臓","神経","内分","代謝",
    "ア膠","免疫","感染","中毒","救急","複合","小複","精神","皮膚","眼科","耳鼻",
    "泌尿","整形","放射","麻酔","公衆","一般"];

  final double btnLineWidth = 0.0025;
  final double filterBtnHeight = 0.046;
  final double filterBtnWidth = 0.16;
  final double fontSize = 15;
  final double choiceBtnHeight = 0.04;
  final double choiceBtnWidth = 0.17;
  Color btncolorPed = Colors.blueAccent; Color btnsubcolorPed = Colors.white;
  Color hissyucol1 = Colors.blue;Color hissyubcol1 = Colors.white;
  Color hissyucol2 = Colors.blue;Color hissyubcol2 = Colors.white;
  Color favocol1 = Colors.blue;Color favobcol1 = Colors.white;
  Color favocol2 = Colors.blue;Color favobcol2 = Colors.white;
  Color gotoucol1 = Colors.blue;Color gotoubcol1 = Colors.white;
  Color gotoucol2 = Colors.blue;Color gotoubcol2 = Colors.white;
  Color kaicol1 = Colors.blue;Color kaibcol1 = Colors.white;
  Color kaicol2 = Colors.blue;Color kaibcol2 = Colors.white;
  Color kaicol3 = Colors.blue;Color kaibcol3 = Colors.white;
  Color kaicol4 = Colors.blue;Color kaibcol4 = Colors.white;

  void initState() {
    super.initState();
    if(btncolorPed == Colors.blueAccent){
      _pediatrics = false;
    } else{ _pediatrics =true;}
  }

  void all(){
    if(_pediatrics == true){}else {btnforped();}
    for(final SubjectFilter subject in _elements){
      if(_subjectfilters.contains(subject.num.toString()) == false) {
        _subjectfilters.add(subject.num.toString());}else{}
      for(var i =0; i<29; i++) {
        setState(() {
          btncolorList[i] = Colors.white;
          btnsubcolorList[i] = Colors.blueAccent;
          btnflagList[i] = true;
        });
      }
    }}

  void clear() {
    if(_pediatrics == false){}else{btnforped();}
    _subjectfilters.removeRange(0, _subjectfilters.length);
    for(var i = 0; i<29; i++) {
      setState(() {
        btncolorList[i] = Colors.blueAccent;
        btnsubcolorList[i] = Colors.white;
        btnflagList[i] = false;
      });
    }
  }

  Future filtercondition(MyDatabase db) async {

   List<int> _kai1 = _period.map(int.parse).toList();
   List<int> _hissyu1 = _compulsory.map(int.parse).toList();
   List<int> _clip1 = _favorite.map(int.parse).toList();
   List<int> _filters1 = _subjectfilters.map(int.parse).toList();
   _questions = await db.selectQuestionFilesForFilter(
        _filters1, _hissyu1, _kai1, _clip1, _moshi, _pediatrics);
   yearlist =[];
   periodlist = [];
   numberlist = [];
   for(var i=0; i<_questions.length; i++){
   yearlist.add(_questions[i].businessYear);
   periodlist.add(_questions[i].period);
   numberlist.add(_questions[i].questionNo);}
  }

  void filtercondition1() async{
    MyDatabase db = MyDatabase();
    await filtercondition(db);
    if(_questions.length == 0){
      showDialog(context: context,
        builder: (context) =>AlertDialog(
          title: Text("検索結果：0件"),
          content: Text("検索条件に当てはまる問題が見つかりませんでした。"),
          actions: [
            TextButton(child: Text("OK"),
                onPressed: () {
                Navigator.pop(context);}),
          ],
        ));} else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            Result(4, yearlist, periodlist, numberlist , null)
        ),
      );
    }

  }

  void btnonoff(int btnNumber){
    setState(() {
      if(btncolorList[btnNumber-1] == Colors.blueAccent){
        btncolorList[btnNumber-1] = Colors.white;
        btnsubcolorList[btnNumber-1] = Colors.blueAccent;
        btnflagList[btnNumber-1] = true;
        if(_subjectfilters.contains(btnNumber.toString()) == false){
          _subjectfilters.add(btnNumber.toString());
        }else{}
      }else{
        btncolorList[btnNumber-1] = Colors.blueAccent;
        btnsubcolorList[btnNumber-1] = Colors.white;
        _subjectfilters.remove(btnNumber.toString());
        btnflagList[btnNumber-1] = false;
      }});
  }

  void btnforped(){
    setState(() {
      if(btncolorPed == Colors.blueAccent){
        btncolorPed = Colors.white;
        btnsubcolorPed = Colors.blueAccent;
        _pediatrics = true;
       }else {
        btncolorPed = Colors.blueAccent;
        btnsubcolorPed = Colors.white;
        _pediatrics = false;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height*0.0011;
    // ignore: non_constant_identifier_names
    Widget Filterbutton (
        int num, Color color, Color bcolor, String text, bool flag
        ) {
      return GestureDetector(
        onTap: () {
          btnonoff(num);
        },
        child: Container(
          height: height * filterBtnHeight,
          width: width *filterBtnWidth,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: color,
                width: width * btnLineWidth,
              ),
              top: BorderSide(
                color: color,
                width: width * btnLineWidth,
              ),
              left: BorderSide(
                color: color,
                width: width * btnLineWidth,
              ),
              right: BorderSide(
                color: color,
                width: width * btnLineWidth,
              ),
            ),
            color: bcolor,
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: Text(
            text, style: TextStyle(fontSize: fontSize*adjustsizeh, color: color),
          ),
        ),
      );}

      // ignore: non_constant_identifier_names
      Widget FilterButtonPed(){
      return GestureDetector(
        onTap: () {
          btnforped();
        },
        child: Container(
          height: height * filterBtnHeight,
          width: width * filterBtnWidth,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: btncolorPed,
                width: width * btnLineWidth,
              ),
              top: BorderSide(
                color: btncolorPed,
                width: width * btnLineWidth,
              ),
              left: BorderSide(
                color: btncolorPed,
                width: width * btnLineWidth,
              ),
              right: BorderSide(
                color: btncolorPed,
                width: width * btnLineWidth,
              ),
            ),
            color: btnsubcolorPed,
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: Text(
            "小児", style: TextStyle(fontSize: fontSize*adjustsizeh, color: btncolorPed),
          ),
        ),
      );}


    for(var i = 0; i<28; i++){
      btncolorList.add(Colors.blueAccent);
      btnsubcolorList.add(Colors.white);
      btnflagList.add(false);
    }
    List<Widget> filterButtonList = [];
    for(var i = 0; i<28; i++){
      filterButtonList.add(Filterbutton(i+1, btncolorList[i], btnsubcolorList[i], subjectTextList[i], btnflagList[i]));
    }
    filterButtonList.add(FilterButtonPed());

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar:
        PreferredSize(
         preferredSize: Size.fromHeight(height*0.06),
        child:AppBar(
        elevation: 8,
        leading:IconButton(
          icon:Icon(Icons.home_sharp, size: 24*adjustsizeh)
          ,onPressed:() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RootWidget()
                  ,maintainState:false)
          );
        },),
        centerTitle: true,
        title: Text("検索条件", style: TextStyle(fontSize: 20*adjustsizeh),),
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.close, size: 24*adjustsizeh,),
              onPressed: () => {
              Navigator.of(context).pop()
                },
            ),
          ),
        ],
      ),
    ),
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: height*0.55,
                width: width*0.98,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.indigo[700],
                      width: width*btnLineWidth,
                    ),
                  ),
                ),

                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      Text('＜カテゴリー選択＞', style: TextStyle(fontSize: 16*adjustsizeh, color: Colors.indigo[900])),
                      SizedBox(height: height*0.015,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: height*0.044,
                              width: width*0.19,
                              child:ElevatedButton(onPressed: (){
                                all();
                              },
                                child: Text('全選択', style: TextStyle(fontSize: 14*adjustsizeh, color: Colors.white)),
                                style: OutlinedButton.styleFrom(
                                    primary: Colors.lightBlue,
                                    backgroundColor: Colors.lightBlue,
                                    side: BorderSide(color: Colors.blue, width: width*btnLineWidth),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: height*0.045,
                              width: width*0.1,
                            ),
                            Container(
                              height: height*0.044,
                              width: width*0.19,
                              child:ElevatedButton(onPressed: (){
                                clear();
                              }, child: Text('クリア', style: TextStyle(fontSize: 14*adjustsizeh, color: Colors.white)),
                                style: OutlinedButton.styleFrom(
                                    primary: Colors.lightBlue,
                                    backgroundColor: Colors.lightBlue,
                                    side: BorderSide(color: Colors.blue, width: width*btnLineWidth),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    )),
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        height: height*0.44,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0),
                        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0),
                        child: Padding(
                          padding:EdgeInsets.all(MediaQuery.of(context).size.height*0),
                          child: Wrap(
                            spacing: width*0.018,
                            runSpacing: height*0.02,
                            children:filterButtonList,
                          ),
                        ),
                      ),
                    ]),),
              Container(child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(
                      height: height*0.088,
                      width: width*0.49,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.indigo[700],
                            width: width*btnLineWidth,
                          ),
                        ),
                      ),
                      child: Column(children:<Widget>[
                        Text('＜必修/必修以外＞', style: TextStyle(fontSize: 14*adjustsizeh,color: Colors.indigo[900]),),
                        SizedBox(height: height*0.012),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(hissyucol1 == Colors.blue) {
                                      hissyucol1 = Colors.white;
                                      hissyubcol1 = Colors.blue;
                                      _compulsory.add('0');
                                    } else {
                                      hissyucol1 = Colors.blue;
                                      hissyubcol1 = Colors.white;
                                      _compulsory.remove('0');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*choiceBtnHeight,
                                  width: width*choiceBtnWidth,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: hissyucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: hissyucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: hissyucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: hissyucol1,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: hissyubcol1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('必修',  style: TextStyle(fontSize: 14*adjustsizeh, color: hissyucol1),),
                                ),),
                              SizedBox(width: width*0.03),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(hissyucol2 == Colors.blue) {
                                      hissyucol2 = Colors.white;
                                      hissyubcol2 = Colors.blue;
                                      _compulsory.add('1');
                                    } else {
                                      hissyucol2 = Colors.blue;
                                      hissyubcol2 = Colors.white;
                                      _compulsory.remove('1');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*choiceBtnHeight,
                                  width: width*0.22,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: hissyucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: hissyucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: hissyucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: hissyucol2,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: hissyubcol2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('必修以外',  style: TextStyle(fontSize: 14*adjustsizeh, color: hissyucol2),),
                                ),),
                            ]),
                      ]),
                    ),
                    Container(
                      height: height*0.088,
                      width: width*0.49,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.indigo[700],
                            width: width*btnLineWidth,
                          ),
                        ),
                      ),
                      child: Column(children:<Widget>[
                        Text('＜お気に入り＞' ,style: TextStyle(fontSize: 14*adjustsizeh, color: Colors.indigo[900])),
                        SizedBox(height: height*0.012,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(favocol1 == Colors.blue) {
                                    favocol1 = Colors.white;
                                    favobcol1 = Colors.blue;
                                    _favorite.add('0');
                                  } else {
                                    favocol1 = Colors.blue;
                                    favobcol1 = Colors.white;
                                    _favorite.remove('0');
                                  }
                                });
                              },
                              child:Container(
                                height: height*choiceBtnHeight,
                                width: width*choiceBtnWidth,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:  BorderSide(
                                      color: favocol1,
                                      width: width*btnLineWidth,
                                    ),
                                    top: BorderSide(
                                      color: favocol1,
                                      width: width*btnLineWidth,
                                    ),
                                    left:  BorderSide(
                                      color: favocol1,
                                      width: width*btnLineWidth,
                                    ),
                                    right: BorderSide(
                                      color: favocol1,
                                      width: width*btnLineWidth,
                                    ),
                                  ),
                                  color: favobcol1,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Icon(Icons.star, size:20*adjustsizeh, color: favocol1,),
                                      SizedBox(width: width*0.012,),
                                      Text('有',  style: TextStyle(fontSize: 14*adjustsizeh, color: favocol1),),]),
                              ),),
                            SizedBox(width: width*0.045),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(favocol2 == Colors.blue) {
                                    favocol2 = Colors.white;
                                    favobcol2 = Colors.blue;
                                    _favorite.add('1');
                                  } else {
                                    favocol2 = Colors.blue;
                                    favobcol2 = Colors.white;
                                    _favorite.remove('1');
                                  }
                                });
                              },
                              child:Container(
                                height: height*choiceBtnHeight,
                                width: width*choiceBtnWidth,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:  BorderSide(
                                      color: favocol2,
                                      width: width*btnLineWidth,
                                    ),
                                    top: BorderSide(
                                      color: favocol2,
                                      width: width*btnLineWidth,
                                    ),
                                    left:  BorderSide(
                                      color: favocol2,
                                      width: width*btnLineWidth,
                                    ),
                                    right: BorderSide(
                                      color: favocol2,
                                      width: width*btnLineWidth,
                                    ),
                                  ),
                                  color: favobcol2,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Icon(Icons.star, size:20*adjustsizeh, color: favocol2,),
                                      SizedBox(width: width*0.012,),
                                      Text('無',  style: TextStyle(fontSize: 14*adjustsizeh, color: favocol2),),]),
                              ),),
                          ],
                        ),
                      ]),
                    ),

                  ]),),
              Container(
                height: height*0.132,
                width: width*0.98,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Container(
                        height: height*0.132,
                        width: width*0.49,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.indigo[700],
                              width: width*btnLineWidth,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜模試の正誤＞', style: TextStyle(fontSize: 14*adjustsizeh, color: Colors.indigo[900])),
                          SizedBox(height: height*0.01,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(gotoucol2 == Colors.blue && gotoucol1 == Colors.blue){
                                      gotoucol1 = Colors.white;
                                      gotoubcol1 = Colors.blue;
                                      _moshi = 0;
                                    } else if(gotoucol2 == Colors.blue && gotoucol1 == Colors.white){
                                      gotoucol1 = Colors.blue;
                                      gotoubcol1 = Colors.white;
                                    } else if(gotoucol2 == Colors.white && gotoucol1 == Colors.blue){
                                      gotoucol2 = Colors.blue;
                                      gotoubcol2 = Colors.white;
                                      gotoucol1 = Colors.white;
                                      gotoubcol1 = Colors.blue;
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*choiceBtnHeight,
                                  width: width*0.25,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: gotoucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: gotoucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: gotoucol1,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: gotoucol1,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: gotoubcol1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('全ての問題',  style: TextStyle(fontSize: 14*adjustsizeh, color: gotoucol1),),
                                ),),
                              SizedBox(height: height*0.01,),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(
                                    gotoucol1 == Colors.blue && gotoucol2 == Colors.blue) {
                                      gotoucol2 = Colors.white;
                                      gotoubcol2 = Colors.blue;
                                      _moshi = 1;
                                    } else if(gotoucol1 == Colors.blue && gotoucol2 == Colors.white) {
                                      gotoucol2 = Colors.blue;
                                      gotoubcol2 = Colors.white;
                                      _moshi = 0;
                                    } else if(gotoucol1 == Colors.white && gotoucol2 == Colors.blue) {
                                      gotoucol1 = Colors.blue;
                                      gotoubcol1 = Colors.white;
                                      gotoucol2 = Colors.white;
                                      gotoubcol2 = Colors.blue;
                                      _moshi = 1;
                                    } else {}
                                  });
                                },
                                child:Container(
                                  height: height*0.042,
                                  width: width*0.33,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: gotoucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: gotoucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: gotoucol2,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: gotoucol2,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: gotoubcol2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('間違えた問題のみ',  style: TextStyle(fontSize: 14*adjustsizeh, color: gotoucol2),),
                                ),),
                            ],
                          ),
                        ]),
                      ),

                      Container(
                        height: height*0.132,
                        width: width*0.48,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.indigo[700],
                              width: width*btnLineWidth,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜出題回＞', style: TextStyle(color: Colors.indigo[900],fontSize: 14*adjustsizeh)),
                          SizedBox(height: height*0.01,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if(kaicol1 == Colors.blue) {
                                        kaicol1 = Colors.white;
                                        kaibcol1 = Colors.blue;
                                        _period.add('1');
                                      } else {
                                        kaicol1 = Colors.blue;
                                        kaibcol1 = Colors.white;
                                        _period.remove('1');
                                      }
                                    });
                                  },
                                  child:Container(
                                    height: height*0.041,
                                    width: width*0.185,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:  BorderSide(
                                          color: kaicol1,
                                          width: width*btnLineWidth,
                                        ),
                                        top: BorderSide(
                                          color: kaicol1,
                                          width: width*btnLineWidth,
                                        ),
                                        left:  BorderSide(
                                          color: kaicol1,
                                          width: width*btnLineWidth,
                                        ),
                                        right: BorderSide(
                                          color: kaicol1,
                                          width: width*btnLineWidth,
                                        ),
                                      ),
                                      color: kaibcol1,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('第１回',  style: TextStyle(fontSize: 14*adjustsizeh, color: kaicol1),),
                                  ),),
                                SizedBox(width: width*0.03),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if(kaicol2 == Colors.blue) {
                                        kaicol2 = Colors.white;
                                        kaibcol2 = Colors.blue;
                                        _period.add('2');
                                      } else {
                                        kaicol2 = Colors.blue;
                                        kaibcol2 = Colors.white;
                                        _period.remove('2');
                                      }
                                    });
                                  },
                                  child:Container(
                                    height: height*0.041,
                                    width: width*0.185,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:  BorderSide(
                                          color: kaicol2,
                                          width: width*btnLineWidth,
                                        ),
                                        top: BorderSide(
                                          color: kaicol2,
                                          width: width*btnLineWidth,
                                        ),
                                        left:  BorderSide(
                                          color: kaicol2,
                                          width: width*btnLineWidth,
                                        ),
                                        right: BorderSide(
                                          color: kaicol2,
                                          width: width*btnLineWidth,
                                        ),
                                      ),
                                      color: kaibcol2,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('第２回',  style: TextStyle(fontSize: 14*adjustsizeh, color: kaicol2),),
                                  ),),
                              ]),
                          SizedBox(height: height*0.012,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(kaicol3 == Colors.blue) {
                                      kaicol3 = Colors.white;
                                      kaibcol3 = Colors.blue;
                                      _period.add('3');
                                    } else {
                                      kaicol3 = Colors.blue;
                                      kaibcol3 = Colors.white;
                                      _period.remove('3');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*choiceBtnHeight,
                                  width: width*0.185,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: kaicol3,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: kaicol3,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: kaicol3,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: kaicol3,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: kaibcol3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第３回',  style: TextStyle(fontSize: 14*adjustsizeh, color: kaicol3),),
                                ),),
                              SizedBox(width: width*0.03,),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(kaicol4 == Colors.blue) {
                                      kaicol4 = Colors.white;
                                      kaibcol4 = Colors.blue;
                                      _period.add('4');
                                    } else {
                                      kaicol4 = Colors.blue;
                                      kaibcol4 = Colors.white;
                                      _period.remove('4');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*choiceBtnHeight,
                                  width: width*0.185,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: kaicol4,
                                        width: width*btnLineWidth,
                                      ),
                                      top: BorderSide(
                                        color: kaicol4,
                                        width: width*btnLineWidth,
                                      ),
                                      left:  BorderSide(
                                        color: kaicol4,
                                        width: width*btnLineWidth,
                                      ),
                                      right: BorderSide(
                                        color: kaicol4,
                                        width: width*btnLineWidth,
                                      ),
                                    ),
                                    color: kaibcol4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第４回',  style: TextStyle(fontSize: 14*adjustsizeh, color: kaicol4),),
                                ),),],
                          ),
                        ]),
                      ),
                    ]),),
              Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: height*0.065,
                    width: width*0.44,
                    child: ElevatedButton(onPressed: () {
                      filtercondition1();
                    },
                     // style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                       // borderRadius: BorderRadius.circular(10),
                     // ),),
                      child: Text('検索', style: TextStyle(fontSize: 18*adjustsizeh),),),),
                ],
              ),
              ),
            ],
          )
      ),
    );
  }
}