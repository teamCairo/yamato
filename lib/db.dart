import 'package:moor_flutter/moor_flutter.dart';

part 'db.g.dart';//generated when execute "flutter packages pub run build_runner watch" in terminal

class Parameters extends Table {
  TextColumn get code => text()();
  IntColumn get numberValue => integer()();
  TextColumn get textValue => text()();
  BoolColumn get booleanValue => boolean().withDefault(const Constant(false))();




  @override
  Set<Column> get primaryKey => {code};
}

class QuestionHeaders extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  IntColumn get pediatricsType => integer()();
  IntColumn get subjectId => integer()();
  IntColumn get compulsoryType => integer()();
  IntColumn get answerType => integer()();
  TextColumn get questionText => text()();
  IntColumn get numberAnswer => integer()();
  IntColumn get correctType1 => integer()();
  IntColumn get correctType2 => integer()();
  IntColumn get correctType3 => integer()();
  BoolColumn get favorite => boolean()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo};
}


class Subjects extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get subjectName => text()();

}

class QuestionOptions extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  TextColumn get optionCd => text()();
  TextColumn get optionText => text()();
  IntColumn get correctType => integer()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo,optionCd};
}


class QuestionFiles extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  IntColumn get questionAnswerType => integer()();
  IntColumn get fileNo => integer()();
  TextColumn get filePath => text()();
  IntColumn get fileType => integer()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo,questionAnswerType,fileNo,fileType};
}


