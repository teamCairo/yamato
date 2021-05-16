
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


  Iterable<Widget> get categoryWidgets sync* {
    for (final CategoryFilter category  in _genre) {
      yield Padding(
        padding: EdgeInsets.all(4),

        child:Transform(
          transform: Matrix4.identity()..scale(1.1),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  //constraints: BoxConstraints.expand(),
                  child: Column(children:<Widget>[
                  Text('＜カテゴリー選択＞', style: TextStyle(fontSize: 16,)),
                  Container(
                    height: 250,
                    width: 500,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                    decoration: BoxDecoration(
                      border: const Border(
                        bottom: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(padding: EdgeInsets.all(8),
                      child: Wrap(
                        children: categoryWidgets.toList(),
                      ),
                    ),
                  ),
                ]),),
                Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(children:<Widget>[
                    Text('＜必修/必修以外＞'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(

                          child: OutlinedButton(child: Text('必修',  style: TextStyle(fontSize: 18, color: Colors.blue)),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),
                        ),
                        SizedBox(width: 20),
                        Container(

                          child: OutlinedButton(child: Text('必修以外',  style: TextStyle(fontSize: 18, color: Colors.blue)),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(children:<Widget>[
                    Text('＜クリップ＞'),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        child: OutlinedButton(child: Text('クリップ有', style: TextStyle(fontSize: 18, color: Colors.blue)),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.blue, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                      ),),
                      SizedBox(width: 20),
                      Container(

                        child: OutlinedButton(child: Text('クリップ無', style: TextStyle(fontSize: 18, color: Colors.blue)),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),),
                      ),
                    ],
                   ),
                  ]),
                ),

                Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(children:<Widget>[
                    Text('＜模試の正誤＞'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(

                          child: OutlinedButton(child: Text('模試：誤', style: TextStyle(fontSize: 18, color: Colors.blue),),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),),
                        SizedBox(width: 20),
                        Container(

                          child: OutlinedButton(child: Text('模試：正', style: TextStyle(fontSize: 18, color: Colors.blue),),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(children:<Widget>[
                    Text('＜出題回＞'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Container(child: OutlinedButton(child: Text('最新回' , style: TextStyle(fontSize: 18, color: Colors.blue),),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),),),
                        SizedBox(width: 20),
                        Container(
                          child: OutlinedButton(child: Text('最新２回', style: TextStyle(fontSize: 18, color: Colors.blue)),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),),
                        ),
                        SizedBox(width: 20),
                        Container(
                          child: OutlinedButton(child: Text('最新３回',style: TextStyle(fontSize: 18, color: Colors.blue)),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.blue, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),),
                        )],
                    ),
                  ]),
                ),


                Container(child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 150,
                      child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),),
                        child: Text('クリア',),),),
                    Container(
                      height: 60,
                      width: 150,
                      child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),),
                        child: Text('検索',),),),
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