import 'package:flutter/material.dart';
import 'package:yamato/db.dart';
import 'package:yamato/question.dart';


class History extends StatefulWidget {
  // 以下を実装、受け渡し用のプロパティを定義
  final List<Parameter> serialDataList;

  // 以下を実装、コンストラクタで値を受領
  History({this.serialDataList});

  @override
  _History createState() => _History();
}

class _History extends State<History> {
  int correctType;

  final outlineColor = Colors.blueAccent;
  final primaryColor = Colors.blueAccent;
  final headeryColor = Colors.blueAccent;
  final backColor = Colors.white;
  final double elev = 20;
  final double iconsize = 35;
  final double radius = 0;
  final double fontSize = 18;
  final selectedQuestions = Set<String>();
  List<bool> checkboxManager = [];
  List<QuestionHeader> fQHList;
  List<String> questionNoList = [];
  List<int> questionCorrectType1 = [];
  List<int> questionCorrectType2 = [];
  List<int> questionCorrectType3 = [];
  List<bool> _isCheckboxChecked = [];
  bool initialData = false;
  bool kari = false;
  List<bool> kao = [];

  @override
  void initState() {
    super.initState();
    wait();

  }

  void allData() async {
    MyDatabase db = MyDatabase();
    fQHList = await db.getAllquestionheaders();
    for (var i = 0; i < fQHList.length; i++) {
            if(fQHList[i].correctType1 == 0){
              _isCheckboxChecked.add(true);
            }else{
              _isCheckboxChecked.add(false);
            }


    }
  }
  void wait() async{
    await allData();
    setState(() {
      initialData = true;
    });
  }


  void onSelect(String questionNo) {
    selectedQuestions.add(questionNo);
    print('on');
    print(selectedQuestions);
  }

  void offSelect(String questionNo) {
    selectedQuestions.remove(questionNo);
    print('off');
    print(selectedQuestions);
  }


