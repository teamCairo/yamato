import 'dart:io';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

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
  IntColumn get questionNo => integer()();
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
  IntColumn get questionNo => integer()();
  TextColumn get optionCd => text()();
  TextColumn get optionText => text()();
  IntColumn get correctType => integer()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo,optionCd};
}


class QuestionFiles extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  IntColumn get questionNo => integer()();
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
  IntColumn get questionNo => integer()();
  BoolColumn get endFlg => boolean()();
  IntColumn get correctType => integer()();
  TextColumn get singleAnswer => text()();
  TextColumn get multipleAnswer => text()();
  IntColumn get numberAnswer => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
@UseMoor(
  tables: [Parameters,QuestionHeaders,Subjects,QuestionOptions,QuestionFiles,QuestionTryings]
)//add Table name
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
      logStatements: true));

  @override
  MigrationStrategy get migration => destructiveFallback;

  @override
  int get schemaVersion => 6;

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

}