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


class StudyStatus extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  IntColumn get studyType => integer()();
  IntColumn get correctType => integer()();
  TextColumn get singleAnswer => text()();
  TextColumn get multipleAnswer => text()();
  IntColumn get numberAnswer => integer()();
  DateTimeColumn get answerDateTime => dateTime()();
}

class QuestionHeaders extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  IntColumn get subjectId => integer()();
  IntColumn get compulsoryType => integer()();
  IntColumn get answerType => integer()();
  TextColumn get questionText => text()();
  IntColumn get numberAnswer => integer()();

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
  IntColumn get correctCype => integer()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo,optionCd};
}


class QuestionFiles extends Table {
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  IntColumn get questionAnswerType => integer()();
  IntColumn get fileNo => integer()();
  TextColumn get filepPath => text()();
  IntColumn get filetype => integer()();

  @override
  Set<Column> get primaryKey => {businessYear,period,questionNo,questionAnswerType,fileNo};
}


class QuestionTryings extends Table {
  IntColumn get id => integer()();
  IntColumn get businessYear => integer()();
  IntColumn get period => integer()();
  TextColumn get questionNo => text()();
  BoolColumn get endFlg => boolean()();
  IntColumn get correctType => integer()();
  TextColumn get singleAnswer => text()();
  TextColumn get multipleAnswer => text()();
  IntColumn get numberAnswer => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
@UseMoor(
  tables: [Parameters,StudyStatus,QuestionHeaders,Subjects,QuestionOptions,QuestionFiles,QuestionTryings],
  queries: {   '_selectParameterByCode': 'SELECT * FROM parameters WHERE code = :_code '}
)//add Table name
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
      logStatements: true));

  @override
  int get schemaVersion => 1;

  Future <List<Parameter>> getAllparameters()=> select(parameters).get();
  Stream <List<Parameter>> watchAllparameters()=> select(parameters).watch();
  Future insertparameter(Parameter parameter)=> into(parameters).insert(parameter);
  Future updateparameter(Parameter parameter)=> update(parameters).replace(parameter);
  Future deleteparameter(Parameter parameter)=> delete(parameters).delete(parameter);


  Future <List<StudyStatu>> getAllstudystatu()=> select(studyStatus).get();
  Stream <List<StudyStatu>> watchAllstudystatu()=> select(studyStatus).watch();
  Future insertstudystatu(StudyStatu studystatu)=> into(studyStatus).insert(studystatu);
  Future updatestudystatu(StudyStatu studystatu)=> update(studyStatus).replace(studystatu);
  Future deletestudystatu(StudyStatu studystatu)=> delete(studyStatus).delete(studystatu);


  Future <List<QuestionHeader>> getAllquestionheader()=> select(questionHeaders).get();
  Stream <List<QuestionHeader>> watchAllquestionheader()=> select(questionHeaders).watch();
  Future insertquestionheader(QuestionHeader questionheader)=> into(questionHeaders).insert(questionheader);
  Future updatequestionheader(QuestionHeader questionheader)=> update(questionHeaders).replace(questionheader);
  Future deletequestionheader(QuestionHeader questionheader)=> delete(questionHeaders).delete(questionheader);


  Future <List<Subject>> getAllsubjects()=> select(subjects).get();
  Stream <List<Subject>> watchAllsubjects()=> select(subjects).watch();
  Future insertsubject(Subject subject)=> into(subjects).insert(subject);
  Future updatesubject(Subject subject)=> update(subjects).replace(subject);
  Future deletesubject(Subject subject)=> delete(subjects).delete(subject);


  Future <List<QuestionOption>> getAllquestionoption()=> select(questionOptions).get();
  Stream <List<QuestionOption>> watchAllquestionoption()=> select(questionOptions).watch();
  Future insertquestionoption(QuestionOption questionoption)=> into(questionOptions).insert(questionoption);
  Future updatequestionoption(QuestionOption questionoption)=> update(questionOptions).replace(questionoption);
  Future deletequestionoption(QuestionOption questionoption)=> delete(questionOptions).delete(questionoption);


  Future <List<QuestionFile>> getAllquestionfile()=> select(questionFiles).get();
  Stream <List<QuestionFile>> watchAllquestionfile()=> select(questionFiles).watch();
  Future insertquestionfile(QuestionFile questionfile)=> into(questionFiles).insert(questionfile);
  Future updatequestionfile(QuestionFile questionfile)=> update(questionFiles).replace(questionfile);
  Future deletequestionfile(QuestionFile questionfile)=> delete(questionFiles).delete(questionfile);



  Future <List<QuestionTrying>> getAllquestiontrying()=> select(questionTryings).get();
  Stream <List<QuestionTrying>> watchAllquestiontrying()=> select(questionTryings).watch();
  Future insertquestiontrying(QuestionTrying questiontrying)=> into(questionTryings).insert(questiontrying);
  Future updatequestiontrying(QuestionTrying questiontrying)=> update(questionTryings).replace(questiontrying);
  Future deletequestiontrying(QuestionTrying questiontrying)=> delete(questionTryings).delete(questiontrying);

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
      // populate data
        await into(parameters).insert(Parameter(
          code: 'serialcdStartedFlg:202101',
          numberValue: null,
          textValue: 'N3SG81P2',
          booleanValue: false,
        ));


        // populate data
        await into(parameters).insert(Parameter(
          code: 'serialcdStartedFlg:202102',
          numberValue: null,
          textValue: 'KANKS78S',
          booleanValue: false,
        ));

        // populate data
        await into(parameters).insert(Parameter(
          code: 'serialcdStartedFlg:202103',
          numberValue: null,
          textValue: 'KAML92KJ',
          booleanValue: false,
        ));

        // populate data
        await into(parameters).insert(Parameter(
          code: 'serialcdStartedFlg:202104',
          numberValue: null,
          textValue: 'GH676JNQ',
          booleanValue: false,
        ));
      }
    );
  }
}