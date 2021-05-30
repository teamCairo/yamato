import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/result.dart';


class CategoryFilter {
  const CategoryFilter(this.name, this.num);
  final String name;
  final int num;
}

class Filter extends StatefulWidget {

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  final List<CategoryFilter> _genre = <CategoryFilter>[
    CategoryFilter("循環",1,),
    CategoryFilter("呼吸",2,),
    CategoryFilter("消化",3,),
    CategoryFilter("腎臓",4,),
    CategoryFilter("内代",5,),
    CategoryFilter("神経",6,),
    CategoryFilter("血液",7,),
    CategoryFilter("免疫",8,),
    CategoryFilter("感染",9,),
    CategoryFilter("中毒",10),
    CategoryFilter("救急",11),
    CategoryFilter("小児",12,),
    CategoryFilter("産科",13,),
    CategoryFilter("婦人",14,),
    CategoryFilter("泌尿",15,),
    CategoryFilter("眼科",16,),
    CategoryFilter("耳鼻",17,),
    CategoryFilter("皮膚",18,),
    CategoryFilter("精神",19,),
    CategoryFilter("整形",20,),
    CategoryFilter("麻酔",21,),
    CategoryFilter("放射",22,),
    CategoryFilter("公衛",23,),
    CategoryFilter("医総",24,),
    CategoryFilter("植物",25,),
    CategoryFilter("動物",26,),
    CategoryFilter("人類",27,),
    CategoryFilter("細胞",28,),
    CategoryFilter('適当',29,),
    CategoryFilter('参考',30,),
  ];
  List<String> _catfilters = <String>[];
  List<String> _hissyu = <String>[];
  List<String> _favorite = <String>[];
  List<String> _kai = <String>[];
  int _gotou = 0;
  List _questions =[];
  List kailist2 =[];
  List codelist2 =[];
  List catlist2 =[];
  List<int> moshilist2 =[];
  List hissyulist2 =[];
  List<String> qtextlist2 =[];
  Color button_c = Colors.white;
  Color button_bc = Colors.indigoAccent.shade700;
  List<Color> btncList = [];
  List<Color> btnbcList = [];
  List<bool> btnflagList = [];
  List<String> catTextList =
  ["","産科","婦人科","呼吸","循環","消化","肝胆","血液","腎臓","神経","内分","代謝",
    "アレ","免疫","感染","中毒","救急","複合","小複","精神","皮膚","眼科","耳鼻",
    "泌尿","整形","放射","麻酔","公衆","一般","小児"];


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


  void all(){
    for(final CategoryFilter category in _genre){
      if(_catfilters.contains(category.num.toString()) == false) {
        _catfilters.add(category.num.toString());}else{}
      for(var i =0; i<29; i++) {
        setState(() {
          btncList[i] = Colors.white;
          btnbcList[i] = Colors.blueAccent;
          btnflagList[i] = true;
        });
      }
      print(_catfilters);
    }}

  void clear() {
    _catfilters.removeRange(0, _catfilters.length);
    for(var i = 0; i<29; i++) {
      setState(() {
        btncList[i] = Colors.blueAccent;
        btnbcList[i] = Colors.white;
        btnflagList[i] = false;
      });
    }
    print(_catfilters);
  }

