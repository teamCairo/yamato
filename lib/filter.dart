
import 'package:flutter/material.dart';

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
    const CategoryFilter("循環",),
    const CategoryFilter("呼吸",),
    const CategoryFilter("消化",),
    const CategoryFilter("腎臓",),
    const CategoryFilter("内代",),
    const CategoryFilter("神経",),
    const CategoryFilter("血液",),
    const CategoryFilter("免疫",),
    const CategoryFilter("感染",),
    const CategoryFilter("中毒",),
    const CategoryFilter("救急",),
    const CategoryFilter("小児",),
    const CategoryFilter("産科",),
    const CategoryFilter("婦人",),
    const CategoryFilter("泌尿",),
    const CategoryFilter("眼科",),
    const CategoryFilter("耳鼻",),
    const CategoryFilter("皮膚",),
    const CategoryFilter("精神",),
    const CategoryFilter("整形",),
    const CategoryFilter("麻酔",),
    const CategoryFilter("放射",),
    const CategoryFilter("公衛",),
    const CategoryFilter("医総",),
  ];
  List<String> _filters = <String>[];
  List<String> _hissyu = <String>[];
  List<String> _clip = <String>[];
  bool _gotou = false;
  List<String> _kai = <String>[];

  //bool _isDisabled = false;



  void all(){
    for(final CategoryFilter category in _genre){
  setState(() {
  _filters.add(category.name);
  }
            );}}

  void clear(){
   setState(() {
      _filters.removeRange(0, _filters.length);
    }
    );
  }






  Iterable<Widget> get categoryWidgets sync* {
    for (final CategoryFilter category  in _genre) {
      yield Padding(
        padding: EdgeInsets.all(4),

        child:Transform(
          transform: Matrix4.identity()..scale(1.3),
          child: FilterChip(
            showCheckmark: false,
            backgroundColor: Colors.white,
            selectedColor: Colors.lightBlue[300],
            //selectedShadowColor: Colors.yellow,
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            //avatar: CircleAvatar(child: Text(category.name)),
            label: Text(category.name, style: TextStyle(
              color: Colors.black87,
              //backgroundColor: Colors.white,

            ),
            ),
            selected: _filters.contains(category.name),
            onSelected: (bool value) {
              setState(() {
                if (value) {
                  _filters.add(category.name);
                } else {
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
  int _currentSelection = 0;
  int _currentSelection1 = 0;
  int _currentSelection2 = 0;
  int _currentSelection3 = 0;

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
        IconButton(
          onPressed: () => {
          Navigator.of(context).pop()
          },
          icon: Icon(Icons.close_rounded),
          color: Colors.blue,
        )
      ],
        centerTitle: true,
        title: Text('検索条件', style: TextStyle(fontSize: 18, color: Colors.blue),),
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
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),

                    child: Padding(padding: EdgeInsets.all(0),
                      child: Wrap(
                        spacing: 25.0,
                        runSpacing: 3.5,
                        children: categoryWidgets.toList(),
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
                                _hissyu.add('必修');
                              } else {
                                _color = Colors.blue;
                                _bcolor = Colors.white;
                                _hissyu.remove('必修');
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
                                _hissyu.add('必修以外');
                              } else {
                                _color1 = Colors.blue;
                                _bcolor1 = Colors.white;
                                _hissyu.remove('必修以外');
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
                                      _clip.add('有');
                                    } else {
                                      _color2 = Colors.blue;
                                      _bcolor2 = Colors.white;
                                      _clip.remove('無');
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
                                      _clip.add('無');
                                    } else {
                                      _color3 = Colors.blue;
                                      _bcolor3 = Colors.white;
                                      _clip.remove('無');
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
                                    if(
                                    //_isDisabled == false
                                       _color5 == Colors.blue && _color4 == Colors.blue)
                                    {
                                      _color4 = Colors.white;
                                      _bcolor4 = Colors.blue;
                                      _gotou = false;
                                      //_isDisabled = true;
                                    } else if(//_isDisabled == true
                                              _color5 == Colors.blue && _color4 == Colors.white)
                                    {
                                      _color4 = Colors.blue;
                                      _bcolor4 = Colors.white;
                                      //_isDisabled = false;
                                    } else if(_color5 == Colors.white && _color4 == Colors.blue)
                                    {
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
                                       _color4 == Colors.blue && _color5 == Colors.blue)
                                    {
                                      _color5 = Colors.white;
                                      _bcolor5 = Colors.blue;
                                      _gotou = true;
                                      //_isDisabled = true;
                                    } else if(
                                    //_isDisabled == true
                                              _color4 == Colors.blue && _color5 == Colors.white)
                                    {
                                      _color5 = Colors.blue;
                                      _bcolor5 = Colors.white;
                                      _gotou = false;
                                      //_isDisabled = false;
                                    } else if(_color4 == Colors.white && _color5 == Colors.blue) {
                                      _color4 = Colors.blue;
                                      _bcolor4 = Colors.white;
                                      _color5 = Colors.white;
                                      _bcolor5 = Colors.blue;
                                      _gotou = true;
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
                                      _kai.add('第１回');
                                    } else {
                                      _color6 = Colors.blue;
                                      _bcolor6 = Colors.white;
                                      _kai.remove('第１回');
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
                                      _kai.add('第２回');
                                    } else {
                                      _color7 = Colors.blue;
                                      _bcolor7 = Colors.white;
                                      _kai.remove('第２回');
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
                                          _kai.add('第３回');
                                        } else {
                                          _color8 = Colors.blue;
                                          _bcolor8 = Colors.white;
                                          _kai.remove('第３回');
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
                                          _kai.add('第４回');
                                        } else {
                                          _color9 = Colors.blue;
                                          _bcolor9 = Colors.white;
                                          _kai.remove('第４回');
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
                  //mainAxisAlignment: MainAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Container(height: 60, width: 150, child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),),
                      //  child: Text('クリア', style: TextStyle(fontSize: 16),),),),
                    Container(
                      height: 60,
                      width: 180,
                      child: ElevatedButton(onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title :Text('a'),
                              content: Column(children:<Widget>[Text(_hissyu[0]+_hissyu[1]+_kai[0]+_kai[1]+_clip[0]+_clip[1]),
                              ElevatedButton(onPressed: (){
                                if(_gotou == true){print('ok');}else if(_gotou == false){print('NO');}}, child: Text('a'))]),
                            )
                        );
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


          //child: Column(
          //children: [
          //ElevatedButton(
          //child: Text('登録'),
          //onPressed: () {
          //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context) => SignInPage()),
          //);
          //},
          //)

          //]
          //)

        ),
    );
  }
}