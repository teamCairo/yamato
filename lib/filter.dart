import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/result.dart';
import 'button.dart';


class CategoryFilter {
  const CategoryFilter(this.name, this.num);
  final String name;
  final int num;
}

class Filter extends StatefulWidget {


  method(int n) => createState().addtolist(n);
  method1(int m) => createState().removelist(m);
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  final List<CategoryFilter> _genre = <CategoryFilter>[
    CategoryFilter("循環",1),
    CategoryFilter("呼吸",2),
    CategoryFilter("消化",3),
    CategoryFilter("腎臓",4),
    CategoryFilter("内代",5),
    CategoryFilter("神経",6),
    CategoryFilter("血液",7),
    CategoryFilter("免疫",8),
    CategoryFilter("感染",9),
    CategoryFilter("中毒",10),
    CategoryFilter("救急",11),
    CategoryFilter("小児",12),
    CategoryFilter("産科",13),
    CategoryFilter("婦人",14),
    CategoryFilter("泌尿",15),
    CategoryFilter("眼科",16),
    CategoryFilter("耳鼻",17),
    CategoryFilter("皮膚",18),
    CategoryFilter("精神",19),
    CategoryFilter("整形",20),
    CategoryFilter("麻酔",21),
    CategoryFilter("放射",22),
    CategoryFilter("公衛",23),
    CategoryFilter("医総",24),
    CategoryFilter("植物",25),
    CategoryFilter("動物",26),
    CategoryFilter("人類",27),
    CategoryFilter("細胞",28),
    CategoryFilter('適当',29),
    CategoryFilter('参考',30),
   // CategoryFilter('仮置'),
   // CategoryFilter('一応'),
    //CategoryFilter('何某'),
   // CategoryFilter('空白'),
    //CategoryFilter('余白'),


  ];
  List<String> _filters = <String>[];
  List<String> _hissyu = <String>[];
  List<String> _clip = <String>[];
  List<String> _kai = <String>[];
  int _gotou = 0;
  List _joken =[];
  List kailist2 =[];
  List codelist2 =[];
  List catlist2 =[];
  List<bool> moshi2 =[];
  List hitsu2 =[];
  List<String> qtext2 =[];
  List<int> senko = [2,4,7,8];
  List<int> senko3 = [10,17,2,5,3];
  Color button_c = Colors.white;
  Color button_bc = Colors.indigoAccent.shade700;


  void all(){
    for(final CategoryFilter category in _genre){
    setState(() {
      _filters.add(category.name);
      }
            );}}

  void all1(){
    for(final CategoryFilter category in _genre){
     // setState(() {
        //Button(category.name, b).method();
        addtolist(category.num);
        //Button(category.name, category.num).method();
   //   });
    }
             }

  void clear(){
   setState(() {
      _filters.removeRange(0, _filters.length);
    }
    );}

  void clear1() {
    for(final CategoryFilter category in _genre) {
      //setState(() {
        removelist(category.num);
       // Button(category.name, category.num).method1();
    //  });
    }
  }

   Future filcon2(MyDatabase db) async {
     List<int> _kai1 = _kai.map(int.parse).toList();
     List<int> _hissyu1 = _hissyu.map(int.parse).toList();
     List<int> _clip1 = _clip.map(int.parse).toList();
            _joken = await db.selectQuestionFilesForFilter(senko3, _hissyu1, _kai1, _clip1, _gotou);
              print(_joken);
   }

   Future filcon1() async{
        MyDatabase db = MyDatabase();
        await filcon2(db);
        if (_joken == null) {
    } else {
      for(var i = 0; i < _joken.length; i++) {
        kailist2.add(_joken[i].period);
        codelist2.add(_joken[i].questionNo);
        hitsu2.add(_joken[i].compulsoryType);
        catlist2.add(_joken[i].subjectId);
        moshi2.add(_joken[i].correctType1);
        qtext2.add(_joken[i].questionText);}
      } }