  void filtercondition() async {
    await filtercondition1();
    if(moshilist2 == null){} else{
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Result(
              4, _questions, null, null, null, null
          )),
        );
      });
    }
  }

  Future filtercondition1() async{
    MyDatabase db = MyDatabase();
    await filtercondition2(db);
    if (_questions == null) {
    } else {
      for(var i = 0; i < _questions.length; i++) {
        kailist2.add(_questions[i].period);
        codelist2.add(_questions[i].questionNo);
        hissyulist2.add(_questions[i].compulsoryType);
        catlist2.add(_questions[i].subjectId);
        moshilist2.add(_questions[i].correctType1);
        qtextlist2.add(_questions[i].questionText);}
    } }

  Future filtercondition2(MyDatabase db) async {
    List<int> _kai1 = _kai.map(int.parse).toList();
    List<int> _hissyu1 = _hissyu.map(int.parse).toList();
    List<int> _clip1 = _favorite.map(int.parse).toList();
    List<int> _filters1 = _catfilters.map(int.parse).toList();
    _questions = await db.selectQuestionFilesForFilter(
        _filters1, _hissyu1, _kai1, _clip1, _gotou);
    print('dataget');
    print(_questions);
  }



  void btnonoff(int n){
    setState(() {
      if(btncList[n] == Colors.blueAccent){
        btncList[n] = Colors.white;
        btnbcList[n] = Colors.blueAccent;
        btnflagList[n] = true;
        if(_catfilters.contains(n.toString()) == false){
          _catfilters.add(n.toString());
        }else{}
      }else if(btncList[n] == Colors.white){
        btncList[n] = Colors.blueAccent;
        btnbcList[n] = Colors.white;
        _catfilters.remove(n.toString());
        btnflagList[n] = false;
      }else{}});
  }


  Iterable<Widget> get categoryWidgets sync* {
    for (final CategoryFilter category  in _genre) {
      yield Padding(
        padding: EdgeInsets.all(4),

        child:Transform(
          transform: Matrix4.identity()..scale(1.2),
          //1.3
          child: FilterChip(
            showCheckmark: false,
            backgroundColor: button_c,
            selectedColor: button_bc,
            //selectedShadowColor: Colors.yellow,
            shape: StadiumBorder(
              side: BorderSide(
                color: button_bc,
                width: 1,
              ),
            ),
            label: Text(category.name, style: TextStyle(
              color: button_bc,
            ),
            ),
            selected: _catfilters.contains(category.name),
            onSelected: (bool value) {
              setState(() {
                if (value) {
                  button_c = Colors.blueAccent;
                  button_bc = Colors.white;
                  _catfilters.add(category.name);
                } else {
                  button_c = Colors.white;
                  button_bc = Colors.blueAccent;
                  _catfilters.removeWhere((String name) {
                    return name == category.name;
                  });
                }
              });
            },
          ),
        ),
      );
    }
  }






  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Widget Catbutton (
        int num, Color col, Color bcol, String text, bool flag
        ) {
      return GestureDetector(
        onTap: () {
          btnonoff(num);
        },
        child: Container(
          height: height * 0.046,
          //0.046
          //40
          width: width * 0.16,
          //0.16
          //0.18
          //70
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: col,
                width: width * 0.0025,
              ),
              top: BorderSide(
                color: col,
                width: width * 0.0025,
              ),
              left: BorderSide(
                color: col,
                width: width * 0.0025,
              ),
              right: BorderSide(
                color: col,
                width: width * 0.0025,
              ),
            ),
            color: bcol,
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: Text(
            text, style: TextStyle(fontSize: 15, color: col),
          ),
        ),
      );}

    for(var i = 0; i<30; i++){
      btncList.add(Colors.blueAccent);
      btnbcList.add(Colors.white);
      btnflagList.add(false);
    }
    List<Widget> catButtonList = [];

    for(var i = 1; i<30; i++){
      catButtonList.add(Catbutton(i, btncList[i], btnbcList[i], catTextList[i], btnflagList[i]));
    }


    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        elevation: 8,
        leading:Icon(Icons.home_sharp),
        title: Text("検索条件"),
        backgroundColor: Colors.blueAccent,
        actions: [
        ],
      ),
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                //constraints: BoxConstraints.expand(),
                height: height*0.55,
                width: width*0.98,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.indigo[700],
                      width: width*0.0025,
                    ),
                  ),
                ),

                child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      Text('＜カテゴリー選択＞', style: TextStyle(fontSize: 16, color: Colors.indigo[900])),
                      SizedBox(height: height*0.015,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: height*0.044,
                              width: width*0.19,
                              child:ElevatedButton(onPressed: (){
                                //TODO 全選択ボタンの中身実装
                                all();
                              },
                                child: Text('全選択', style: TextStyle(fontSize: 14, color: Colors.white)),
                                style: OutlinedButton.styleFrom(
                                    primary: Colors.lightBlue,
                                    backgroundColor: Colors.lightBlue,
                                    side: BorderSide(color: Colors.blue, width: width*0.0025),
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
                                //TODO クリアボタンの中身実装
                                clear();
                              }, child: Text('クリア', style: TextStyle(fontSize: 14, color: Colors.white)),
                                style: OutlinedButton.styleFrom(
                                    primary: Colors.lightBlue,
                                    backgroundColor: Colors.lightBlue,
                                    side: BorderSide(color: Colors.blue, width: width*0.0025),
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
                        //TODO MediaQueryの値
                        //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0),
                        //margin: EdgeInsets.fromLTRB(14, 20, 14, 0),
                        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0),
                        child: Padding(//padding: EdgeInsets.all(0),
                          padding:EdgeInsets.all(MediaQuery.of(context).size.height*0),
                          child: Wrap(
                            spacing: width*0.018,
                            //0.02
                            //25.0
                            runSpacing: height*0.018,
                            //0.027
                            //3.5
                            children:catButtonList,
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
                            width: width*0.0025,
                          ),
                        ),
                      ),
                      child: Column(children:<Widget>[
                        Text('＜必修/必修以外＞', style: TextStyle(color: Colors.indigo[900]),),
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
                                      _hissyu.add('0');
                                    } else {
                                      hissyucol1 = Colors.blue;
                                      hissyubcol1 = Colors.white;
                                      _hissyu.remove('0');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.17,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: hissyucol1,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: hissyucol1,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: hissyucol1,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: hissyucol1,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: hissyubcol1,
                                    //TODO 丸角四角ボタンへ変更
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('必修',  style: TextStyle(fontSize: 14, color: hissyucol1),),
                                ),),
                              SizedBox(width: width*0.03),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(hissyucol2 == Colors.blue) {
                                      hissyucol2 = Colors.white;
                                      hissyubcol2 = Colors.blue;
                                      _hissyu.add('1');
                                    } else {
                                      hissyucol2 = Colors.blue;
                                      hissyubcol2 = Colors.white;
                                      _hissyu.remove('1');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.22,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: hissyucol2,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: hissyucol2,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: hissyucol2,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: hissyucol2,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: hissyubcol2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('必修以外',  style: TextStyle(fontSize: 14, color: hissyucol2),),
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
                            width: width*0.0025,
                          ),
                        ),
                      ),
                      child: Column(children:<Widget>[
                        Text('＜お気に入り＞' ,style: TextStyle(color: Colors.indigo[900])),
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
                                height: height*0.04,
                                width: width*0.17,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:  BorderSide(
                                      color: favocol1,
                                      width: width*0.0025,
                                    ),
                                    top: BorderSide(
                                      color: favocol1,
                                      width: width*0.0025,
                                    ),
                                    left:  BorderSide(
                                      color: favocol1,
                                      width: width*0.0025,
                                    ),
                                    right: BorderSide(
                                      color: favocol1,
                                      width: width*0.0025,
                                    ),
                                  ),
                                  color: favobcol1,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Icon(Icons.star, size:20, color: favocol1,),
                                      SizedBox(width: width*0.012,),
                                      Text('有',  style: TextStyle(fontSize: 14, color: favocol1),),]),
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
                                height: height*0.04,
                                width: width*0.17,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:  BorderSide(
                                      color: favocol2,
                                      width: width*0.0025,
                                    ),
                                    top: BorderSide(
                                      color: favocol2,
                                      width: width*0.0025,
                                    ),
                                    left:  BorderSide(
                                      color: favocol2,
                                      width: width*0.0025,
                                    ),
                                    right: BorderSide(
                                      color: favocol2,
                                      width: width*0.0025,
                                    ),
                                  ),
                                  color: favobcol2,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget> [
                                      Icon(Icons.star, size:20, color: favocol2,),
                                      SizedBox(width: width*0.012,),
                                      Text('無',  style: TextStyle(fontSize: 14, color: favocol2),),]),
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
                              width: width*0.0025,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜模試の正誤＞', style: TextStyle(color: Colors.indigo[900])),
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
                                      _gotou = 0;
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
                                  height: height*0.04,
                                  width: width*0.25,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: gotoucol1,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: gotoucol1,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: gotoucol1,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: gotoucol1,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: gotoubcol1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('全ての問題',  style: TextStyle(fontSize: 14, color: gotoucol1),),
                                ),),
                              SizedBox(height: height*0.01,),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(//_isDisabled == false
                                    gotoucol1 == Colors.blue && gotoucol2 == Colors.blue) {
                                      gotoucol2 = Colors.white;
                                      gotoubcol2 = Colors.blue;
                                      _gotou = 1;
                                    } else if(gotoucol1 == Colors.blue && gotoucol2 == Colors.white) {
                                      gotoucol2 = Colors.blue;
                                      gotoubcol2 = Colors.white;
                                      _gotou = 0;
                                    } else if(gotoucol1 == Colors.white && gotoucol2 == Colors.blue) {
                                      gotoucol1 = Colors.blue;
                                      gotoubcol1 = Colors.white;
                                      gotoucol2 = Colors.white;
                                      gotoubcol2 = Colors.blue;
                                      _gotou = 1;
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
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: gotoucol2,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: gotoucol2,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: gotoucol2,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: gotoubcol2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('間違えた問題のみ',  style: TextStyle(fontSize: 14, color: gotoucol2),),
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
                              width: width*0.0025,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜出題回＞', style: TextStyle(color: Colors.indigo[900])),
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
                                        _kai.add('1');
                                      } else {
                                        kaicol1 = Colors.blue;
                                        kaibcol1 = Colors.white;
                                        _kai.remove('1');
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
                                          width: width*0.0025,
                                        ),
                                        top: BorderSide(
                                          color: kaicol1,
                                          width: width*0.0025,
                                        ),
                                        left:  BorderSide(
                                          color: kaicol1,
                                          width: width*0.0025,
                                        ),
                                        right: BorderSide(
                                          color: kaicol1,
                                          width: width*0.0025,
                                        ),
                                      ),
                                      color: kaibcol1,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('第１回',  style: TextStyle(fontSize: 14, color: kaicol1),),
                                  ),),
                                SizedBox(width: width*0.03),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if(kaicol2 == Colors.blue) {
                                        kaicol2 = Colors.white;
                                        kaibcol2 = Colors.blue;
                                        _kai.add('2');
                                      } else {
                                        kaicol2 = Colors.blue;
                                        kaibcol2 = Colors.white;
                                        _kai.remove('2');
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
                                          width: width*0.0025,
                                        ),
                                        top: BorderSide(
                                          color: kaicol2,
                                          width: width*0.0025,
                                        ),
                                        left:  BorderSide(
                                          color: kaicol2,
                                          width: width*0.0025,
                                        ),
                                        right: BorderSide(
                                          color: kaicol2,
                                          width: width*0.0025,
                                        ),
                                      ),
                                      color: kaibcol2,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('第２回',  style: TextStyle(fontSize: 14, color: kaicol2),),
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
                                      _kai.add('3');
                                    } else {
                                      kaicol3 = Colors.blue;
                                      kaibcol3 = Colors.white;
                                      _kai.remove('3');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.185,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: kaicol3,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: kaicol3,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: kaicol3,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: kaicol3,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: kaibcol3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第３回',  style: TextStyle(fontSize: 14, color: kaicol3),),
                                ),),
                              SizedBox(width: width*0.03,),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(kaicol4 == Colors.blue) {
                                      kaicol4 = Colors.white;
                                      kaibcol4 = Colors.blue;
                                      _kai.add('4');
                                    } else {
                                      kaicol4 = Colors.blue;
                                      kaibcol4 = Colors.white;
                                      _kai.remove('4');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.185,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: kaicol4,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: kaicol4,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: kaicol4,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: kaicol4,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: kaibcol4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第４回',  style: TextStyle(fontSize: 14, color: kaicol4),),
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
                      filtercondition();
                    },
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),),
                      child: Text('検索', style: TextStyle(fontSize: 18),),),),
                ],
              ),
              ),
            ],
          )
      ),
    );
  }
}