import 'package:yamato/db.dart';

class DataMigrant {

  void dataReset() async{

    MyDatabase db = MyDatabase();

    await allDataDelete(db);

    print('deletetocreate');

    await initialDataCreate(db);

  }

  Future<void> initialDataCreate(MyDatabase db) {


    print('inserting');

    Parameter para1 = Parameter(code:'serialcdStartedFlg:202101'
        ,numberValue:0
        ,textValue:'AAAAAAAA'
        ,booleanValue:false);
    db.insertparameter(para1);
    Parameter para2 = Parameter(code:'serialcdStartedFlg:202102'
        ,numberValue:0
        ,textValue:'BBBBBBBB'
        ,booleanValue:false);
    db.insertparameter(para2);
    Parameter para3 = Parameter(code:'serialcdStartedFlg:202103'
        ,numberValue:0
        ,textValue:'CCCCCCCC'
        ,booleanValue:false);
    db.insertparameter(para3);
    Parameter para4 = Parameter(code:'serialcdStartedFlg:202104'
        ,numberValue:0
        ,textValue:'DDDDDDDD'
        ,booleanValue:false);
    db.insertparameter(para4);

    QuestionHeader qh1 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'1'
        ,subjectId:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは1'
        ,numberAnswer:0);
    db.insertquestionheader(qh1);
    QuestionHeader qh2 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'2'
        ,subjectId:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは2'
        ,numberAnswer:0);
    db.insertquestionheader(qh2);
    QuestionHeader qh3 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'3'
        ,subjectId:2
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは3'
        ,numberAnswer:0);
    db.insertquestionheader(qh3);
    QuestionHeader qh4 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'4'
        ,subjectId:3
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは4'
        ,numberAnswer:0);
    db.insertquestionheader(qh4);
    QuestionHeader qh5 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'5'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは5'
        ,numberAnswer:0);
    db.insertquestionheader(qh5);
    QuestionHeader qh6 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'6'
        ,subjectId:5
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'この問題のNoは6'
        ,numberAnswer:0);
    db.insertquestionheader(qh6);
    QuestionHeader qh7 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'7'
        ,subjectId:6
        ,compulsoryType:1
        ,answerType:2
        ,questionText:'この問題のNoは7'
        ,numberAnswer:0);
    db.insertquestionheader(qh7);
    QuestionHeader qh8 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'8'
        ,subjectId:7
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは8'
        ,numberAnswer:0);
    db.insertquestionheader(qh8);
    QuestionHeader qh9 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'9'
        ,subjectId:12
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは9'
        ,numberAnswer:0);
    db.insertquestionheader(qh9);
    QuestionHeader qh10 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'10'
        ,subjectId:9
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'この問題のNoは10'
        ,numberAnswer:0);
    db.insertquestionheader(qh10);
    QuestionHeader qh11 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'11'
        ,subjectId:2
        ,compulsoryType:1
        ,answerType:2
        ,questionText:'この問題のNoは11'
        ,numberAnswer:0);
    db.insertquestionheader(qh11);
    QuestionHeader qh12 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'12'
        ,subjectId:11
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは12'
        ,numberAnswer:0);
    db.insertquestionheader(qh12);
    QuestionHeader qh13 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'13'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:3
        ,questionText:'この問題のNoは13'
        ,numberAnswer:34);
    db.insertquestionheader(qh13);
    QuestionHeader qh14 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'14'
        ,subjectId:5
        ,compulsoryType:0
        ,answerType:3
        ,questionText:'この問題のNoは14'
        ,numberAnswer:1000);
    db.insertquestionheader(qh14);
    QuestionHeader qh15 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'15'
        ,subjectId:7
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは15'
        ,numberAnswer:0);
    db.insertquestionheader(qh15);
    QuestionHeader qh16 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'16'
        ,subjectId:15
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは16'
        ,numberAnswer:0);
    db.insertquestionheader(qh16);
    QuestionHeader qh17 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'17'
        ,subjectId:4
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは17'
        ,numberAnswer:0);
    db.insertquestionheader(qh17);
    QuestionHeader qh18 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'18'
        ,subjectId:8
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは18'
        ,numberAnswer:0);
    db.insertquestionheader(qh18);
    QuestionHeader qh19 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'19'
        ,subjectId:4
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは19'
        ,numberAnswer:0);
    db.insertquestionheader(qh19);
    QuestionHeader qh20 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'20'
        ,subjectId:2
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは20'
        ,numberAnswer:0);
    db.insertquestionheader(qh20);
    QuestionHeader qh21 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'21'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは21'
        ,numberAnswer:0);
    db.insertquestionheader(qh21);
    QuestionHeader qh22 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'22'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは22'
        ,numberAnswer:0);
    db.insertquestionheader(qh22);
    QuestionHeader qh23 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'23'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは23'
        ,numberAnswer:0);
    db.insertquestionheader(qh23);
    QuestionHeader qh24 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'24'
        ,subjectId:6
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは24'
        ,numberAnswer:0);
    db.insertquestionheader(qh24);
    QuestionHeader qh25 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'25'
        ,subjectId:7
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは25'
        ,numberAnswer:0);
    db.insertquestionheader(qh25);
    QuestionHeader qh26 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'26'
        ,subjectId:12
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは26'
        ,numberAnswer:0);
    db.insertquestionheader(qh26);
    QuestionHeader qh27 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'27'
        ,subjectId:9
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは27'
        ,numberAnswer:0);
    db.insertquestionheader(qh27);
    QuestionHeader qh28 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'28'
        ,subjectId:2
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは28'
        ,numberAnswer:0);
    db.insertquestionheader(qh28);
    QuestionHeader qh29 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'29'
        ,subjectId:11
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは29'
        ,numberAnswer:0);
    db.insertquestionheader(qh29);
    QuestionHeader qh30 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'30'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは30'
        ,numberAnswer:0);
    db.insertquestionheader(qh30);
    QuestionHeader qh31 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'31'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは31'
        ,numberAnswer:0);
    db.insertquestionheader(qh31);
    QuestionHeader qh32 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'32'
        ,subjectId:7
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは32'
        ,numberAnswer:0);
    db.insertquestionheader(qh32);
    QuestionHeader qh33 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'33'
        ,subjectId:15
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは33'
        ,numberAnswer:0);
    db.insertquestionheader(qh33);
    QuestionHeader qh34 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'34'
        ,subjectId:4
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは34'
        ,numberAnswer:0);
    db.insertquestionheader(qh34);
    QuestionHeader qh35 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'35'
        ,subjectId:8
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは35'
        ,numberAnswer:0);
    db.insertquestionheader(qh35);
    QuestionHeader qh36 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'36'
        ,subjectId:4
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは36'
        ,numberAnswer:0);
    db.insertquestionheader(qh36);
    QuestionHeader qh37 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'37'
        ,subjectId:2
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは37'
        ,numberAnswer:0);
    db.insertquestionheader(qh37);
    QuestionHeader qh38 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'38'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは38'
        ,numberAnswer:0);
    db.insertquestionheader(qh38);
    QuestionHeader qh39 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'39'
        ,subjectId:3
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは39'
        ,numberAnswer:0);
    db.insertquestionheader(qh39);
    QuestionHeader qh40 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'40'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは40'
        ,numberAnswer:0);
    db.insertquestionheader(qh40);
    QuestionHeader qh41 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'41'
        ,subjectId:6
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは41'
        ,numberAnswer:0);
    db.insertquestionheader(qh41);
    QuestionHeader qh42 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'42'
        ,subjectId:7
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは42'
        ,numberAnswer:0);
    db.insertquestionheader(qh42);
    QuestionHeader qh43 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'43'
        ,subjectId:12
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは43'
        ,numberAnswer:0);
    db.insertquestionheader(qh43);
    QuestionHeader qh44 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'44'
        ,subjectId:9
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは44'
        ,numberAnswer:0);
    db.insertquestionheader(qh44);
    QuestionHeader qh45 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'45'
        ,subjectId:2
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは45'
        ,numberAnswer:0);
    db.insertquestionheader(qh45);
    QuestionHeader qh46 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'46'
        ,subjectId:11
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは46'
        ,numberAnswer:0);
    db.insertquestionheader(qh46);
    QuestionHeader qh47 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'47'
        ,subjectId:3
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは47'
        ,numberAnswer:0);
    db.insertquestionheader(qh47);
    QuestionHeader qh48 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'48'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは48'
        ,numberAnswer:0);
    db.insertquestionheader(qh48);
    QuestionHeader qh49 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'49'
        ,subjectId:7
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは49'
        ,numberAnswer:0);
    db.insertquestionheader(qh49);
    QuestionHeader qh50 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'50'
        ,subjectId:15
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは50'
        ,numberAnswer:0);
    db.insertquestionheader(qh50);
    QuestionHeader qh51 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'51'
        ,subjectId:4
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは51'
        ,numberAnswer:0);
    db.insertquestionheader(qh51);
    QuestionHeader qh52 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'52'
        ,subjectId:8
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは52'
        ,numberAnswer:0);
    db.insertquestionheader(qh52);
    QuestionHeader qh53 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'53'
        ,subjectId:4
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは53'
        ,numberAnswer:0);
    db.insertquestionheader(qh53);
    QuestionHeader qh54 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'54'
        ,subjectId:2
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは54'
        ,numberAnswer:0);
    db.insertquestionheader(qh54);
    QuestionHeader qh55 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'55'
        ,subjectId:3
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは55'
        ,numberAnswer:0);
    db.insertquestionheader(qh55);
    QuestionHeader qh56 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'56'
        ,subjectId:3
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは56'
        ,numberAnswer:0);
    db.insertquestionheader(qh56);
    QuestionHeader qh57 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'57'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは57'
        ,numberAnswer:0);
    db.insertquestionheader(qh57);
    QuestionHeader qh58 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'58'
        ,subjectId:6
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは58'
        ,numberAnswer:0);
    db.insertquestionheader(qh58);
    QuestionHeader qh59 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'59'
        ,subjectId:7
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは59'
        ,numberAnswer:0);
    db.insertquestionheader(qh59);
    QuestionHeader qh60 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'60'
        ,subjectId:12
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは60'
        ,numberAnswer:0);
    db.insertquestionheader(qh60);
    QuestionHeader qh61 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'61'
        ,subjectId:9
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは61'
        ,numberAnswer:0);
    db.insertquestionheader(qh61);
    QuestionHeader qh62 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'62'
        ,subjectId:2
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは62'
        ,numberAnswer:0);
    db.insertquestionheader(qh62);
    QuestionHeader qh63 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'63'
        ,subjectId:11
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'この問題のNoは63'
        ,numberAnswer:0);
    db.insertquestionheader(qh63);
    QuestionHeader qh64 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'64'
        ,subjectId:3
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは64'
        ,numberAnswer:0);
    db.insertquestionheader(qh64);
    QuestionHeader qh65 = QuestionHeader(
        businessYear:2021
        ,period:1
        ,questionNo:'65'
        ,subjectId:5
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この問題のNoは65'
        ,numberAnswer:0);
    db.insertquestionheader(qh65);

    Subject subject1 = Subject(
        id:1
        ,subjectName:'循環');
    db.insertsubject(subject1);
    Subject subject2 = Subject(
        id:2
        ,subjectName:'呼吸');
    db.insertsubject(subject2);
    Subject subject3 = Subject(
        id:3
        ,subjectName:'消化');
    db.insertsubject(subject3);
    Subject subject4 = Subject(
        id:4
        ,subjectName:'腎臓');
    db.insertsubject(subject4);
    Subject subject5 = Subject(
        id:5
        ,subjectName:'内代');
    db.insertsubject(subject5);
    Subject subject6 = Subject(
        id:6
        ,subjectName:'神経');
    db.insertsubject(subject6);
    Subject subject7 = Subject(
        id:7
        ,subjectName:'血液');
    db.insertsubject(subject7);
    Subject subject8 = Subject(
        id:8
        ,subjectName:'免疫');
    db.insertsubject(subject8);
    Subject subject9 = Subject(
        id:9
        ,subjectName:'感染');
    db.insertsubject(subject9);
    Subject subject10 = Subject(
        id:10
        ,subjectName:'中毒');
    db.insertsubject(subject10);
    Subject subject11 = Subject(
        id:11
        ,subjectName:'救急');
    db.insertsubject(subject11);
    Subject subject12 = Subject(
        id:12
        ,subjectName:'小児');
    db.insertsubject(subject12);
    Subject subject13 = Subject(
        id:13
        ,subjectName:'産科');
    db.insertsubject(subject13);
    Subject subject14 = Subject(
        id:14
        ,subjectName:'婦人');
    db.insertsubject(subject14);
    Subject subject15 = Subject(
        id:15
        ,subjectName:'泌尿');
    db.insertsubject(subject15);
    Subject subject16 = Subject(
        id:16
        ,subjectName:'眼科');
    db.insertsubject(subject16);
    Subject subject17 = Subject(
        id:17
        ,subjectName:'耳鼻');
    db.insertsubject(subject17);
    Subject subject18 = Subject(
        id:18
        ,subjectName:'皮膚');
    db.insertsubject(subject18);
    Subject subject19 = Subject(
        id:19
        ,subjectName:'精神');
    db.insertsubject(subject19);
    Subject subject20 = Subject(
        id:20
        ,subjectName:'整形');
    db.insertsubject(subject20);
    Subject subject21 = Subject(
        id:21
        ,subjectName:'麻酔');
    db.insertsubject(subject21);
    Subject subject22 = Subject(
        id:22
        ,subjectName:'放射');
    db.insertsubject(subject22);
    Subject subject23 = Subject(
        id:23
        ,subjectName:'公衛');
    db.insertsubject(subject23);
    Subject subject24 = Subject(
        id:24
        ,subjectName:'医総');
    db.insertsubject(subject24);


  }


  Future<void> allDataDelete(MyDatabase db) async{

    await deleteAllParameters(db);
    await deleteAllStudyStatus(db);
    await deleteAllQuestionHeaders(db);
    await deleteAllSubjects(db);
    await deleteAllQuestionOptions(db);
    await deleteAllQuestionFiles(db);
    await deleteAllQuestionTryings(db);


  }

  Future<void> deleteAllParameters(MyDatabase db) async {

    print('deleting');

    List<Parameter> parametersList = await db.getAllparameters();
    for(var parameter in parametersList){
      await db.deleteparameter(parameter);
    }

    print('deleted');
  }

  Future<void> deleteAllStudyStatus(MyDatabase db) async {

    print('deleting');

    List<StudyStatu> studystatusList = await db.getAllstudystatus();
    for(var studystatu in studystatusList){
      await db.deletestudystatu(studystatu);
    }

    print('deleted');
  }


  Future<void> deleteAllQuestionHeaders(MyDatabase db) async {

    print('deleting');

    List<QuestionHeader> questionheadersList = await db.getAllquestionheaders();
    for(var questionheader in questionheadersList){
      await db.deletequestionheader(questionheader);
    }

    print('deleted');
  }


  Future<void> deleteAllSubjects(MyDatabase db) async {

    print('deleting');

    List<Subject> subjectsList = await db.getAllsubjects();
    for(var subject in subjectsList){
      await db.deletesubject(subject);
    }

    print('deleted');
  }


  Future<void> deleteAllQuestionOptions(MyDatabase db) async {

    print('deleting');

    List<QuestionOption> questionoptionsList = await db.getAllquestionoptions();
    for(var questionoption in questionoptionsList){
      await db.deletequestionoption(questionoption);
    }

    print('deleted');
  }


  Future<void> deleteAllQuestionFiles(MyDatabase db) async {

    print('deleting');

    List<QuestionFile> questionfilesList = await db.getAllquestionfiles();
    for(var questionfile in questionfilesList){
      await db.deletequestionfile(questionfile);
    }

    print('deleted');
  }


  Future<void> deleteAllQuestionTryings(MyDatabase db) async {

    print('deleting');

    List<QuestionTrying> questiontryingsList = await db.getAllquestiontryings();
    for(var questiontrying in questiontryingsList){
      await db.deletequestiontrying(questiontrying);
    }

    print('deleted');
  }
}

