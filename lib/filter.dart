import 'package:flutter/foundation.dart';
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
  List<String> _filters = <String>[];
  List<String> _hissyu = <String>[];
  List<String> _clip = <String>[];
  List<String> _kai = <String>[];
  int _gotou = 0;
  List _joken =[];
  List kailist2 =[];
  List codelist2 =[];
  List catlist2 =[];
  List<int> moshi2 =[];
  List hitsu2 =[];
  List<String> qtext2 =[];
  List<int> senko = [2,4,7,8];
  List<int> senko3 = [10,17,2,5,3];
  Color button_c = Colors.white;
  Color button_bc = Colors.indigoAccent.shade700;
  List<bool> btnflag =
  [false,false,false,false,false,false,false,false,false,false,
  false,false,false,false,false,false,false,false,false,false,
  false,false,false,false,false,false,false,false,false,false,false];



  void all1(){

    for(final CategoryFilter category in _genre){
      if(_filters.contains(category.num.toString()) == false) {
        setState(() {
          _filters.add(category.num.toString());
          btnc1 = Colors.white;btnbc1 = Colors.indigoAccent.shade700;
          btnc2 = Colors.white;btnbc2 = Colors.indigoAccent.shade700;
          btnc3 = Colors.white;btnbc3 = Colors.indigoAccent.shade700;
          btnc4 = Colors.white;btnbc4 = Colors.indigoAccent.shade700;
          btnc5 = Colors.white;btnbc5 = Colors.indigoAccent.shade700;
          btnc6 = Colors.white;btnbc6 = Colors.indigoAccent.shade700;
          btnc7 = Colors.white;btnbc7 = Colors.indigoAccent.shade700;
          btnc8 = Colors.white;btnbc8 = Colors.indigoAccent.shade700;
          btnc9 = Colors.white;btnbc9 = Colors.indigoAccent.shade700;
          btnc10 = Colors.white;btnbc10 = Colors.indigoAccent.shade700;
          btnc11 = Colors.white;btnbc11 = Colors.indigoAccent.shade700;
          btnc12 = Colors.white;btnbc12 = Colors.indigoAccent.shade700;
          btnc13 = Colors.white;btnbc13 = Colors.indigoAccent.shade700;
          btnc14 = Colors.white;btnbc14 = Colors.indigoAccent.shade700;
          btnc15 = Colors.white;btnbc15 = Colors.indigoAccent.shade700;
          btnc16 = Colors.white;btnbc16 = Colors.indigoAccent.shade700;
          btnc17 = Colors.white;btnbc17 = Colors.indigoAccent.shade700;
          btnc18 = Colors.white;btnbc18 = Colors.indigoAccent.shade700;
          btnc19 = Colors.white;btnbc19 = Colors.indigoAccent.shade700;
          btnc20 = Colors.white;btnbc20 = Colors.indigoAccent.shade700;
          btnc21 = Colors.white;btnbc21 = Colors.indigoAccent.shade700;
          btnc22 = Colors.white;btnbc22 = Colors.indigoAccent.shade700;
          btnc23 = Colors.white;btnbc23 = Colors.indigoAccent.shade700;
          btnc24 = Colors.white;btnbc24 = Colors.indigoAccent.shade700;
          btnc25 = Colors.white;btnbc25 = Colors.indigoAccent.shade700;
          btnc26 = Colors.white;btnbc26 = Colors.indigoAccent.shade700;
          btnc27 = Colors.white;btnbc27 = Colors.indigoAccent.shade700;
          btnc28 = Colors.white;btnbc28 = Colors.indigoAccent.shade700;
          btnc29 = Colors.white;btnbc29 = Colors.indigoAccent.shade700;
          btnc30 = Colors.white;btnbc30 = Colors.indigoAccent.shade700;
        });
      }else{}
      print(_filters);
             }}

  void clear1() {
      setState(() {
          btnc1 = Colors.indigoAccent.shade700;btnbc1 = Colors.white;
          btnc2 = Colors.indigoAccent.shade700;btnbc2 = Colors.white;
          btnc3 = Colors.indigoAccent.shade700;btnbc3 = Colors.white;
          btnc4 = Colors.indigoAccent.shade700;btnbc4 = Colors.white;
          btnc5 = Colors.indigoAccent.shade700;btnbc5 = Colors.white;
          btnc6 = Colors.indigoAccent.shade700;btnbc6 = Colors.white;
          btnc7 = Colors.indigoAccent.shade700;btnbc7 = Colors.white;
          btnc8 = Colors.indigoAccent.shade700;btnbc8 = Colors.white;
          btnc9 = Colors.indigoAccent.shade700;btnbc9 = Colors.white;
          btnc10 = Colors.indigoAccent.shade700;btnbc10 = Colors.white;
          btnc11 = Colors.indigoAccent.shade700;btnbc11 = Colors.white;
          btnc12 = Colors.indigoAccent.shade700;btnbc12 = Colors.white;
          btnc13 = Colors.indigoAccent.shade700;btnbc13 = Colors.white;
          btnc14 = Colors.indigoAccent.shade700;btnbc14 = Colors.white;
          btnc15 = Colors.indigoAccent.shade700;btnbc15 = Colors.white;
          btnc16 = Colors.indigoAccent.shade700;btnbc16 = Colors.white;
          btnc17 = Colors.indigoAccent.shade700;btnbc17 = Colors.white;
          btnc18 = Colors.indigoAccent.shade700;btnbc18 = Colors.white;
          btnc19 = Colors.indigoAccent.shade700;btnbc19 = Colors.white;
          btnc20 = Colors.indigoAccent.shade700;btnbc20 = Colors.white;
          btnc21 = Colors.indigoAccent.shade700;btnbc21 = Colors.white;
          btnc22 = Colors.indigoAccent.shade700;btnbc22 = Colors.white;
          btnc23 = Colors.indigoAccent.shade700;btnbc23 = Colors.white;
          btnc24 = Colors.indigoAccent.shade700;btnbc24 = Colors.white;
          btnc25 = Colors.indigoAccent.shade700;btnbc25 = Colors.white;
          btnc26 = Colors.indigoAccent.shade700;btnbc26 = Colors.white;
          btnc27 = Colors.indigoAccent.shade700;btnbc27 = Colors.white;
          btnc28 = Colors.indigoAccent.shade700;btnbc28 = Colors.white;
          btnc29 = Colors.indigoAccent.shade700;btnbc29 = Colors.white;
          btnc30 = Colors.indigoAccent.shade700;btnbc30 = Colors.white;



     _filters.removeRange(0, _filters.length);
      });
      print(_filters);
  }


   Future filcon2(MyDatabase db) async {
     List<int> _kai1 = _kai.map(int.parse).toList();
     List<int> _hissyu1 = _hissyu.map(int.parse).toList();
     List<int> _clip1 = _clip.map(int.parse).toList();
     List<int> _filters1 = _filters.map(int.parse).toList();
            _joken = await db.selectQuestionFilesForFilter(
                _filters1, _hissyu1, _kai1, _clip1, _gotou);
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
          MaterialPageRoute(builder: (context) => Result(
             // _joken ,qtext2, kailist2, codelist2,catlist2, hitsu2, moshi2
            4, _joken, null, null, null, null
          )),
        );
      });
    }
 }


  void activatedButton(int l, Color c, Color bc, bool onoff){
    if(l == 1){actbtn1(l);}else if (l == 2){actbtn2(l);}
    else if(l == 3){actbtn3(l);}else{}
   // setState(() {
                     print(c);
    //if(c == Colors.indigoAccent.shade700){
     //btnflag[l] = true;
    // btnc1 = Colors.white;
    // btnbc1 = Colors.indigoAccent.shade700;
     //print(c);
       // if(_filters.contains(l.toString()) == false){
         // _filters.add(l.toString());
           // }else{}
   //}else if(c == Colors.white){
     // btnflag[l] = false;
      //c = Colors.indigoAccent.shade700;
     //bc = Colors.white;
     //_filters.remove(l.toString());
   //}else{}
     // print(_filters);
    //});
  }

  void actbtn1(int p){
    setState(() {
    if(btnc1 == Colors.indigoAccent.shade700){
       btnc1 = Colors.white;
       btnbc1 = Colors.indigoAccent.shade700;
      //print(c);
      if(_filters.contains(p.toString()) == false){
        _filters.add(p.toString());
      }else{}
    }else if(btnc1 == Colors.white){
      btnflag[p] = false;
      btnc1 = Colors.indigoAccent.shade700;
      btnbc1 = Colors.white;
      _filters.remove(p.toString());
    }else{}});
  }
  void actbtn2(int p){
    setState(() {
      if(btnc2 == Colors.indigoAccent.shade700){
        btnc2 = Colors.white;
        btnbc2 = Colors.indigoAccent.shade700;
        //print(c);
        if(_filters.contains(p.toString()) == false){
          _filters.add(p.toString());
        }else{}
      }else if(btnc2 == Colors.white){
        btnflag[p] = false;
        btnc2 = Colors.indigoAccent.shade700;
        btnbc2 = Colors.white;
        _filters.remove(p.toString());
      }else{}});
  }
  void actbtn3(int p){
    setState(() {
      if(btnc3 == Colors.indigoAccent.shade700){
        btnc3 = Colors.white;
        btnbc3 = Colors.indigoAccent.shade700;
        //print(c);
        if(_filters.contains(p.toString()) == false){
          _filters.add(p.toString());
        }else{}
      }else if(btnc3 == Colors.white){
        btnflag[p] = false;
        btnc3 = Colors.indigoAccent.shade700;
        btnbc3 = Colors.white;
        _filters.remove(p.toString());
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


  Color _color = Colors.blue;Color _bcolor = Colors.white;
  Color _color1 = Colors.blue;Color _bcolor1 = Colors.white;
  Color _color2 = Colors.blue;Color _bcolor2 = Colors.white;
  Color _color3 = Colors.blue;Color _bcolor3 = Colors.white;
  Color _color4 = Colors.blue;Color _bcolor4 = Colors.white;
  Color _color5 = Colors.blue;Color _bcolor5 = Colors.white;
  Color _color6 = Colors.blue;Color _bcolor6 = Colors.white;
  Color _color7 = Colors.blue;Color _bcolor7 = Colors.white;
  Color _color8 = Colors.blue;Color _bcolor8 = Colors.white;
  Color _color9 = Colors.blue;Color _bcolor9 = Colors.white;
  Color btnc1 = Colors.indigoAccent.shade700;Color btnbc1 = Colors.white;
  Color btnc2 = Colors.indigoAccent.shade700;Color btnbc2 = Colors.white;
  Color btnc3 = Colors.indigoAccent.shade700;Color btnbc3 = Colors.white;
  Color btnc4 = Colors.indigoAccent.shade700;Color btnbc4 = Colors.white;
  Color btnc5 = Colors.indigoAccent.shade700;Color btnbc5 = Colors.white;
  Color btnc6 = Colors.indigoAccent.shade700;Color btnbc6 = Colors.white;
  Color btnc7 = Colors.indigoAccent.shade700;Color btnbc7 = Colors.white;
  Color btnc8 = Colors.indigoAccent.shade700;Color btnbc8 = Colors.white;
  Color btnc9 = Colors.indigoAccent.shade700;Color btnbc9 = Colors.white;
  Color btnc10 = Colors.indigoAccent.shade700;Color btnbc10 = Colors.white;
  Color btnc11 = Colors.indigoAccent.shade700;Color btnbc11 = Colors.white;
  Color btnc12 = Colors.indigoAccent.shade700;Color btnbc12 = Colors.white;
  Color btnc13 = Colors.indigoAccent.shade700;Color btnbc13 = Colors.white;
  Color btnc14 = Colors.indigoAccent.shade700;Color btnbc14 = Colors.white;
  Color btnc15 = Colors.indigoAccent.shade700;Color btnbc15 = Colors.white;
  Color btnc16 = Colors.indigoAccent.shade700;Color btnbc16 = Colors.white;
  Color btnc17 = Colors.indigoAccent.shade700;Color btnbc17 = Colors.white;
  Color btnc18 = Colors.indigoAccent.shade700;Color btnbc18 = Colors.white;
  Color btnc19 = Colors.indigoAccent.shade700;Color btnbc19 = Colors.white;
  Color btnc20 = Colors.indigoAccent.shade700;Color btnbc20 = Colors.white;
  Color btnc21 = Colors.indigoAccent.shade700;Color btnbc21 = Colors.white;
  Color btnc22 = Colors.indigoAccent.shade700;Color btnbc22 = Colors.white;
  Color btnc23 = Colors.indigoAccent.shade700;Color btnbc23 = Colors.white;
  Color btnc24 = Colors.indigoAccent.shade700;Color btnbc24 = Colors.white;
  Color btnc25 = Colors.indigoAccent.shade700;Color btnbc25 = Colors.white;
  Color btnc26 = Colors.indigoAccent.shade700;Color btnbc26 = Colors.white;
  Color btnc27 = Colors.indigoAccent.shade700;Color btnbc27 = Colors.white;
  Color btnc28 = Colors.indigoAccent.shade700;Color btnbc28 = Colors.white;
  Color btnc29 = Colors.indigoAccent.shade700;Color btnbc29 = Colors.white;
  Color btnc30 = Colors.indigoAccent.shade700;Color btnbc30 = Colors.white;
  bool btnflag1 = false;bool btnflag2 = false;bool btnflag3 = false;
  bool btnflag4 = false;bool btnflag5 = false;bool btnflag6 = false;
  bool btnflag7 = false;bool btnflag8 = false;bool btnflag9 = false;
  bool btnflag10 = false;bool btnflag11 = false;bool btnflag12 = false;
  bool btnflag13 = false;bool btnflag14 = false;bool btnflag15 = false;
  bool btnflag16 = false;bool btnflag17 = false;bool btnflag18 = false;
  bool btnflag19 = false;bool btnflag20 = false;bool btnflag21 = false;
  bool btnflag22 = false;bool btnflag23 = false;bool btnflag24 = false;
  bool btnflag25 = false;bool btnflag26 = false;bool btnflag27 = false;
  bool btnflag28 = false;bool btnflag29 = false;bool btnflag30 = false;




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Widget catButton (
    int num, Color colc, Color colbc, String text, bool flag
    ) {
      return GestureDetector(
      onTap: () {
        activatedButton(num, colc, colbc, flag);
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
              color: colc,
              width: width * 0.0025,
            ),
            top: BorderSide(
              color: colc,
              width: width * 0.0025,
            ),
            left: BorderSide(
              color: colc,
              width: width * 0.0025,
            ),
            right: BorderSide(
              color: colc,
              width: width * 0.0025,
            ),
          ),
          color: colbc,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          text, style: TextStyle(fontSize: 15, color: colc),
        ),
      ),
    );}


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
                              catButton(1, btnc1, btnbc1, "循環", btnflag[1]),
                              catButton(2, btnc2, btnbc2, "呼吸", btnflag[2]),
                                catButton(3, btnc3, btnbc3,  "消化", btnflag[3]),
                                catButton(4, btnc4, btnbc4,  "腎臓", btnflag[4]),
                                catButton(5, btnc5 ,btnbc5,  "内代", btnflag[5]),
                                catButton(6, btnc6, btnbc6,  "神経", btnflag[6]),
                                catButton(7, btnc7, btnbc7,  "麻酔", btnflag[7]),
                               catButton(8, btnc8,btnbc8,  "整形", btnflag[8]),
                                catButton(9,btnc9,btnbc9, "精神", btnflag[9]),
                                catButton(10, btnc10, btnbc10,  "皮膚", btnflag[10]),
                                catButton(11, btnc11, btnbc11,  "眼科", btnflag[11]),
                                catButton(12, btnc12, btnbc12,  "耳鼻", btnflag[12]),
                                catButton(13, btnc13, btnbc13,  "泌尿", btnflag[13]),
                                catButton(14, btnc14, btnbc14,  "婦人", btnflag[14]),
                                catButton(15, btnc15, btnbc15,  "産科", btnflag[15]),
                                catButton(16, btnc16, btnbc16, "小児", btnflag[16]),
                                catButton(17, btnc17, btnbc17,  "救急", btnflag[17]),
                                catButton(18, btnc18, btnbc18, "中毒", btnflag[18]),
                                catButton(19, btnc19, btnbc19,  "感染", btnflag[19]),
                                catButton(20, btnc20, btnbc20, "血液", btnflag[20]),
                                catButton(21, btnc21, btnbc21,  "免疫", btnflag[21]),
                                catButton(22, btnc22, btnbc22,  "放射", btnflag[22]),
                                catButton(23, btnc23, btnbc23,  "公衛", btnflag[23]),
                                catButton(24, btnc24, btnbc24,  "医総", btnflag[24]),
                                catButton(25, btnc25, btnbc25,  "植物", btnflag[25]),
                                catButton(26, btnc26, btnbc26,  "動物", btnflag[26]),
                                catButton(27, btnc27, btnbc27,  "人類", btnflag[27]),
                                catButton(28, btnc28, btnbc28,  "細胞", btnflag[28]),
                                catButton(29, btnc29, btnbc29, '適当', btnflag[29]),
                                catButton(30, btnc30, btnbc30, '参考', btnflag[30]),
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