class QuestionTryings extends Table {
  IntColumn get id => integer()();
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  BoolColumn get endFlg => boolean()();
  IntColumn get correctType => integer().nullable()();
  TextColumn get singleAnswer => text().nullable()();
  TextColumn get multipleAnswer => text().nullable()();
  IntColumn get numberAnswer => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
@UseMoor(
  tables: [Parameters,QuestionHeaders,Subjects,QuestionOptions,QuestionFiles,QuestionTryings]
)//add Table name
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
      logStatements: true));

  MyDatabase db;

  @override
  MigrationStrategy get migration => destructiveFallback;

  @override
  int get schemaVersion => 9;



  Future <List<Parameter>> getAllparameters()=> select(parameters).get();
  Stream <List<Parameter>> watchAllparameters()=> select(parameters).watch();
  Future insertparameter(Parameter parameter)=> into(parameters).insert(parameter);
  Future updateparameter(Parameter parameter)=> update(parameters).replace(parameter);
  Future deleteparameter(Parameter parameter)=> delete(parameters).delete(parameter);

  Future <List<QuestionHeader>> getAllquestionheaders()=> select(questionHeaders).get();
  Stream <List<QuestionHeader>> watchAllquestionheaders()=> select(questionHeaders).watch();
  Future insertquestionheader(QuestionHeader questionheader)=> into(questionHeaders).insert(questionheader);
  Future updatequestionheader(QuestionHeader questionheader)=> update(questionHeaders).replace(questionheader);
  Future deletequestionheader(QuestionHeader questionheader)=> delete(questionHeaders).delete(questionheader);



  Future<List<QuestionHeader>> selectQuestionHeaderByKey(int businessYear,int period, String questionNo) {
    return
      customSelect(
        'SELECT *'
            +'From question_Headers '
            +'WHERE business_Year = ? '
            +'AND period = ? '
            +'AND question_No = ?;',
        variables: [Variable.withInt(businessYear),Variable.withInt(period),Variable.withString(questionNo)],
        readsFrom: {questionHeaders},
      ).map((row) => QuestionHeader(
            businessYear:row.readInt('business_year')
            ,period:row.readInt('period')
            ,questionNo:row.readString('question_no')
            ,subjectId:row.readInt('subject_id')
            ,pediatricsType:row.readInt('pediatrics_type')
            ,compulsoryType:row.readInt('compulsory_type')
            ,answerType:row.readInt('answer_type')
            ,questionText:row.readString('question_text')
            ,numberAnswer:row.readInt('number_answer')
            ,correctType1:row.readInt('correct_type1')
            ,correctType2:row.readInt('correct_type2')
            ,correctType3:row.readInt('correct_type3')
            ,favorite:row.readBool('favorite')
        )).get();
  }



  Stream<List<QuestionHeader>> selectQuestionHeaderByKeyWatch(int businessYear,int period, String questionNo) {
    return
      customSelect(
        'SELECT *'
            +'From question_Headers '
            +'WHERE business_Year = ? '
            +'AND period = ? '
            +'AND question_No = ?;',
        variables: [Variable.withInt(businessYear),Variable.withInt(period),Variable.withString(questionNo)],
        readsFrom: {questionHeaders},
      ).watch().map((rows) {
        return rows
            .map((row) => QuestionHeader(
          businessYear:row.readInt('business_year')
          ,period:row.readInt('period')
          ,questionNo:row.readString('question_no')
          ,subjectId:row.readInt('subject_id')
            ,pediatricsType:row.readInt('pediatrics_type')
          ,compulsoryType:row.readInt('compulsory_type')
          ,answerType:row.readInt('answer_type')
          ,questionText:row.readString('question_text')
          ,numberAnswer:row.readInt('number_answer')
          ,correctType1:row.readInt('correct_type1')
          ,correctType2:row.readInt('correct_type2')
          ,correctType3:row.readInt('correct_type3')
          ,favorite:row.readBool('favorite')
        )).toList();
      });
  }

  Future<List<QuestionOption>> selectQuestionOptionsByQInfo(int businessYear,int period, String questionNo) {
    return
      customSelect(
        'SELECT *'
            +'From question_Options '
            +'WHERE business_Year = ? '
            +'AND period = ? '
            +'AND question_No = ?'
            +' ORDER BY option_Cd ASC ;',
        variables: [Variable.withInt(businessYear),Variable.withInt(period),Variable.withString(questionNo)],
        readsFrom: {questionOptions},
      ).map((row) => QuestionOption(
          businessYear:row.readInt('business_year')
          ,period:row.readInt('period')
          ,questionNo:row.readString('question_no')
          ,optionCd:row.readString('option_cd')
          ,optionText:row.readString('option_text')
          ,correctType:row.readInt('correct_type')
      )).get();
  }


  Future<List<QuestionFile>> selectQuestionFilesForUse(int businessYear,int period, String questionNo,int questionAnswerType, int fileType) {
    return
      customSelect(
        'SELECT *'
            +' From question_Files '
            +' WHERE business_Year = ? '
            +' AND period = ? '
            +' AND question_No = ?'
            +' AND question_Answer_Type = ?'
            +' AND file_Type = ?'
            +' ORDER BY file_No ASC',
        variables: [Variable.withInt(businessYear),Variable.withInt(period),Variable.withString(questionNo),Variable.withInt(questionAnswerType),Variable.withInt(fileType)],
        readsFrom: {questionFiles},
      ).map((row) => QuestionFile(
          businessYear:row.readInt('business_year')
          ,period:row.readInt('period')
          ,questionNo:row.readString('question_no')
          ,questionAnswerType:row.readInt('question_answer_type')
          ,fileNo:row.readInt('file_no')
          ,filePath:row.readString('file_path')
          ,fileType:row.readInt('file_type')
      )).get();
  }

  Future<List<QuestionHeader>> selectQuestionFilesForFilter(List<int> sub, List<int> comp , List<int> peri, List<int> fav, int correctType) {
    //Variable.withInt(period),Variable.withInt(subjectId),Variable.withInt(compulsoryType),
    String _select = 'SELECT *'
        +' From question_Headers '
        +' WHERE correct_type1 = ? '
        +' AND ';
    _select += 'subject_id IN(';

    int t = sub.length-1;
    if(t+1 == 1){
      _select += sub[0].toString();
    }else if(t+1 == 0){
      for(var u = 1; u < 40; u++){
      _select += u.toString()+',';}
      _select += '40';
    }else if(t+1 > 1){
      for (var i = 0; i < t; i++) {
        _select += sub[i].toString() + ',';
      }
      _select += sub[t].toString();
    }

    _select += ') AND compulsory_type ';
    if(comp.length == 1) {
      _select += 'IN ('+ comp[0].toString();
    }else {
      _select += 'IN (0, 1';
    }

    _select += ') AND period IN(';
    int  e = peri.length-1;
    if(e+1 == 1){
      _select += peri[0].toString();
    }else if(e+1 == 0){
      _select += '1, 2, 3, 4';
    }else if(e+1 > 1) {
      for (var x = 0; x < e; x++) {
        _select += peri[x].toString() + ',';
      }
        _select += peri[e].toString();
    }

    _select += ') AND favorite ';
    int p = fav.length;
    if(p == 0){
      _select += "IN (0, 1)";
    }  else if(p ==1 && fav[0] ==0){
      _select += " IN (0) ";
    } else if(p ==1 && fav[0] ==1){
      _select += " IN (1) ";
    }else {
      _select += "IN (0, 1) ";
    }

    _select += '  ORDER BY question_no ASC';

    return
      customSelect(
        _select,
        variables: [ Variable.withInt(correctType)],
        readsFrom: {questionHeaders },
      ).map((row) => QuestionHeader(
          businessYear:row.readInt('business_year')
          ,period:row.readInt('period')
          ,questionNo:row.readString('question_no')
          ,subjectId:row.readInt('subject_id')
          ,pediatricsType:row.readInt('pediatrics_type')
          ,compulsoryType:row.readInt('compulsory_type')
          ,answerType:row.readInt('answer_type')
          ,questionText:row.readString('question_text')
          ,numberAnswer:row.readInt('number_answer')
          ,correctType1:row.readInt('correct_type1')
          ,correctType2:row.readInt('correct_type2')
          ,correctType3:row.readInt('correct_type3')
          ,favorite:row.readBool('favorite')
      )).get();
  }

  Future <List<Subject>> getAllsubjects()=> select(subjects).get();
  Stream <List<Subject>> watchAllsubjects()=> select(subjects).watch();
  Future insertsubject(Subject subject)=> into(subjects).insert(subject);
  Future updatesubject(Subject subject)=> update(subjects).replace(subject);
  Future deletesubject(Subject subject)=> delete(subjects).delete(subject);


  Future <List<QuestionOption>> getAllquestionoptions()=> select(questionOptions).get();
  Stream <List<QuestionOption>> watchAllquestionoptions()=> select(questionOptions).watch();
  Future insertquestionoption(QuestionOption questionoption)=> into(questionOptions).insert(questionoption);
  Future updatequestionoption(QuestionOption questionoption)=> update(questionOptions).replace(questionoption);
  Future deletequestionoption(QuestionOption questionoption)=> delete(questionOptions).delete(questionoption);


  Future <List<QuestionFile>> getAllquestionfiles()=> select(questionFiles).get();
  Stream <List<QuestionFile>> watchAllquestionfiles()=> select(questionFiles).watch();
  Future insertquestionfile(QuestionFile questionfile)=> into(questionFiles).insert(questionfile);
  Future updatequestionfile(QuestionFile questionfile)=> update(questionFiles).replace(questionfile);
  Future deletequestionfile(QuestionFile questionfile)=> delete(questionFiles).delete(questionfile);



  Future <List<QuestionTrying>> getAllquestiontryings()=> select(questionTryings).get();
  Stream <List<QuestionTrying>> watchAllquestiontryings()=> select(questionTryings).watch();
  Future insertquestiontrying(QuestionTrying questiontrying)=> into(questionTryings).insert(questiontrying);
  Future updatequestiontrying(QuestionTrying questiontrying)=> update(questionTryings).replace(questiontrying);
  Future deletequestiontrying(QuestionTrying questiontrying)=> delete(questionTryings).delete(questiontrying);



  Future<List<QuestionTrying>> selectQuestionTryingById(int id) {
    return
      customSelect(
        'SELECT *'
            +'From question_Tryings '
            +'WHERE id = ? ;',
        variables: [Variable.withInt(id)],
        readsFrom: {questionTryings},
      ).map((row) => QuestionTrying(
          id:row.readInt('id')
          ,businessYear:row.readInt('business_year')
          ,period:row.readInt('period')
          ,questionNo:row.readString('question_no')
          ,endFlg:row.readBool('end_flg')
          ,correctType:row.readInt('correct_type')
          ,singleAnswer:row.readString('single_answer')
          ,multipleAnswer:row.readString('multiple_answer')
          ,numberAnswer:row.readInt('number_answer')
      )).get();
  }


  Future<List<int>> selectQuestionTryingCount() {
    return
      customSelect(
        'SELECT count(*) as C '
            +'From question_Tryings;',
        readsFrom: {questionTryings},
      ).map((row) => row.readInt('C')
      ).get();
  }

  Future<List<int>> selectQuestionTryingCountbyCorrectType(int correctType) {
    return
      customSelect(
        'SELECT count(*) as C '
            +'From question_Tryings '
            +"WHERE correct_Type = ? ;",
        variables: [Variable.withInt(correctType)],
        readsFrom: {questionTryings},
      ).map((row) => row.readInt('C')
      ).get();
  }


  Future<List<int>> selectQuestionTryingNextNo() {
    return
      customSelect(
        'SELECT MIN(id) as M '
            +'From question_Tryings '
            +"WHERE end_Flg = 0 ;",
        readsFrom: {questionTryings},
      ).map((row) => row.readInt('M')
      ).get();
  }



  Future<List<AnswerListInfo>> selectAnswerListInfoAll() {
    return
      customSelect(
        'SELECT '
            +'qh.business_year AS qhbusiness_year '
            +',qh.period AS qhperiod '
            +',qh.question_no AS qhquestion_no '
            +',qh.subject_id AS qhsubject_id '
            +',qh.pediatrics_type AS qhpediatrics_type '
            +',qh.compulsory_type AS qhcompulsory_type '
            +',qh.answer_type AS qhanswer_type '
            +',qh.question_text AS qhquestion_text '
            +',qh.number_answer AS qhnumber_answer '
            +',qh.correct_type1 AS qhcorrect_type1 '
            +',qh.correct_type2 AS qhcorrect_type2 '
            +',qh.correct_type3 AS qhcorrect_type3 '
            +',qh.favorite AS qhfavorite '
            +',qt.id AS qtid '
            +',qt.correct_type AS qhcorrect_type '
            +',qt.single_answer AS qhsingle_answer '
            +',qt.multiple_answer AS qhmultiple_answer '
            +',qt.number_answer AS qhnumber_answer '
            +'From question_Tryings qt '
            +'LEFT OUTER JOIN question_Headers qh '
            +'ON qt.business_Year=qh.business_Year '
            +'AND qt.period=qh.period '
            +'AND qt.question_No=qh.question_No;',
        readsFrom: {questionTryings,questionHeaders},
      ).map((row) => AnswerListInfo(
          businessYear:row.readInt('qhbusiness_year')
          ,period:row.readInt('qhperiod')
          ,questionNo:row.readString('qhquestion_no')
          ,subjectId:row.readInt('qhsubject_id')
          ,pediatricsType:row.readInt('qhpediatrics_type')
          ,compulsoryType:row.readInt('qhcompulsory_type')
          ,answerType:row.readInt('qhanswer_type')
          ,questionText:row.readString('qhquestion_text')
          ,numberAnswer:row.readInt('qhnumber_answer')
          ,correctType1:row.readInt('qhcorrect_type1')
          ,correctType2:row.readInt('qhcorrect_type2')
          ,correctType3:row.readInt('qhcorrect_type3')
          ,favorite:row.readBool('qhfavorite')
          ,id:row.readInt('qtid')
          ,correctType:row.readInt('qtcorrect_type')
      )).get();
  }


}

class AnswerListInfo{final int businessYear;
final int period;
final String questionNo;
final int subjectId;
final int pediatricsType;
final int compulsoryType;
final int answerType;
final String questionText;
final int numberAnswer;
final int correctType1;
final int correctType2;
final int correctType3;
final bool favorite;
final int id;
final int correctType;

  AnswerListInfo({
    this.businessYear
    , this.period
    , this.questionNo
    , this.subjectId
    , this.pediatricsType
    , this.compulsoryType
    , this.answerType
    , this.questionText
    , this.numberAnswer
    , this.correctType1
    , this.correctType2
    , this.correctType3
    , this.favorite
    , this.id
    , this.correctType
  });


}