  @override
  Widget build(BuildContext context) {
    //QuestionList ql = QuestionList();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final adjustsizeh = MediaQuery.of(context).size.height * 0.0011;
    void tryingData() async{
      Set<String> qList = selectedQuestions;
      final List<String> selectedList = qList.toList();
      selectedList.sort((a, b) => a.compareTo(b));
      MyDatabase db = MyDatabase();
      List<QuestionTrying> questiontryingsList = await db
          .getAllquestiontryings();
      for (var questiontrying in questiontryingsList) {
        await db.deletequestiontrying(questiontrying);
      }
      for (var i = 0; i < selectedList.length; i++) {
        QuestionTrying qt = QuestionTrying(
            id: null,
            businessYear: 2020,
            period: 1,
            questionNo: selectedList[i],
            endFlg: false,
            correctType: 9,
            singleAnswer: null,
            multipleAnswer: null,
            numberAnswer: null);
        db.insertquestiontrying(qt);
        print(qt);
      }
     // return new Future.delayed(Duration(seconds: 1), (){
       // return print("1minute");});
    }

    void qTryingInsert() async {
        for(var i=0; i<_isCheckboxChecked.length; i++){
          if(_isCheckboxChecked[i] == true){
            selectedQuestions.add(fQHList[i].questionNo);
          } else{
            selectedQuestions.remove(fQHList[i].questionNo);
          }
        }
     // print(selectedList);
      if (selectedQuestions.length > 0) {
         await tryingData();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>
            Question(
                argumentMode: 1,
                argumentBusinessYear: null,
                argumentPeriod: null,
                argumentQuestionNo: null,
                argumentTryingListNo: 1)));

        print(selectedQuestions);
        print(checkboxManager);
        print('here');
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: SizedBox(
                  height: height * 0.05,
                  width: width * 0.5,
                  child: Center(child: Text('問題を選択してください',
                    style: TextStyle(fontSize: 20 * adjustsizeh),))),
              actions: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(width: width * 0.2),
                      TextButton(child: Text(
                        "OK", style: TextStyle(fontSize: 24 * adjustsizeh),),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(width: width * 0.24),
                    ])
              ],
            );
          },
        );
      }
    }

    List<QuestionHeader> hqList = [];


    if (hqList.length == 0 && fQHList != null && initialData == true) {

        setState(() {
          hqList = fQHList;
          print(_isCheckboxChecked);
        });

    }



    //print("調査通ってる");
    //print("調査" + value.length.toString());
    Widget QuestionList() {
    return
      Container(
          padding: EdgeInsets.all(0),
          height: height*0.72,
          width: width,
          child: Center(child: ListView.builder(
              itemBuilder: (_, index) {
                return Container(
                    decoration: BoxDecoration(
                      border: const Border(
                        top: const BorderSide(
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    child: Row(children: [
                      SizedBox(
                          height: height*0.06,
                          width: width*0.205,
                          child: Center(
                              child: Text(
                                hqList[index].questionNo.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28*adjustsizeh,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Hiragino Sans",
                                  color: Colors.indigo[900],
                                  locale: Locale("ja", "JP"),
                                ),
                              ))),
                      Container(
                          width: width*0.05,
                          height: height*0.04,
                          child: VerticalDivider(color: Colors.black)),
                      SizedBox(
                          height: height*0.04,
                          width: width*0.15,
                          child: Center(
                              child: hqList[index].correctType1 == 1
                                  ? Icon(Icons.radio_button_off, size: 35*adjustsizeh, color: Colors.red,)
                                  :hqList[index].correctType1 == 0 ? Icon(Icons.close,
                                  size: 35*adjustsizeh, color: Colors.indigo)
                                  :Icon(Icons.horizontal_rule, size: 35*adjustsizeh, color: Colors.black,))),
                      Container(
                          height: height*0.04,
                          width: width*0.05,
                          child: VerticalDivider(color: Colors.black)),
                      SizedBox(
                          height: height*0.04,
                          width: width*0.165,
                          child: Center(
                              child: hqList[index].correctType2 == 1
                                  ? Icon (Icons.radio_button_off, size: 35*adjustsizeh, color: Colors.red,)
                                  :hqList[index].correctType2 == 0 ? Icon(Icons.close,
                              size: 35*adjustsizeh, color: Colors.red)
                                  :Icon(Icons.horizontal_rule, size: 35*adjustsizeh, color: Colors.black,) )),
                      SizedBox(
                          height: height*0.04,
                          width: width*0.14,
                          child: Center(
                              child: hqList[index].correctType3 == 1
                                  ? Icon(Icons.radio_button_off, size: 35*adjustsizeh, color: Colors.red,)
                                  :hqList[index].correctType3 == 0 ? Icon(Icons.close,
                                  size: 35*adjustsizeh, color: Colors.indigo)
                                  :Icon(Icons.horizontal_rule, size: 35*adjustsizeh, color: Colors.black,) )),
                      Container(
                          height: height*0.04,
                          width: width*0.05,
                          child: VerticalDivider(color: Colors.black)),
                      SizedBox(
                          height: height*0.06,
                          width: width*0.19,
                          child: Checkbox(
                            activeColor: Colors.blueAccent,
                            value: _isCheckboxChecked[index],
                            onChanged: (bool value) {
                              setState(() {
                                print(_isCheckboxChecked);
                                _isCheckboxChecked[index] = value;
                              }
                              );
                            },
                          )),
                    ])
                );
              },
              itemCount: hqList.length)));}




    return Scaffold(
      appBar: AppBar(
          elevation: 8,
          leading: IconButton(
            icon: Icon(Icons.home_sharp)
            , onPressed: () {
            Navigator.pop(context);
          },),
          centerTitle: true,
          title: Text("学習状況(2020/第1回)"),
          backgroundColor: Colors.blueAccent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () =>
                {
                  Navigator.of(context).pop()
                },
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.07),
            child: Container(
              height: height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[400],
                  border: Border(
                      top: BorderSide(
                        color: Colors.white,
                      ))),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.06,
                      width: width * 0.2,
                      child: Center(
                          child: Text(
                            "問題番号",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18 * adjustsizeh,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Hiragino Sans",
                              locale: Locale("ja", "JP"),
                            ),
                          )),
                    ),
                    Container(
                        height: height * 0.06,
                        width: width*0.05,
                        child: VerticalDivider(
                            color: Colors.white, thickness: 1)),
                    SizedBox(
                      height: height * 0.06,
                      width: width * 0.15,
                      child: Center(
                          child: Text(
                            "模試",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18 * adjustsizeh,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Hiragino Sans",
                              locale: Locale("ja", "JP"),
                            ),
                          )),
                    ),
                    Container(
                        height: height * 0.06,
                        width: width*0.05,
                        child: VerticalDivider(
                          color: Colors.white, thickness: 1,)),
                    SizedBox(
                      height: height * 0.06,
                      width: width * 0.3,
                      child: Center(
                          child: Column(
                              children: <Widget>[
                                Container(
                                  height: height*0.03,
                                  width: width*0.3,
                                  alignment: Alignment.center,
                                  child:Text(
                                  "直近の成績",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18 * adjustsizeh,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Hiragino Sans",
                                    locale: Locale("ja", "JP"),
                                  ),
                                ),),
                                //SizedBox(height: height * 0.015),
                                Container(
                                    height: height*0.03,
                                    width: width*0.3,
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: <Widget>[
                                      Text("前々回", style: TextStyle(
                                          fontSize: 14 * adjustsizeh,
                                          color: Colors.white),),
                                      SizedBox(width: width * 0.02),
                                      Text("前回", style: TextStyle(
                                          fontSize: 14 * adjustsizeh,
                                          color: Colors.white)),
                                    ]))
                              ])),
                    ),
                    Container(
                        height: height * 0.06,
                        width: width*0.05,
                        child: VerticalDivider(
                            color: Colors.white, thickness: 1)),
                    Container(
                      height: height * 0.06,
                      width: width * 0.19,
                      alignment: Alignment.center,
                      child: Center(child: Text("選択", style: TextStyle(
                          fontSize: 18 * adjustsizeh, color: Colors.white),),),
                    )
                  ]),
            ),
          )
      ),
      body: SingleChildScrollView(child: initialData == true ? Container(
          padding: EdgeInsets.all(0),
          height: height * 0.72,
          width: width,
          alignment: Alignment.center,
          //double.infinity,
          child: Center(child: QuestionList(),),
          ): Container()),
      bottomNavigationBar:
      Container(
        decoration: BoxDecoration(
            color: Colors.cyan[100] //この行を追加
        ),
        padding: EdgeInsets.fromLTRB(
            width * 0.15, height * 0.03, width * 0.15, height * 0.03),
        margin: EdgeInsets.all(0),
        child: SizedBox(
          height: height * 0.07,
          //0.065,
          width: width,
          //*0.7,
          child: ElevatedButton(
            onPressed: () {
              qTryingInsert();
            },
            child: Center(
              child:
              Text(
                "選択した問題を解く",
                style: TextStyle(
                  fontSize: 20 * adjustsizeh,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Hiragino Sans",
                  locale: Locale("ja", "JP"),
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}


//class QuestionList extends StatefulWidget {

  //@override
 // _QuestionListstate createState() => _QuestionListstate();
 // List<QuestionHeader> qhList = [];
//}

//class _QuestionListstate extends State<QuestionList> {
  //TextEditingController productNameController = TextEditingController();

  //TextEditingController priceController = TextEditingController();
  //bool isloading = false;




 // @override
 // Widget build(BuildContext context) {
    /*Future<List<int>> correctTypeList= db.amountOfStudyStatu(2021);
    correctTypeList.then((value) {
      print("調査ssss"+value.length.toString());
    });
    */
    //print(hqList.length.toString() + "dafafa");
    //final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
    //final adjustsizeh = MediaQuery.of(context).size.height*0.0011;


    //print("調査通ってる");
    //print("調査" + value.length.toString());

//  }
//}