 void filcon() async {
    await filcon1();
    if(moshi2 == null){} else{
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Result(_joken ,qtext2, kailist2, codelist2,catlist2, hitsu2, moshi2)),
        );
      });
    }
 }

 void addtolist(int n) {
    _filters.add(n.toString());
 }
 void removelist(int m){
    _filters.remove(m.toString());
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
            selected: _filters.contains(category.name),
            onSelected: (bool value) {
              setState(() {
                if (value) {
                  button_c = Colors.indigoAccent.shade700;
                  button_bc = Colors.white;
                  _filters.add(category.name);
                } else {
                  button_c = Colors.white;
                  button_bc = Colors.indigoAccent.shade700;
                  _filters.removeWhere((String name) {
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


  Color _color = Colors.blue;
  Color _bcolor = Colors.white;
  Color _color1 = Colors.blue;
  Color _bcolor1 = Colors.white;
  Color _color2 = Colors.blue;
  Color _bcolor2 = Colors.white;
  Color _color3 = Colors.blue;
  Color _bcolor3 = Colors.white;
  Color _color4 = Colors.blue;
  Color _bcolor4 = Colors.white;
  Color _color5 = Colors.blue;
  Color _bcolor5 = Colors.white;
  Color _color6 = Colors.blue;
  Color _bcolor6 = Colors.white;
  Color _color7 = Colors.blue;
  Color _bcolor7 = Colors.white;
  Color _color8 = Colors.blue;
  Color _bcolor8 = Colors.white;
  Color _color9 = Colors.blue;
  Color _bcolor9 = Colors.white;






  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


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
                            all1();
                          //  setState(() {                              _filters.addAll()});
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
                            clear1();
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
                              spacing: width*0.015,
                              //0.02
                              //25.0
                              runSpacing: height*0.015,
                              //0.027
                              //3.5
                              children: <Widget>[
                                Button("循環", 1),
                                Button( "呼吸",2),
                                Button( "消化",3),
                                Button( "腎臓",4),
                                Button( "内代",5),
                                Button( "神経",6),
                                Button( "麻酔",7),
                                Button( "整形",8),
                                Button( "精神",9),
                                Button( "皮膚",10),
                                Button( "眼科",11),
                                Button( "耳鼻",12),
                                Button( "泌尿",13),
                                Button( "婦人",14),
                                Button( "産科",15),
                                Button( "小児",16),
                                Button( "救急",17),
                                Button( "中毒",18),
                                Button( "感染",19),
                                Button( "血液",20),
                                Button( "免疫",21),
                                Button( "放射",22),
                                Button( "公衛",23),
                                Button( "医総",24),
                                Button( "植物",25),
                                Button( "動物",26),
                                Button( "人類",27),
                                Button( "細胞",28),
                                Button('適当',29),
                                Button('参考',30),
                               // Button('仮置',31),
                               // Button('一応',32),
                                //Button('何某',33),
                               // Button('空白',34),
                              //  Button('余白',35),

                              ],
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
                              if(_color == Colors.blue) {
                                _color = Colors.white;
                                _bcolor = Colors.blue;
                                _hissyu.add('0');
                              } else {
                                _color = Colors.blue;
                                _bcolor = Colors.white;
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
                             color: _color,
                                width: width*0.0025,
                              ),
                              top: BorderSide(
                                color: _color,
                                width: width*0.0025,
                              ),
                              left:  BorderSide(
                                color: _color,
                                width: width*0.0025,
                              ),
                              right: BorderSide(
                                color: _color,
                                width: width*0.0025,
                              ),
                            ),
                            color: _bcolor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: Text('必修',  style: TextStyle(fontSize: 14, color: _color),),
                        ),),
                        SizedBox(width: width*0.03),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if(_color1 == Colors.blue) {
                                _color1 = Colors.white;
                                _bcolor1 = Colors.blue;
                                _hissyu.add('1');
                              } else {
                                _color1 = Colors.blue;
                                _bcolor1 = Colors.white;
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
                                  color: _color1,
                                  width: width*0.0025,
                                ),
                                top: BorderSide(
                                  color: _color1,
                                  width: width*0.0025,
                                ),
                                left:  BorderSide(
                                  color: _color1,
                                  width: width*0.0025,
                                ),
                                right: BorderSide(
                                  color: _color1,
                                  width: width*0.0025,
                                ),
                              ),
                              color: _bcolor1,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: Text('必修以外',  style: TextStyle(fontSize: 14, color: _color1),),
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
                          Text('＜クリップ＞' ,style: TextStyle(color: Colors.indigo[900])),
                          SizedBox(height: height*0.012,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(_color2 == Colors.blue) {
                                      _color2 = Colors.white;
                                      _bcolor2 = Colors.blue;
                                      _clip.add('0');
                                    } else {
                                      _color2 = Colors.blue;
                                      _bcolor2 = Colors.white;
                                      _clip.remove('0');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.17,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color2,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color2,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color2,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color2,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor2,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                    Icon(Icons.star, size:20, color: _color2,),
                                    SizedBox(width: width*0.012,),
                                    Text('有',  style: TextStyle(fontSize: 14, color: _color2),),]),
                                ),),
                              SizedBox(width: width*0.045),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(_color3 == Colors.blue) {
                                      _color3 = Colors.white;
                                      _bcolor3 = Colors.blue;
                                      _clip.add('1');
                                    } else {
                                      _color3 = Colors.blue;
                                      _bcolor3 = Colors.white;
                                      _clip.remove('1');
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.17,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color3,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color3,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color3,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color3,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor3,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                        Icon(Icons.star, size:20, color: _color3,),
                                        SizedBox(width: width*0.012,),
                                        Text('無',  style: TextStyle(fontSize: 14, color: _color3),),]),
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
                                    if(_color5 == Colors.blue && _color4 == Colors.blue){
                                      _color4 = Colors.white;
                                      _bcolor4 = Colors.blue;
                                      _gotou = 0;
                                    } else if(_color5 == Colors.blue && _color4 == Colors.white){
                                     _color4 = Colors.blue;
                                      _bcolor4 = Colors.white;
                                    } else if(_color5 == Colors.white && _color4 == Colors.blue){
                                      _color5 = Colors.blue;
                                      _bcolor5 = Colors.white;
                                      _color4 = Colors.white;
                                      _bcolor4 = Colors.blue;
                                    }
                                  });
                                },
                                child:Container(
                                  height: height*0.04,
                                  width: width*0.25,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color4,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color4,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color4,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color4,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor4,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('全ての問題',  style: TextStyle(fontSize: 14, color: _color4),),
                                ),),
                              SizedBox(height: height*0.01,),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(//_isDisabled == false
                                       _color4 == Colors.blue && _color5 == Colors.blue) {
                                      _color5 = Colors.white;
                                      _bcolor5 = Colors.blue;
                                      _gotou = 1;
                                    } else if(_color4 == Colors.blue && _color5 == Colors.white) {
                                      _color5 = Colors.blue;
                                      _bcolor5 = Colors.white;
                                      _gotou = 0;
                                    } else if(_color4 == Colors.white && _color5 == Colors.blue) {
                                      _color4 = Colors.blue;
                                      _bcolor4 = Colors.white;
                                      _color5 = Colors.white;
                                      _bcolor5 = Colors.blue;
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
                                        color: _color5,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color5,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color5,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color5,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor5,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('間違えた問題のみ',  style: TextStyle(fontSize: 14, color: _color5),),
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
                                    if(_color6 == Colors.blue) {
                                      _color6 = Colors.white;
                                      _bcolor6 = Colors.blue;
                                      _kai.add('1');
                                    } else {
                                      _color6 = Colors.blue;
                                      _bcolor6 = Colors.white;
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
                                        color: _color6,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color6,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color6,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color6,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor6,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第１回',  style: TextStyle(fontSize: 14, color: _color6),),
                                ),),
                              SizedBox(width: width*0.03),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if(_color7 == Colors.blue) {
                                      _color7 = Colors.white;
                                      _bcolor7 = Colors.blue;
                                      _kai.add('2');
                                    } else {
                                      _color7 = Colors.blue;
                                      _bcolor7 = Colors.white;
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
                                        color: _color7,
                                        width: width*0.0025,
                                      ),
                                      top: BorderSide(
                                        color: _color7,
                                        width: width*0.0025,
                                      ),
                                      left:  BorderSide(
                                        color: _color7,
                                        width: width*0.0025,
                                      ),
                                      right: BorderSide(
                                        color: _color7,
                                        width: width*0.0025,
                                      ),
                                    ),
                                    color: _bcolor7,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第２回',  style: TextStyle(fontSize: 14, color: _color7),),
                                ),),
        ]),
                              SizedBox(height: height*0.012,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if(_color8 == Colors.blue) {
                                          _color8 = Colors.white;
                                          _bcolor8 = Colors.blue;
                                          _kai.add('3');
                                        } else {
                                          _color8 = Colors.blue;
                                          _bcolor8 = Colors.white;
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
                                            color: _color8,
                                            width: width*0.0025,
                                          ),
                                          top: BorderSide(
                                            color: _color8,
                                            width: width*0.0025,
                                          ),
                                          left:  BorderSide(
                                            color: _color8,
                                            width: width*0.0025,
                                          ),
                                          right: BorderSide(
                                            color: _color8,
                                            width: width*0.0025,
                                          ),
                                        ),
                                        color: _bcolor8,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text('第３回',  style: TextStyle(fontSize: 14, color: _color8),),
                                    ),),
                                 SizedBox(width: width*0.03,),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if(_color9 == Colors.blue) {
                                          _color9 = Colors.white;
                                          _bcolor9 = Colors.blue;
                                          _kai.add('4');
                                        } else {
                                          _color9 = Colors.blue;
                                          _bcolor9 = Colors.white;
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
                                            color: _color9,
                                            width: width*0.0025,
                                          ),
                                          top: BorderSide(
                                            color: _color9,
                                            width: width*0.0025,
                                          ),
                                          left:  BorderSide(
                                            color: _color9,
                                            width: width*0.0025,
                                          ),
                                          right: BorderSide(
                                            color: _color9,
                                            width: width*0.0025,
                                          ),
                                        ),
                                        color: _bcolor9,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text('第４回',  style: TextStyle(fontSize: 14, color: _color9),),
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
                        filcon();
                      },
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
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