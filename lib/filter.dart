import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/result.dart';
import 'button.dart';


class CategoryFilter {
  const CategoryFilter(this.name);
  final String name;
}

class Filter extends StatefulWidget {

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  final List<CategoryFilter> _genre = <CategoryFilter>[
    CategoryFilter("循環",),
    CategoryFilter("呼吸",),
    CategoryFilter("消化",),
    CategoryFilter("腎臓",),
    CategoryFilter("内代",),
    CategoryFilter("神経",),
    CategoryFilter("血液",),
    CategoryFilter("免疫",),
    CategoryFilter("感染",),
    CategoryFilter("中毒",),
    CategoryFilter("救急",),
    CategoryFilter("小児",),
    CategoryFilter("産科",),
    CategoryFilter("婦人",),
    CategoryFilter("泌尿",),
    CategoryFilter("眼科",),
    CategoryFilter("耳鼻",),
    CategoryFilter("皮膚",),
    CategoryFilter("精神",),
    CategoryFilter("整形",),
    CategoryFilter("麻酔",),
    CategoryFilter("放射",),
    CategoryFilter("公衛",),
    CategoryFilter("医総",),
    CategoryFilter("植物"),
    CategoryFilter("動物"),
    CategoryFilter("人類"),
    CategoryFilter("細胞"),

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
   // for(var i =1; i<40; i++){
    //  _ButtonState.activateButton();
   // }
             }

  void clear(){
   setState(() {
      _filters.removeRange(0, _filters.length);
    }
    );}

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
                width: 1.0,
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
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.indigo[700],
                      width: 1,
                    ),
                  ),
                ),

                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget>[
                  Text('＜カテゴリー選択＞', style: TextStyle(fontSize: 16, color: Colors.indigo[900])),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 80,
                          child:ElevatedButton(onPressed: (){
                            all();
                          //  setState(() {                              _filters.addAll()});
                            },
                            child: Text('全選択', style: TextStyle(fontSize: 14, color: Colors.white)),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.lightBlue,
                        backgroundColor: Colors.lightBlue,
                        side: BorderSide(color: Colors.blue, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                      ),
                ),
                        SizedBox(
                          height: 40,
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          child:ElevatedButton(onPressed: (){
                            clear();
                          }, child: Text('クリア', style: TextStyle(fontSize: 14, color: Colors.white)),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.lightBlue,
                              backgroundColor: Colors.lightBlue,
                              side: BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),),
                      ],
                    ),
                  ),
                        Container(
                          height: 400,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          margin: EdgeInsets.fromLTRB(14, 20, 14, 0),

                          child: Padding(padding: EdgeInsets.all(0),
                            child: Wrap(
                              spacing: 25.0,
                              //25.0
                              runSpacing: 14,
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

                              ],
                            ),
                          ),
                        ),
                ]),),
                Container(child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                  Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.indigo[700],
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(children:<Widget>[
                    Text('＜必修/必修以外＞', style: TextStyle(color: Colors.indigo[900]),),
                    SizedBox(height: 10),
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
                          height: 37,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:  BorderSide(
                             color: _color,
                                width: 1,
                              ),
                              top: BorderSide(
                                color: _color,
                                width: 1,
                              ),
                              left:  BorderSide(
                                color: _color,
                                width: 1,
                              ),
                              right: BorderSide(
                                color: _color,
                                width: 1,
                              ),
                            ),
                            color: _bcolor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: Text('必修',  style: TextStyle(fontSize: 14, color: _color),),
                        ),),
                        SizedBox(width: 10),
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
                            height: 37,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:  BorderSide(
                                  color: _color1,
                                  width: 1,
                                ),
                                top: BorderSide(
                                  color: _color1,
                                  width: 1,
                                ),
                                left:  BorderSide(
                                  color: _color1,
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: _color1,
                                  width: 1,
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
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.indigo[700],
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜クリップ＞' ,style: TextStyle(color: Colors.indigo[900])),
                          SizedBox(height: 10,),
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
                                  height: 37,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color2,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color2,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color2,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color2,
                                        width: 1,
                                      ),
                                    ),
                                    color: _bcolor2,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                    Icon(Icons.star, size:20, color: _color2,),
                                    SizedBox(width: 5,),
                                    Text('有',  style: TextStyle(fontSize: 14, color: _color2),),]),
                                ),),
                              SizedBox(width: 20),
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
                                  height: 37,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color3,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color3,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color3,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color3,
                                        width: 1,
                                      ),
                                    ),
                                    color: _bcolor3,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget> [
                                        Icon(Icons.star, size:20, color: _color3,),
                                        SizedBox(width: 5,),
                                        Text('無',  style: TextStyle(fontSize: 14, color: _color3),),]),
                                ),),
                            ],
                          ),
                        ]),
                      ),

                ]),),
                Container(
                  height: 120,
                  width: 400,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[

                      Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.indigo[700],
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜模試の正誤＞', style: TextStyle(color: Colors.indigo[900])),
                          SizedBox(height: 10,),
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
                                  height: 37,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color4,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color4,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color4,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color4,
                                        width: 1,
                                      ),
                                    ),
                                    color: _bcolor4,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('全ての問題',  style: TextStyle(fontSize: 14, color: _color4),),
                                ),),
                              SizedBox(height: 10,),

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
                                  height: 37,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color5,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color5,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color5,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color5,
                                        width: 1,
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
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.indigo[700],
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(children:<Widget>[
                          Text('＜出題回＞', style: TextStyle(color: Colors.indigo[900])),
                          SizedBox(height: 10,),
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
                                  height: 37,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color6,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color6,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color6,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color6,
                                        width: 1,
                                      ),
                                    ),
                                    color: _bcolor6,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第１回',  style: TextStyle(fontSize: 14, color: _color6),),
                                ),),
                              SizedBox(width: 5),
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
                                  height: 37,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom:  BorderSide(
                                        color: _color7,
                                        width: 1,
                                      ),
                                      top: BorderSide(
                                        color: _color7,
                                        width: 1,
                                      ),
                                      left:  BorderSide(
                                        color: _color7,
                                        width: 1,
                                      ),
                                      right: BorderSide(
                                        color: _color7,
                                        width: 1,
                                      ),
                                    ),
                                    color: _bcolor7,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('第２回',  style: TextStyle(fontSize: 14, color: _color7),),
                                ),),
        ]),
                              SizedBox(height: 10,),
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
                                      height: 37,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom:  BorderSide(
                                            color: _color8,
                                            width: 1,
                                          ),
                                          top: BorderSide(
                                            color: _color8,
                                            width: 1,
                                          ),
                                          left:  BorderSide(
                                            color: _color8,
                                            width: 1,
                                          ),
                                          right: BorderSide(
                                            color: _color8,
                                            width: 1,
                                          ),
                                        ),
                                        color: _bcolor8,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text('第３回',  style: TextStyle(fontSize: 14, color: _color8),),
                                    ),),
                                 SizedBox(width: 5,),
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
                                      height: 37,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom:  BorderSide(
                                            color: _color9,
                                            width: 1,
                                          ),
                                          top: BorderSide(
                                            color: _color9,
                                            width: 1,
                                          ),
                                          left:  BorderSide(
                                            color: _color9,
                                            width: 1,
                                          ),
                                          right: BorderSide(
                                            color: _color9,
                                            width: 1,
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
                      height: 60,
                      width: 180,
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