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

