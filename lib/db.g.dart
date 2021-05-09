// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Parameter extends DataClass implements Insertable<Parameter> {
  final String code;
  final int numberValue;
  final String textValue;
  final bool booleanValue;
  Parameter(
      {@required this.code,
      @required this.numberValue,
      @required this.textValue,
      @required this.booleanValue});
  factory Parameter.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Parameter(
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      numberValue: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_value']),
      textValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}text_value']),
      booleanValue: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}boolean_value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || numberValue != null) {
      map['number_value'] = Variable<int>(numberValue);
    }
    if (!nullToAbsent || textValue != null) {
      map['text_value'] = Variable<String>(textValue);
    }
    if (!nullToAbsent || booleanValue != null) {
      map['boolean_value'] = Variable<bool>(booleanValue);
    }
    return map;
  }

  ParametersCompanion toCompanion(bool nullToAbsent) {
    return ParametersCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      numberValue: numberValue == null && nullToAbsent
          ? const Value.absent()
          : Value(numberValue),
      textValue: textValue == null && nullToAbsent
          ? const Value.absent()
          : Value(textValue),
      booleanValue: booleanValue == null && nullToAbsent
          ? const Value.absent()
          : Value(booleanValue),
    );
  }

  factory Parameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Parameter(
      code: serializer.fromJson<String>(json['code']),
      numberValue: serializer.fromJson<int>(json['numberValue']),
      textValue: serializer.fromJson<String>(json['textValue']),
      booleanValue: serializer.fromJson<bool>(json['booleanValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'numberValue': serializer.toJson<int>(numberValue),
      'textValue': serializer.toJson<String>(textValue),
      'booleanValue': serializer.toJson<bool>(booleanValue),
    };
  }

  Parameter copyWith(
          {String code,
          int numberValue,
          String textValue,
          bool booleanValue}) =>
      Parameter(
        code: code ?? this.code,
        numberValue: numberValue ?? this.numberValue,
        textValue: textValue ?? this.textValue,
        booleanValue: booleanValue ?? this.booleanValue,
      );
  @override
  String toString() {
    return (StringBuffer('Parameter(')
          ..write('code: $code, ')
          ..write('numberValue: $numberValue, ')
          ..write('textValue: $textValue, ')
          ..write('booleanValue: $booleanValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      code.hashCode,
      $mrjc(numberValue.hashCode,
          $mrjc(textValue.hashCode, booleanValue.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Parameter &&
          other.code == this.code &&
          other.numberValue == this.numberValue &&
          other.textValue == this.textValue &&
          other.booleanValue == this.booleanValue);
}

class ParametersCompanion extends UpdateCompanion<Parameter> {
  final Value<String> code;
  final Value<int> numberValue;
  final Value<String> textValue;
  final Value<bool> booleanValue;
  const ParametersCompanion({
    this.code = const Value.absent(),
    this.numberValue = const Value.absent(),
    this.textValue = const Value.absent(),
    this.booleanValue = const Value.absent(),
  });
  ParametersCompanion.insert({
    @required String code,
    @required int numberValue,
    @required String textValue,
    this.booleanValue = const Value.absent(),
  })  : code = Value(code),
        numberValue = Value(numberValue),
        textValue = Value(textValue);
  static Insertable<Parameter> custom({
    Expression<String> code,
    Expression<int> numberValue,
    Expression<String> textValue,
    Expression<bool> booleanValue,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (numberValue != null) 'number_value': numberValue,
      if (textValue != null) 'text_value': textValue,
      if (booleanValue != null) 'boolean_value': booleanValue,
    });
  }

  ParametersCompanion copyWith(
      {Value<String> code,
      Value<int> numberValue,
      Value<String> textValue,
      Value<bool> booleanValue}) {
    return ParametersCompanion(
      code: code ?? this.code,
      numberValue: numberValue ?? this.numberValue,
      textValue: textValue ?? this.textValue,
      booleanValue: booleanValue ?? this.booleanValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (numberValue.present) {
      map['number_value'] = Variable<int>(numberValue.value);
    }
    if (textValue.present) {
      map['text_value'] = Variable<String>(textValue.value);
    }
    if (booleanValue.present) {
      map['boolean_value'] = Variable<bool>(booleanValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParametersCompanion(')
          ..write('code: $code, ')
          ..write('numberValue: $numberValue, ')
          ..write('textValue: $textValue, ')
          ..write('booleanValue: $booleanValue')
          ..write(')'))
        .toString();
  }
}

class $ParametersTable extends Parameters
    with TableInfo<$ParametersTable, Parameter> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParametersTable(this._db, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberValueMeta =
      const VerificationMeta('numberValue');
  GeneratedIntColumn _numberValue;
  @override
  GeneratedIntColumn get numberValue =>
      _numberValue ??= _constructNumberValue();
  GeneratedIntColumn _constructNumberValue() {
    return GeneratedIntColumn(
      'number_value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _textValueMeta = const VerificationMeta('textValue');
  GeneratedTextColumn _textValue;
  @override
  GeneratedTextColumn get textValue => _textValue ??= _constructTextValue();
  GeneratedTextColumn _constructTextValue() {
    return GeneratedTextColumn(
      'text_value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _booleanValueMeta =
      const VerificationMeta('booleanValue');
  GeneratedBoolColumn _booleanValue;
  @override
  GeneratedBoolColumn get booleanValue =>
      _booleanValue ??= _constructBooleanValue();
  GeneratedBoolColumn _constructBooleanValue() {
    return GeneratedBoolColumn('boolean_value', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [code, numberValue, textValue, booleanValue];
  @override
  $ParametersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'parameters';
  @override
  final String actualTableName = 'parameters';
  @override
  VerificationContext validateIntegrity(Insertable<Parameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('number_value')) {
      context.handle(
          _numberValueMeta,
          numberValue.isAcceptableOrUnknown(
              data['number_value'], _numberValueMeta));
    } else if (isInserting) {
      context.missing(_numberValueMeta);
    }
    if (data.containsKey('text_value')) {
      context.handle(_textValueMeta,
          textValue.isAcceptableOrUnknown(data['text_value'], _textValueMeta));
    } else if (isInserting) {
      context.missing(_textValueMeta);
    }
    if (data.containsKey('boolean_value')) {
      context.handle(
          _booleanValueMeta,
          booleanValue.isAcceptableOrUnknown(
              data['boolean_value'], _booleanValueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Parameter map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Parameter.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ParametersTable createAlias(String alias) {
    return $ParametersTable(_db, alias);
  }
}

class StudyStatu extends DataClass implements Insertable<StudyStatu> {
  final int id;
  final int businessYear;
  final int period;
  final String questionNo;
  final int studyType;
  final int correctType;
  final String singleAnswer;
  final String multipleAnswer;
  final int numberAnswer;
  final DateTime answerDateTime;
  StudyStatu(
      {@required this.id,
      @required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.studyType,
      @required this.correctType,
      @required this.singleAnswer,
      @required this.multipleAnswer,
      @required this.numberAnswer,
      @required this.answerDateTime});
  factory StudyStatu.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return StudyStatu(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      studyType:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}study_type']),
      correctType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type']),
      singleAnswer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}single_answer']),
      multipleAnswer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}multiple_answer']),
      numberAnswer: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_answer']),
      answerDateTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_date_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || businessYear != null) {
      map['business_year'] = Variable<int>(businessYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int>(period);
    }
    if (!nullToAbsent || questionNo != null) {
      map['question_no'] = Variable<String>(questionNo);
    }
    if (!nullToAbsent || studyType != null) {
      map['study_type'] = Variable<int>(studyType);
    }
    if (!nullToAbsent || correctType != null) {
      map['correct_type'] = Variable<int>(correctType);
    }
    if (!nullToAbsent || singleAnswer != null) {
      map['single_answer'] = Variable<String>(singleAnswer);
    }
    if (!nullToAbsent || multipleAnswer != null) {
      map['multiple_answer'] = Variable<String>(multipleAnswer);
    }
    if (!nullToAbsent || numberAnswer != null) {
      map['number_answer'] = Variable<int>(numberAnswer);
    }
    if (!nullToAbsent || answerDateTime != null) {
      map['answer_date_time'] = Variable<DateTime>(answerDateTime);
    }
    return map;
  }

  StudyStatusCompanion toCompanion(bool nullToAbsent) {
    return StudyStatusCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      businessYear: businessYear == null && nullToAbsent
          ? const Value.absent()
          : Value(businessYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      questionNo: questionNo == null && nullToAbsent
          ? const Value.absent()
          : Value(questionNo),
      studyType: studyType == null && nullToAbsent
          ? const Value.absent()
          : Value(studyType),
      correctType: correctType == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType),
      singleAnswer: singleAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(singleAnswer),
      multipleAnswer: multipleAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(multipleAnswer),
      numberAnswer: numberAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(numberAnswer),
      answerDateTime: answerDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(answerDateTime),
    );
  }

  factory StudyStatu.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return StudyStatu(
      id: serializer.fromJson<int>(json['id']),
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      studyType: serializer.fromJson<int>(json['studyType']),
      correctType: serializer.fromJson<int>(json['correctType']),
      singleAnswer: serializer.fromJson<String>(json['singleAnswer']),
      multipleAnswer: serializer.fromJson<String>(json['multipleAnswer']),
      numberAnswer: serializer.fromJson<int>(json['numberAnswer']),
      answerDateTime: serializer.fromJson<DateTime>(json['answerDateTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'studyType': serializer.toJson<int>(studyType),
      'correctType': serializer.toJson<int>(correctType),
      'singleAnswer': serializer.toJson<String>(singleAnswer),
      'multipleAnswer': serializer.toJson<String>(multipleAnswer),
      'numberAnswer': serializer.toJson<int>(numberAnswer),
      'answerDateTime': serializer.toJson<DateTime>(answerDateTime),
    };
  }

  StudyStatu copyWith(
          {int id,
          int businessYear,
          int period,
          String questionNo,
          int studyType,
          int correctType,
          String singleAnswer,
          String multipleAnswer,
          int numberAnswer,
          DateTime answerDateTime}) =>
      StudyStatu(
        id: id ?? this.id,
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        studyType: studyType ?? this.studyType,
        correctType: correctType ?? this.correctType,
        singleAnswer: singleAnswer ?? this.singleAnswer,
        multipleAnswer: multipleAnswer ?? this.multipleAnswer,
        numberAnswer: numberAnswer ?? this.numberAnswer,
        answerDateTime: answerDateTime ?? this.answerDateTime,
      );
  @override
  String toString() {
    return (StringBuffer('StudyStatu(')
          ..write('id: $id, ')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('studyType: $studyType, ')
          ..write('correctType: $correctType, ')
          ..write('singleAnswer: $singleAnswer, ')
          ..write('multipleAnswer: $multipleAnswer, ')
          ..write('numberAnswer: $numberAnswer, ')
          ..write('answerDateTime: $answerDateTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          businessYear.hashCode,
          $mrjc(
              period.hashCode,
              $mrjc(
                  questionNo.hashCode,
                  $mrjc(
                      studyType.hashCode,
                      $mrjc(
                          correctType.hashCode,
                          $mrjc(
                              singleAnswer.hashCode,
                              $mrjc(
                                  multipleAnswer.hashCode,
                                  $mrjc(numberAnswer.hashCode,
                                      answerDateTime.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is StudyStatu &&
          other.id == this.id &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.studyType == this.studyType &&
          other.correctType == this.correctType &&
          other.singleAnswer == this.singleAnswer &&
          other.multipleAnswer == this.multipleAnswer &&
          other.numberAnswer == this.numberAnswer &&
          other.answerDateTime == this.answerDateTime);
}

class StudyStatusCompanion extends UpdateCompanion<StudyStatu> {
  final Value<int> id;
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<int> studyType;
  final Value<int> correctType;
  final Value<String> singleAnswer;
  final Value<String> multipleAnswer;
  final Value<int> numberAnswer;
  final Value<DateTime> answerDateTime;
  const StudyStatusCompanion({
    this.id = const Value.absent(),
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.studyType = const Value.absent(),
    this.correctType = const Value.absent(),
    this.singleAnswer = const Value.absent(),
    this.multipleAnswer = const Value.absent(),
    this.numberAnswer = const Value.absent(),
    this.answerDateTime = const Value.absent(),
  });
  StudyStatusCompanion.insert({
    this.id = const Value.absent(),
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required int studyType,
    @required int correctType,
    @required String singleAnswer,
    @required String multipleAnswer,
    @required int numberAnswer,
    @required DateTime answerDateTime,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        studyType = Value(studyType),
        correctType = Value(correctType),
        singleAnswer = Value(singleAnswer),
        multipleAnswer = Value(multipleAnswer),
        numberAnswer = Value(numberAnswer),
        answerDateTime = Value(answerDateTime);
  static Insertable<StudyStatu> custom({
    Expression<int> id,
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<int> studyType,
    Expression<int> correctType,
    Expression<String> singleAnswer,
    Expression<String> multipleAnswer,
    Expression<int> numberAnswer,
    Expression<DateTime> answerDateTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (studyType != null) 'study_type': studyType,
      if (correctType != null) 'correct_type': correctType,
      if (singleAnswer != null) 'single_answer': singleAnswer,
      if (multipleAnswer != null) 'multiple_answer': multipleAnswer,
      if (numberAnswer != null) 'number_answer': numberAnswer,
      if (answerDateTime != null) 'answer_date_time': answerDateTime,
    });
  }

  StudyStatusCompanion copyWith(
      {Value<int> id,
      Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<int> studyType,
      Value<int> correctType,
      Value<String> singleAnswer,
      Value<String> multipleAnswer,
      Value<int> numberAnswer,
      Value<DateTime> answerDateTime}) {
    return StudyStatusCompanion(
      id: id ?? this.id,
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      studyType: studyType ?? this.studyType,
      correctType: correctType ?? this.correctType,
      singleAnswer: singleAnswer ?? this.singleAnswer,
      multipleAnswer: multipleAnswer ?? this.multipleAnswer,
      numberAnswer: numberAnswer ?? this.numberAnswer,
      answerDateTime: answerDateTime ?? this.answerDateTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (businessYear.present) {
      map['business_year'] = Variable<int>(businessYear.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (questionNo.present) {
      map['question_no'] = Variable<String>(questionNo.value);
    }
    if (studyType.present) {
      map['study_type'] = Variable<int>(studyType.value);
    }
    if (correctType.present) {
      map['correct_type'] = Variable<int>(correctType.value);
    }
    if (singleAnswer.present) {
      map['single_answer'] = Variable<String>(singleAnswer.value);
    }
    if (multipleAnswer.present) {
      map['multiple_answer'] = Variable<String>(multipleAnswer.value);
    }
    if (numberAnswer.present) {
      map['number_answer'] = Variable<int>(numberAnswer.value);
    }
    if (answerDateTime.present) {
      map['answer_date_time'] = Variable<DateTime>(answerDateTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudyStatusCompanion(')
          ..write('id: $id, ')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('studyType: $studyType, ')
          ..write('correctType: $correctType, ')
          ..write('singleAnswer: $singleAnswer, ')
          ..write('multipleAnswer: $multipleAnswer, ')
          ..write('numberAnswer: $numberAnswer, ')
          ..write('answerDateTime: $answerDateTime')
          ..write(')'))
        .toString();
  }
}

class $StudyStatusTable extends StudyStatus
    with TableInfo<$StudyStatusTable, StudyStatu> {
  final GeneratedDatabase _db;
  final String _alias;
  $StudyStatusTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _businessYearMeta =
      const VerificationMeta('businessYear');
  GeneratedIntColumn _businessYear;
  @override
  GeneratedIntColumn get businessYear =>
      _businessYear ??= _constructBusinessYear();
  GeneratedIntColumn _constructBusinessYear() {
    return GeneratedIntColumn(
      'business_year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _periodMeta = const VerificationMeta('period');
  GeneratedIntColumn _period;
  @override
  GeneratedIntColumn get period => _period ??= _constructPeriod();
  GeneratedIntColumn _constructPeriod() {
    return GeneratedIntColumn(
      'period',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionNoMeta = const VerificationMeta('questionNo');
  GeneratedTextColumn _questionNo;
  @override
  GeneratedTextColumn get questionNo => _questionNo ??= _constructQuestionNo();
  GeneratedTextColumn _constructQuestionNo() {
    return GeneratedTextColumn(
      'question_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _studyTypeMeta = const VerificationMeta('studyType');
  GeneratedIntColumn _studyType;
  @override
  GeneratedIntColumn get studyType => _studyType ??= _constructStudyType();
  GeneratedIntColumn _constructStudyType() {
    return GeneratedIntColumn(
      'study_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctTypeMeta =
      const VerificationMeta('correctType');
  GeneratedIntColumn _correctType;
  @override
  GeneratedIntColumn get correctType =>
      _correctType ??= _constructCorrectType();
  GeneratedIntColumn _constructCorrectType() {
    return GeneratedIntColumn(
      'correct_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _singleAnswerMeta =
      const VerificationMeta('singleAnswer');
  GeneratedTextColumn _singleAnswer;
  @override
  GeneratedTextColumn get singleAnswer =>
      _singleAnswer ??= _constructSingleAnswer();
  GeneratedTextColumn _constructSingleAnswer() {
    return GeneratedTextColumn(
      'single_answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _multipleAnswerMeta =
      const VerificationMeta('multipleAnswer');
  GeneratedTextColumn _multipleAnswer;
  @override
  GeneratedTextColumn get multipleAnswer =>
      _multipleAnswer ??= _constructMultipleAnswer();
  GeneratedTextColumn _constructMultipleAnswer() {
    return GeneratedTextColumn(
      'multiple_answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberAnswerMeta =
      const VerificationMeta('numberAnswer');
  GeneratedIntColumn _numberAnswer;
  @override
  GeneratedIntColumn get numberAnswer =>
      _numberAnswer ??= _constructNumberAnswer();
  GeneratedIntColumn _constructNumberAnswer() {
    return GeneratedIntColumn(
      'number_answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _answerDateTimeMeta =
      const VerificationMeta('answerDateTime');
  GeneratedDateTimeColumn _answerDateTime;
  @override
  GeneratedDateTimeColumn get answerDateTime =>
      _answerDateTime ??= _constructAnswerDateTime();
  GeneratedDateTimeColumn _constructAnswerDateTime() {
    return GeneratedDateTimeColumn(
      'answer_date_time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        businessYear,
        period,
        questionNo,
        studyType,
        correctType,
        singleAnswer,
        multipleAnswer,
        numberAnswer,
        answerDateTime
      ];
  @override
  $StudyStatusTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'study_status';
  @override
  final String actualTableName = 'study_status';
  @override
  VerificationContext validateIntegrity(Insertable<StudyStatu> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('business_year')) {
      context.handle(
          _businessYearMeta,
          businessYear.isAcceptableOrUnknown(
              data['business_year'], _businessYearMeta));
    } else if (isInserting) {
      context.missing(_businessYearMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period'], _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('question_no')) {
      context.handle(
          _questionNoMeta,
          questionNo.isAcceptableOrUnknown(
              data['question_no'], _questionNoMeta));
    } else if (isInserting) {
      context.missing(_questionNoMeta);
    }
    if (data.containsKey('study_type')) {
      context.handle(_studyTypeMeta,
          studyType.isAcceptableOrUnknown(data['study_type'], _studyTypeMeta));
    } else if (isInserting) {
      context.missing(_studyTypeMeta);
    }
    if (data.containsKey('correct_type')) {
      context.handle(
          _correctTypeMeta,
          correctType.isAcceptableOrUnknown(
              data['correct_type'], _correctTypeMeta));
    } else if (isInserting) {
      context.missing(_correctTypeMeta);
    }
    if (data.containsKey('single_answer')) {
      context.handle(
          _singleAnswerMeta,
          singleAnswer.isAcceptableOrUnknown(
              data['single_answer'], _singleAnswerMeta));
    } else if (isInserting) {
      context.missing(_singleAnswerMeta);
    }
    if (data.containsKey('multiple_answer')) {
      context.handle(
          _multipleAnswerMeta,
          multipleAnswer.isAcceptableOrUnknown(
              data['multiple_answer'], _multipleAnswerMeta));
    } else if (isInserting) {
      context.missing(_multipleAnswerMeta);
    }
    if (data.containsKey('number_answer')) {
      context.handle(
          _numberAnswerMeta,
          numberAnswer.isAcceptableOrUnknown(
              data['number_answer'], _numberAnswerMeta));
    } else if (isInserting) {
      context.missing(_numberAnswerMeta);
    }
    if (data.containsKey('answer_date_time')) {
      context.handle(
          _answerDateTimeMeta,
          answerDateTime.isAcceptableOrUnknown(
              data['answer_date_time'], _answerDateTimeMeta));
    } else if (isInserting) {
      context.missing(_answerDateTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudyStatu map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return StudyStatu.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $StudyStatusTable createAlias(String alias) {
    return $StudyStatusTable(_db, alias);
  }
}

class QuestionHeader extends DataClass implements Insertable<QuestionHeader> {
  final int businessYear;
  final int period;
  final String questionNo;
  final int subjectId;
  final int compulsoryType;
  final int answerType;
  final String questionText;
  final int numberAnswer;
  QuestionHeader(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.subjectId,
      @required this.compulsoryType,
      @required this.answerType,
      @required this.questionText,
      @required this.numberAnswer});
  factory QuestionHeader.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return QuestionHeader(
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      subjectId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}subject_id']),
      compulsoryType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}compulsory_type']),
      answerType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}answer_type']),
      questionText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_text']),
      numberAnswer: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_answer']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || businessYear != null) {
      map['business_year'] = Variable<int>(businessYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int>(period);
    }
    if (!nullToAbsent || questionNo != null) {
      map['question_no'] = Variable<String>(questionNo);
    }
    if (!nullToAbsent || subjectId != null) {
      map['subject_id'] = Variable<int>(subjectId);
    }
    if (!nullToAbsent || compulsoryType != null) {
      map['compulsory_type'] = Variable<int>(compulsoryType);
    }
    if (!nullToAbsent || answerType != null) {
      map['answer_type'] = Variable<int>(answerType);
    }
    if (!nullToAbsent || questionText != null) {
      map['question_text'] = Variable<String>(questionText);
    }
    if (!nullToAbsent || numberAnswer != null) {
      map['number_answer'] = Variable<int>(numberAnswer);
    }
    return map;
  }

  QuestionHeadersCompanion toCompanion(bool nullToAbsent) {
    return QuestionHeadersCompanion(
      businessYear: businessYear == null && nullToAbsent
          ? const Value.absent()
          : Value(businessYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      questionNo: questionNo == null && nullToAbsent
          ? const Value.absent()
          : Value(questionNo),
      subjectId: subjectId == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectId),
      compulsoryType: compulsoryType == null && nullToAbsent
          ? const Value.absent()
          : Value(compulsoryType),
      answerType: answerType == null && nullToAbsent
          ? const Value.absent()
          : Value(answerType),
      questionText: questionText == null && nullToAbsent
          ? const Value.absent()
          : Value(questionText),
      numberAnswer: numberAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(numberAnswer),
    );
  }

  factory QuestionHeader.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return QuestionHeader(
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      subjectId: serializer.fromJson<int>(json['subjectId']),
      compulsoryType: serializer.fromJson<int>(json['compulsoryType']),
      answerType: serializer.fromJson<int>(json['answerType']),
      questionText: serializer.fromJson<String>(json['questionText']),
      numberAnswer: serializer.fromJson<int>(json['numberAnswer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'subjectId': serializer.toJson<int>(subjectId),
      'compulsoryType': serializer.toJson<int>(compulsoryType),
      'answerType': serializer.toJson<int>(answerType),
      'questionText': serializer.toJson<String>(questionText),
      'numberAnswer': serializer.toJson<int>(numberAnswer),
    };
  }

  QuestionHeader copyWith(
          {int businessYear,
          int period,
          String questionNo,
          int subjectId,
          int compulsoryType,
          int answerType,
          String questionText,
          int numberAnswer}) =>
      QuestionHeader(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        subjectId: subjectId ?? this.subjectId,
        compulsoryType: compulsoryType ?? this.compulsoryType,
        answerType: answerType ?? this.answerType,
        questionText: questionText ?? this.questionText,
        numberAnswer: numberAnswer ?? this.numberAnswer,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionHeader(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('subjectId: $subjectId, ')
          ..write('compulsoryType: $compulsoryType, ')
          ..write('answerType: $answerType, ')
          ..write('questionText: $questionText, ')
          ..write('numberAnswer: $numberAnswer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      businessYear.hashCode,
      $mrjc(
          period.hashCode,
          $mrjc(
              questionNo.hashCode,
              $mrjc(
                  subjectId.hashCode,
                  $mrjc(
                      compulsoryType.hashCode,
                      $mrjc(
                          answerType.hashCode,
                          $mrjc(questionText.hashCode,
                              numberAnswer.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionHeader &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.subjectId == this.subjectId &&
          other.compulsoryType == this.compulsoryType &&
          other.answerType == this.answerType &&
          other.questionText == this.questionText &&
          other.numberAnswer == this.numberAnswer);
}

class QuestionHeadersCompanion extends UpdateCompanion<QuestionHeader> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<int> subjectId;
  final Value<int> compulsoryType;
  final Value<int> answerType;
  final Value<String> questionText;
  final Value<int> numberAnswer;
  const QuestionHeadersCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.compulsoryType = const Value.absent(),
    this.answerType = const Value.absent(),
    this.questionText = const Value.absent(),
    this.numberAnswer = const Value.absent(),
  });
  QuestionHeadersCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required int subjectId,
    @required int compulsoryType,
    @required int answerType,
    @required String questionText,
    @required int numberAnswer,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        subjectId = Value(subjectId),
        compulsoryType = Value(compulsoryType),
        answerType = Value(answerType),
        questionText = Value(questionText),
        numberAnswer = Value(numberAnswer);
  static Insertable<QuestionHeader> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<int> subjectId,
    Expression<int> compulsoryType,
    Expression<int> answerType,
    Expression<String> questionText,
    Expression<int> numberAnswer,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (subjectId != null) 'subject_id': subjectId,
      if (compulsoryType != null) 'compulsory_type': compulsoryType,
      if (answerType != null) 'answer_type': answerType,
      if (questionText != null) 'question_text': questionText,
      if (numberAnswer != null) 'number_answer': numberAnswer,
    });
  }

  QuestionHeadersCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<int> subjectId,
      Value<int> compulsoryType,
      Value<int> answerType,
      Value<String> questionText,
      Value<int> numberAnswer}) {
    return QuestionHeadersCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      subjectId: subjectId ?? this.subjectId,
      compulsoryType: compulsoryType ?? this.compulsoryType,
      answerType: answerType ?? this.answerType,
      questionText: questionText ?? this.questionText,
      numberAnswer: numberAnswer ?? this.numberAnswer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (businessYear.present) {
      map['business_year'] = Variable<int>(businessYear.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (questionNo.present) {
      map['question_no'] = Variable<String>(questionNo.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<int>(subjectId.value);
    }
    if (compulsoryType.present) {
      map['compulsory_type'] = Variable<int>(compulsoryType.value);
    }
    if (answerType.present) {
      map['answer_type'] = Variable<int>(answerType.value);
    }
    if (questionText.present) {
      map['question_text'] = Variable<String>(questionText.value);
    }
    if (numberAnswer.present) {
      map['number_answer'] = Variable<int>(numberAnswer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionHeadersCompanion(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('subjectId: $subjectId, ')
          ..write('compulsoryType: $compulsoryType, ')
          ..write('answerType: $answerType, ')
          ..write('questionText: $questionText, ')
          ..write('numberAnswer: $numberAnswer')
          ..write(')'))
        .toString();
  }
}

class $QuestionHeadersTable extends QuestionHeaders
    with TableInfo<$QuestionHeadersTable, QuestionHeader> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionHeadersTable(this._db, [this._alias]);
  final VerificationMeta _businessYearMeta =
      const VerificationMeta('businessYear');
  GeneratedIntColumn _businessYear;
  @override
  GeneratedIntColumn get businessYear =>
      _businessYear ??= _constructBusinessYear();
  GeneratedIntColumn _constructBusinessYear() {
    return GeneratedIntColumn(
      'business_year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _periodMeta = const VerificationMeta('period');
  GeneratedIntColumn _period;
  @override
  GeneratedIntColumn get period => _period ??= _constructPeriod();
  GeneratedIntColumn _constructPeriod() {
    return GeneratedIntColumn(
      'period',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionNoMeta = const VerificationMeta('questionNo');
  GeneratedTextColumn _questionNo;
  @override
  GeneratedTextColumn get questionNo => _questionNo ??= _constructQuestionNo();
  GeneratedTextColumn _constructQuestionNo() {
    return GeneratedTextColumn(
      'question_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _subjectIdMeta = const VerificationMeta('subjectId');
  GeneratedIntColumn _subjectId;
  @override
  GeneratedIntColumn get subjectId => _subjectId ??= _constructSubjectId();
  GeneratedIntColumn _constructSubjectId() {
    return GeneratedIntColumn(
      'subject_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _compulsoryTypeMeta =
      const VerificationMeta('compulsoryType');
  GeneratedIntColumn _compulsoryType;
  @override
  GeneratedIntColumn get compulsoryType =>
      _compulsoryType ??= _constructCompulsoryType();
  GeneratedIntColumn _constructCompulsoryType() {
    return GeneratedIntColumn(
      'compulsory_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _answerTypeMeta = const VerificationMeta('answerType');
  GeneratedIntColumn _answerType;
  @override
  GeneratedIntColumn get answerType => _answerType ??= _constructAnswerType();
  GeneratedIntColumn _constructAnswerType() {
    return GeneratedIntColumn(
      'answer_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionTextMeta =
      const VerificationMeta('questionText');
  GeneratedTextColumn _questionText;
  @override
  GeneratedTextColumn get questionText =>
      _questionText ??= _constructQuestionText();
  GeneratedTextColumn _constructQuestionText() {
    return GeneratedTextColumn(
      'question_text',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberAnswerMeta =
      const VerificationMeta('numberAnswer');
  GeneratedIntColumn _numberAnswer;
  @override
  GeneratedIntColumn get numberAnswer =>
      _numberAnswer ??= _constructNumberAnswer();
  GeneratedIntColumn _constructNumberAnswer() {
    return GeneratedIntColumn(
      'number_answer',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        businessYear,
        period,
        questionNo,
        subjectId,
        compulsoryType,
        answerType,
        questionText,
        numberAnswer
      ];
  @override
  $QuestionHeadersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'question_headers';
  @override
  final String actualTableName = 'question_headers';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionHeader> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('business_year')) {
      context.handle(
          _businessYearMeta,
          businessYear.isAcceptableOrUnknown(
              data['business_year'], _businessYearMeta));
    } else if (isInserting) {
      context.missing(_businessYearMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period'], _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('question_no')) {
      context.handle(
          _questionNoMeta,
          questionNo.isAcceptableOrUnknown(
              data['question_no'], _questionNoMeta));
    } else if (isInserting) {
      context.missing(_questionNoMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id'], _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('compulsory_type')) {
      context.handle(
          _compulsoryTypeMeta,
          compulsoryType.isAcceptableOrUnknown(
              data['compulsory_type'], _compulsoryTypeMeta));
    } else if (isInserting) {
      context.missing(_compulsoryTypeMeta);
    }
    if (data.containsKey('answer_type')) {
      context.handle(
          _answerTypeMeta,
          answerType.isAcceptableOrUnknown(
              data['answer_type'], _answerTypeMeta));
    } else if (isInserting) {
      context.missing(_answerTypeMeta);
    }
    if (data.containsKey('question_text')) {
      context.handle(
          _questionTextMeta,
          questionText.isAcceptableOrUnknown(
              data['question_text'], _questionTextMeta));
    } else if (isInserting) {
      context.missing(_questionTextMeta);
    }
    if (data.containsKey('number_answer')) {
      context.handle(
          _numberAnswerMeta,
          numberAnswer.isAcceptableOrUnknown(
              data['number_answer'], _numberAnswerMeta));
    } else if (isInserting) {
      context.missing(_numberAnswerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {businessYear, period, questionNo};
  @override
  QuestionHeader map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return QuestionHeader.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $QuestionHeadersTable createAlias(String alias) {
    return $QuestionHeadersTable(_db, alias);
  }
}

class Subject extends DataClass implements Insertable<Subject> {
  final int id;
  final String subjectName;
  Subject({@required this.id, @required this.subjectName});
  factory Subject.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Subject(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      subjectName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}subject_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || subjectName != null) {
      map['subject_name'] = Variable<String>(subjectName);
    }
    return map;
  }

  SubjectsCompanion toCompanion(bool nullToAbsent) {
    return SubjectsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      subjectName: subjectName == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectName),
    );
  }

  factory Subject.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Subject(
      id: serializer.fromJson<int>(json['id']),
      subjectName: serializer.fromJson<String>(json['subjectName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'subjectName': serializer.toJson<String>(subjectName),
    };
  }

  Subject copyWith({int id, String subjectName}) => Subject(
        id: id ?? this.id,
        subjectName: subjectName ?? this.subjectName,
      );
  @override
  String toString() {
    return (StringBuffer('Subject(')
          ..write('id: $id, ')
          ..write('subjectName: $subjectName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, subjectName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Subject &&
          other.id == this.id &&
          other.subjectName == this.subjectName);
}

class SubjectsCompanion extends UpdateCompanion<Subject> {
  final Value<int> id;
  final Value<String> subjectName;
  const SubjectsCompanion({
    this.id = const Value.absent(),
    this.subjectName = const Value.absent(),
  });
  SubjectsCompanion.insert({
    this.id = const Value.absent(),
    @required String subjectName,
  }) : subjectName = Value(subjectName);
  static Insertable<Subject> custom({
    Expression<int> id,
    Expression<String> subjectName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (subjectName != null) 'subject_name': subjectName,
    });
  }

  SubjectsCompanion copyWith({Value<int> id, Value<String> subjectName}) {
    return SubjectsCompanion(
      id: id ?? this.id,
      subjectName: subjectName ?? this.subjectName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (subjectName.present) {
      map['subject_name'] = Variable<String>(subjectName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsCompanion(')
          ..write('id: $id, ')
          ..write('subjectName: $subjectName')
          ..write(')'))
        .toString();
  }
}

class $SubjectsTable extends Subjects with TableInfo<$SubjectsTable, Subject> {
  final GeneratedDatabase _db;
  final String _alias;
  $SubjectsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _subjectNameMeta =
      const VerificationMeta('subjectName');
  GeneratedTextColumn _subjectName;
  @override
  GeneratedTextColumn get subjectName =>
      _subjectName ??= _constructSubjectName();
  GeneratedTextColumn _constructSubjectName() {
    return GeneratedTextColumn(
      'subject_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, subjectName];
  @override
  $SubjectsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'subjects';
  @override
  final String actualTableName = 'subjects';
  @override
  VerificationContext validateIntegrity(Insertable<Subject> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('subject_name')) {
      context.handle(
          _subjectNameMeta,
          subjectName.isAcceptableOrUnknown(
              data['subject_name'], _subjectNameMeta));
    } else if (isInserting) {
      context.missing(_subjectNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Subject map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Subject.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SubjectsTable createAlias(String alias) {
    return $SubjectsTable(_db, alias);
  }
}

class QuestionOption extends DataClass implements Insertable<QuestionOption> {
  final int businessYear;
  final int period;
  final String questionNo;
  final String optionCd;
  final String optionText;
  final int correctCype;
  QuestionOption(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.optionCd,
      @required this.optionText,
      @required this.correctCype});
  factory QuestionOption.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return QuestionOption(
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      optionCd: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}option_cd']),
      optionText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}option_text']),
      correctCype: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_cype']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || businessYear != null) {
      map['business_year'] = Variable<int>(businessYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int>(period);
    }
    if (!nullToAbsent || questionNo != null) {
      map['question_no'] = Variable<String>(questionNo);
    }
    if (!nullToAbsent || optionCd != null) {
      map['option_cd'] = Variable<String>(optionCd);
    }
    if (!nullToAbsent || optionText != null) {
      map['option_text'] = Variable<String>(optionText);
    }
    if (!nullToAbsent || correctCype != null) {
      map['correct_cype'] = Variable<int>(correctCype);
    }
    return map;
  }

  QuestionOptionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionOptionsCompanion(
      businessYear: businessYear == null && nullToAbsent
          ? const Value.absent()
          : Value(businessYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      questionNo: questionNo == null && nullToAbsent
          ? const Value.absent()
          : Value(questionNo),
      optionCd: optionCd == null && nullToAbsent
          ? const Value.absent()
          : Value(optionCd),
      optionText: optionText == null && nullToAbsent
          ? const Value.absent()
          : Value(optionText),
      correctCype: correctCype == null && nullToAbsent
          ? const Value.absent()
          : Value(correctCype),
    );
  }

  factory QuestionOption.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return QuestionOption(
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      optionCd: serializer.fromJson<String>(json['optionCd']),
      optionText: serializer.fromJson<String>(json['optionText']),
      correctCype: serializer.fromJson<int>(json['correctCype']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'optionCd': serializer.toJson<String>(optionCd),
      'optionText': serializer.toJson<String>(optionText),
      'correctCype': serializer.toJson<int>(correctCype),
    };
  }

  QuestionOption copyWith(
          {int businessYear,
          int period,
          String questionNo,
          String optionCd,
          String optionText,
          int correctCype}) =>
      QuestionOption(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        optionCd: optionCd ?? this.optionCd,
        optionText: optionText ?? this.optionText,
        correctCype: correctCype ?? this.correctCype,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionOption(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('optionCd: $optionCd, ')
          ..write('optionText: $optionText, ')
          ..write('correctCype: $correctCype')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      businessYear.hashCode,
      $mrjc(
          period.hashCode,
          $mrjc(
              questionNo.hashCode,
              $mrjc(optionCd.hashCode,
                  $mrjc(optionText.hashCode, correctCype.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionOption &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.optionCd == this.optionCd &&
          other.optionText == this.optionText &&
          other.correctCype == this.correctCype);
}

class QuestionOptionsCompanion extends UpdateCompanion<QuestionOption> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<String> optionCd;
  final Value<String> optionText;
  final Value<int> correctCype;
  const QuestionOptionsCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.optionCd = const Value.absent(),
    this.optionText = const Value.absent(),
    this.correctCype = const Value.absent(),
  });
  QuestionOptionsCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required String optionCd,
    @required String optionText,
    @required int correctCype,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        optionCd = Value(optionCd),
        optionText = Value(optionText),
        correctCype = Value(correctCype);
  static Insertable<QuestionOption> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<String> optionCd,
    Expression<String> optionText,
    Expression<int> correctCype,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (optionCd != null) 'option_cd': optionCd,
      if (optionText != null) 'option_text': optionText,
      if (correctCype != null) 'correct_cype': correctCype,
    });
  }

  QuestionOptionsCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<String> optionCd,
      Value<String> optionText,
      Value<int> correctCype}) {
    return QuestionOptionsCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      optionCd: optionCd ?? this.optionCd,
      optionText: optionText ?? this.optionText,
      correctCype: correctCype ?? this.correctCype,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (businessYear.present) {
      map['business_year'] = Variable<int>(businessYear.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (questionNo.present) {
      map['question_no'] = Variable<String>(questionNo.value);
    }
    if (optionCd.present) {
      map['option_cd'] = Variable<String>(optionCd.value);
    }
    if (optionText.present) {
      map['option_text'] = Variable<String>(optionText.value);
    }
    if (correctCype.present) {
      map['correct_cype'] = Variable<int>(correctCype.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionOptionsCompanion(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('optionCd: $optionCd, ')
          ..write('optionText: $optionText, ')
          ..write('correctCype: $correctCype')
          ..write(')'))
        .toString();
  }
}

class $QuestionOptionsTable extends QuestionOptions
    with TableInfo<$QuestionOptionsTable, QuestionOption> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionOptionsTable(this._db, [this._alias]);
  final VerificationMeta _businessYearMeta =
      const VerificationMeta('businessYear');
  GeneratedIntColumn _businessYear;
  @override
  GeneratedIntColumn get businessYear =>
      _businessYear ??= _constructBusinessYear();
  GeneratedIntColumn _constructBusinessYear() {
    return GeneratedIntColumn(
      'business_year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _periodMeta = const VerificationMeta('period');
  GeneratedIntColumn _period;
  @override
  GeneratedIntColumn get period => _period ??= _constructPeriod();
  GeneratedIntColumn _constructPeriod() {
    return GeneratedIntColumn(
      'period',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionNoMeta = const VerificationMeta('questionNo');
  GeneratedTextColumn _questionNo;
  @override
  GeneratedTextColumn get questionNo => _questionNo ??= _constructQuestionNo();
  GeneratedTextColumn _constructQuestionNo() {
    return GeneratedTextColumn(
      'question_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _optionCdMeta = const VerificationMeta('optionCd');
  GeneratedTextColumn _optionCd;
  @override
  GeneratedTextColumn get optionCd => _optionCd ??= _constructOptionCd();
  GeneratedTextColumn _constructOptionCd() {
    return GeneratedTextColumn(
      'option_cd',
      $tableName,
      false,
    );
  }

  final VerificationMeta _optionTextMeta = const VerificationMeta('optionText');
  GeneratedTextColumn _optionText;
  @override
  GeneratedTextColumn get optionText => _optionText ??= _constructOptionText();
  GeneratedTextColumn _constructOptionText() {
    return GeneratedTextColumn(
      'option_text',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctCypeMeta =
      const VerificationMeta('correctCype');
  GeneratedIntColumn _correctCype;
  @override
  GeneratedIntColumn get correctCype =>
      _correctCype ??= _constructCorrectCype();
  GeneratedIntColumn _constructCorrectCype() {
    return GeneratedIntColumn(
      'correct_cype',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [businessYear, period, questionNo, optionCd, optionText, correctCype];
  @override
  $QuestionOptionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'question_options';
  @override
  final String actualTableName = 'question_options';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionOption> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('business_year')) {
      context.handle(
          _businessYearMeta,
          businessYear.isAcceptableOrUnknown(
              data['business_year'], _businessYearMeta));
    } else if (isInserting) {
      context.missing(_businessYearMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period'], _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('question_no')) {
      context.handle(
          _questionNoMeta,
          questionNo.isAcceptableOrUnknown(
              data['question_no'], _questionNoMeta));
    } else if (isInserting) {
      context.missing(_questionNoMeta);
    }
    if (data.containsKey('option_cd')) {
      context.handle(_optionCdMeta,
          optionCd.isAcceptableOrUnknown(data['option_cd'], _optionCdMeta));
    } else if (isInserting) {
      context.missing(_optionCdMeta);
    }
    if (data.containsKey('option_text')) {
      context.handle(
          _optionTextMeta,
          optionText.isAcceptableOrUnknown(
              data['option_text'], _optionTextMeta));
    } else if (isInserting) {
      context.missing(_optionTextMeta);
    }
    if (data.containsKey('correct_cype')) {
      context.handle(
          _correctCypeMeta,
          correctCype.isAcceptableOrUnknown(
              data['correct_cype'], _correctCypeMeta));
    } else if (isInserting) {
      context.missing(_correctCypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {businessYear, period, questionNo, optionCd};
  @override
  QuestionOption map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return QuestionOption.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $QuestionOptionsTable createAlias(String alias) {
    return $QuestionOptionsTable(_db, alias);
  }
}

class QuestionFile extends DataClass implements Insertable<QuestionFile> {
  final int businessYear;
  final int period;
  final String questionNo;
  final int questionAnswerType;
  final int fileNo;
  final String filepPath;
  final int filetype;
  QuestionFile(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.questionAnswerType,
      @required this.fileNo,
      @required this.filepPath,
      @required this.filetype});
  factory QuestionFile.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return QuestionFile(
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      questionAnswerType: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}question_answer_type']),
      fileNo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}file_no']),
      filepPath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}filep_path']),
      filetype:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}filetype']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || businessYear != null) {
      map['business_year'] = Variable<int>(businessYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int>(period);
    }
    if (!nullToAbsent || questionNo != null) {
      map['question_no'] = Variable<String>(questionNo);
    }
    if (!nullToAbsent || questionAnswerType != null) {
      map['question_answer_type'] = Variable<int>(questionAnswerType);
    }
    if (!nullToAbsent || fileNo != null) {
      map['file_no'] = Variable<int>(fileNo);
    }
    if (!nullToAbsent || filepPath != null) {
      map['filep_path'] = Variable<String>(filepPath);
    }
    if (!nullToAbsent || filetype != null) {
      map['filetype'] = Variable<int>(filetype);
    }
    return map;
  }

  QuestionFilesCompanion toCompanion(bool nullToAbsent) {
    return QuestionFilesCompanion(
      businessYear: businessYear == null && nullToAbsent
          ? const Value.absent()
          : Value(businessYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      questionNo: questionNo == null && nullToAbsent
          ? const Value.absent()
          : Value(questionNo),
      questionAnswerType: questionAnswerType == null && nullToAbsent
          ? const Value.absent()
          : Value(questionAnswerType),
      fileNo:
          fileNo == null && nullToAbsent ? const Value.absent() : Value(fileNo),
      filepPath: filepPath == null && nullToAbsent
          ? const Value.absent()
          : Value(filepPath),
      filetype: filetype == null && nullToAbsent
          ? const Value.absent()
          : Value(filetype),
    );
  }

  factory QuestionFile.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return QuestionFile(
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      questionAnswerType: serializer.fromJson<int>(json['questionAnswerType']),
      fileNo: serializer.fromJson<int>(json['fileNo']),
      filepPath: serializer.fromJson<String>(json['filepPath']),
      filetype: serializer.fromJson<int>(json['filetype']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'questionAnswerType': serializer.toJson<int>(questionAnswerType),
      'fileNo': serializer.toJson<int>(fileNo),
      'filepPath': serializer.toJson<String>(filepPath),
      'filetype': serializer.toJson<int>(filetype),
    };
  }

  QuestionFile copyWith(
          {int businessYear,
          int period,
          String questionNo,
          int questionAnswerType,
          int fileNo,
          String filepPath,
          int filetype}) =>
      QuestionFile(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        questionAnswerType: questionAnswerType ?? this.questionAnswerType,
        fileNo: fileNo ?? this.fileNo,
        filepPath: filepPath ?? this.filepPath,
        filetype: filetype ?? this.filetype,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionFile(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('questionAnswerType: $questionAnswerType, ')
          ..write('fileNo: $fileNo, ')
          ..write('filepPath: $filepPath, ')
          ..write('filetype: $filetype')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      businessYear.hashCode,
      $mrjc(
          period.hashCode,
          $mrjc(
              questionNo.hashCode,
              $mrjc(
                  questionAnswerType.hashCode,
                  $mrjc(fileNo.hashCode,
                      $mrjc(filepPath.hashCode, filetype.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionFile &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.questionAnswerType == this.questionAnswerType &&
          other.fileNo == this.fileNo &&
          other.filepPath == this.filepPath &&
          other.filetype == this.filetype);
}

class QuestionFilesCompanion extends UpdateCompanion<QuestionFile> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<int> questionAnswerType;
  final Value<int> fileNo;
  final Value<String> filepPath;
  final Value<int> filetype;
  const QuestionFilesCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.questionAnswerType = const Value.absent(),
    this.fileNo = const Value.absent(),
    this.filepPath = const Value.absent(),
    this.filetype = const Value.absent(),
  });
  QuestionFilesCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required int questionAnswerType,
    @required int fileNo,
    @required String filepPath,
    @required int filetype,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        questionAnswerType = Value(questionAnswerType),
        fileNo = Value(fileNo),
        filepPath = Value(filepPath),
        filetype = Value(filetype);
  static Insertable<QuestionFile> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<int> questionAnswerType,
    Expression<int> fileNo,
    Expression<String> filepPath,
    Expression<int> filetype,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (questionAnswerType != null)
        'question_answer_type': questionAnswerType,
      if (fileNo != null) 'file_no': fileNo,
      if (filepPath != null) 'filep_path': filepPath,
      if (filetype != null) 'filetype': filetype,
    });
  }

  QuestionFilesCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<int> questionAnswerType,
      Value<int> fileNo,
      Value<String> filepPath,
      Value<int> filetype}) {
    return QuestionFilesCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      questionAnswerType: questionAnswerType ?? this.questionAnswerType,
      fileNo: fileNo ?? this.fileNo,
      filepPath: filepPath ?? this.filepPath,
      filetype: filetype ?? this.filetype,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (businessYear.present) {
      map['business_year'] = Variable<int>(businessYear.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (questionNo.present) {
      map['question_no'] = Variable<String>(questionNo.value);
    }
    if (questionAnswerType.present) {
      map['question_answer_type'] = Variable<int>(questionAnswerType.value);
    }
    if (fileNo.present) {
      map['file_no'] = Variable<int>(fileNo.value);
    }
    if (filepPath.present) {
      map['filep_path'] = Variable<String>(filepPath.value);
    }
    if (filetype.present) {
      map['filetype'] = Variable<int>(filetype.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionFilesCompanion(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('questionAnswerType: $questionAnswerType, ')
          ..write('fileNo: $fileNo, ')
          ..write('filepPath: $filepPath, ')
          ..write('filetype: $filetype')
          ..write(')'))
        .toString();
  }
}

class $QuestionFilesTable extends QuestionFiles
    with TableInfo<$QuestionFilesTable, QuestionFile> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionFilesTable(this._db, [this._alias]);
  final VerificationMeta _businessYearMeta =
      const VerificationMeta('businessYear');
  GeneratedIntColumn _businessYear;
  @override
  GeneratedIntColumn get businessYear =>
      _businessYear ??= _constructBusinessYear();
  GeneratedIntColumn _constructBusinessYear() {
    return GeneratedIntColumn(
      'business_year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _periodMeta = const VerificationMeta('period');
  GeneratedIntColumn _period;
  @override
  GeneratedIntColumn get period => _period ??= _constructPeriod();
  GeneratedIntColumn _constructPeriod() {
    return GeneratedIntColumn(
      'period',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionNoMeta = const VerificationMeta('questionNo');
  GeneratedTextColumn _questionNo;
  @override
  GeneratedTextColumn get questionNo => _questionNo ??= _constructQuestionNo();
  GeneratedTextColumn _constructQuestionNo() {
    return GeneratedTextColumn(
      'question_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionAnswerTypeMeta =
      const VerificationMeta('questionAnswerType');
  GeneratedIntColumn _questionAnswerType;
  @override
  GeneratedIntColumn get questionAnswerType =>
      _questionAnswerType ??= _constructQuestionAnswerType();
  GeneratedIntColumn _constructQuestionAnswerType() {
    return GeneratedIntColumn(
      'question_answer_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fileNoMeta = const VerificationMeta('fileNo');
  GeneratedIntColumn _fileNo;
  @override
  GeneratedIntColumn get fileNo => _fileNo ??= _constructFileNo();
  GeneratedIntColumn _constructFileNo() {
    return GeneratedIntColumn(
      'file_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _filepPathMeta = const VerificationMeta('filepPath');
  GeneratedTextColumn _filepPath;
  @override
  GeneratedTextColumn get filepPath => _filepPath ??= _constructFilepPath();
  GeneratedTextColumn _constructFilepPath() {
    return GeneratedTextColumn(
      'filep_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _filetypeMeta = const VerificationMeta('filetype');
  GeneratedIntColumn _filetype;
  @override
  GeneratedIntColumn get filetype => _filetype ??= _constructFiletype();
  GeneratedIntColumn _constructFiletype() {
    return GeneratedIntColumn(
      'filetype',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        businessYear,
        period,
        questionNo,
        questionAnswerType,
        fileNo,
        filepPath,
        filetype
      ];
  @override
  $QuestionFilesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'question_files';
  @override
  final String actualTableName = 'question_files';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionFile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('business_year')) {
      context.handle(
          _businessYearMeta,
          businessYear.isAcceptableOrUnknown(
              data['business_year'], _businessYearMeta));
    } else if (isInserting) {
      context.missing(_businessYearMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period'], _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('question_no')) {
      context.handle(
          _questionNoMeta,
          questionNo.isAcceptableOrUnknown(
              data['question_no'], _questionNoMeta));
    } else if (isInserting) {
      context.missing(_questionNoMeta);
    }
    if (data.containsKey('question_answer_type')) {
      context.handle(
          _questionAnswerTypeMeta,
          questionAnswerType.isAcceptableOrUnknown(
              data['question_answer_type'], _questionAnswerTypeMeta));
    } else if (isInserting) {
      context.missing(_questionAnswerTypeMeta);
    }
    if (data.containsKey('file_no')) {
      context.handle(_fileNoMeta,
          fileNo.isAcceptableOrUnknown(data['file_no'], _fileNoMeta));
    } else if (isInserting) {
      context.missing(_fileNoMeta);
    }
    if (data.containsKey('filep_path')) {
      context.handle(_filepPathMeta,
          filepPath.isAcceptableOrUnknown(data['filep_path'], _filepPathMeta));
    } else if (isInserting) {
      context.missing(_filepPathMeta);
    }
    if (data.containsKey('filetype')) {
      context.handle(_filetypeMeta,
          filetype.isAcceptableOrUnknown(data['filetype'], _filetypeMeta));
    } else if (isInserting) {
      context.missing(_filetypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {businessYear, period, questionNo, questionAnswerType, fileNo};
  @override
  QuestionFile map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return QuestionFile.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $QuestionFilesTable createAlias(String alias) {
    return $QuestionFilesTable(_db, alias);
  }
}

class QuestionTrying extends DataClass implements Insertable<QuestionTrying> {
  final int id;
  final int businessYear;
  final int period;
  final String questionNo;
  final bool endFlg;
  final int correctType;
  final String singleAnswer;
  final String multipleAnswer;
  final int numberAnswer;
  QuestionTrying(
      {@required this.id,
      @required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.endFlg,
      @required this.correctType,
      @required this.singleAnswer,
      @required this.multipleAnswer,
      @required this.numberAnswer});
  factory QuestionTrying.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return QuestionTrying(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      endFlg:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}end_flg']),
      correctType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type']),
      singleAnswer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}single_answer']),
      multipleAnswer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}multiple_answer']),
      numberAnswer: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_answer']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || businessYear != null) {
      map['business_year'] = Variable<int>(businessYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<int>(period);
    }
    if (!nullToAbsent || questionNo != null) {
      map['question_no'] = Variable<String>(questionNo);
    }
    if (!nullToAbsent || endFlg != null) {
      map['end_flg'] = Variable<bool>(endFlg);
    }
    if (!nullToAbsent || correctType != null) {
      map['correct_type'] = Variable<int>(correctType);
    }
    if (!nullToAbsent || singleAnswer != null) {
      map['single_answer'] = Variable<String>(singleAnswer);
    }
    if (!nullToAbsent || multipleAnswer != null) {
      map['multiple_answer'] = Variable<String>(multipleAnswer);
    }
    if (!nullToAbsent || numberAnswer != null) {
      map['number_answer'] = Variable<int>(numberAnswer);
    }
    return map;
  }

  QuestionTryingsCompanion toCompanion(bool nullToAbsent) {
    return QuestionTryingsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      businessYear: businessYear == null && nullToAbsent
          ? const Value.absent()
          : Value(businessYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      questionNo: questionNo == null && nullToAbsent
          ? const Value.absent()
          : Value(questionNo),
      endFlg:
          endFlg == null && nullToAbsent ? const Value.absent() : Value(endFlg),
      correctType: correctType == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType),
      singleAnswer: singleAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(singleAnswer),
      multipleAnswer: multipleAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(multipleAnswer),
      numberAnswer: numberAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(numberAnswer),
    );
  }

  factory QuestionTrying.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return QuestionTrying(
      id: serializer.fromJson<int>(json['id']),
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      endFlg: serializer.fromJson<bool>(json['endFlg']),
      correctType: serializer.fromJson<int>(json['correctType']),
      singleAnswer: serializer.fromJson<String>(json['singleAnswer']),
      multipleAnswer: serializer.fromJson<String>(json['multipleAnswer']),
      numberAnswer: serializer.fromJson<int>(json['numberAnswer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'endFlg': serializer.toJson<bool>(endFlg),
      'correctType': serializer.toJson<int>(correctType),
      'singleAnswer': serializer.toJson<String>(singleAnswer),
      'multipleAnswer': serializer.toJson<String>(multipleAnswer),
      'numberAnswer': serializer.toJson<int>(numberAnswer),
    };
  }

  QuestionTrying copyWith(
          {int id,
          int businessYear,
          int period,
          String questionNo,
          bool endFlg,
          int correctType,
          String singleAnswer,
          String multipleAnswer,
          int numberAnswer}) =>
      QuestionTrying(
        id: id ?? this.id,
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        endFlg: endFlg ?? this.endFlg,
        correctType: correctType ?? this.correctType,
        singleAnswer: singleAnswer ?? this.singleAnswer,
        multipleAnswer: multipleAnswer ?? this.multipleAnswer,
        numberAnswer: numberAnswer ?? this.numberAnswer,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionTrying(')
          ..write('id: $id, ')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('endFlg: $endFlg, ')
          ..write('correctType: $correctType, ')
          ..write('singleAnswer: $singleAnswer, ')
          ..write('multipleAnswer: $multipleAnswer, ')
          ..write('numberAnswer: $numberAnswer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          businessYear.hashCode,
          $mrjc(
              period.hashCode,
              $mrjc(
                  questionNo.hashCode,
                  $mrjc(
                      endFlg.hashCode,
                      $mrjc(
                          correctType.hashCode,
                          $mrjc(
                              singleAnswer.hashCode,
                              $mrjc(multipleAnswer.hashCode,
                                  numberAnswer.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionTrying &&
          other.id == this.id &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.endFlg == this.endFlg &&
          other.correctType == this.correctType &&
          other.singleAnswer == this.singleAnswer &&
          other.multipleAnswer == this.multipleAnswer &&
          other.numberAnswer == this.numberAnswer);
}

class QuestionTryingsCompanion extends UpdateCompanion<QuestionTrying> {
  final Value<int> id;
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<bool> endFlg;
  final Value<int> correctType;
  final Value<String> singleAnswer;
  final Value<String> multipleAnswer;
  final Value<int> numberAnswer;
  const QuestionTryingsCompanion({
    this.id = const Value.absent(),
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.endFlg = const Value.absent(),
    this.correctType = const Value.absent(),
    this.singleAnswer = const Value.absent(),
    this.multipleAnswer = const Value.absent(),
    this.numberAnswer = const Value.absent(),
  });
  QuestionTryingsCompanion.insert({
    this.id = const Value.absent(),
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required bool endFlg,
    @required int correctType,
    @required String singleAnswer,
    @required String multipleAnswer,
    @required int numberAnswer,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        endFlg = Value(endFlg),
        correctType = Value(correctType),
        singleAnswer = Value(singleAnswer),
        multipleAnswer = Value(multipleAnswer),
        numberAnswer = Value(numberAnswer);
  static Insertable<QuestionTrying> custom({
    Expression<int> id,
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<bool> endFlg,
    Expression<int> correctType,
    Expression<String> singleAnswer,
    Expression<String> multipleAnswer,
    Expression<int> numberAnswer,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (endFlg != null) 'end_flg': endFlg,
      if (correctType != null) 'correct_type': correctType,
      if (singleAnswer != null) 'single_answer': singleAnswer,
      if (multipleAnswer != null) 'multiple_answer': multipleAnswer,
      if (numberAnswer != null) 'number_answer': numberAnswer,
    });
  }

  QuestionTryingsCompanion copyWith(
      {Value<int> id,
      Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<bool> endFlg,
      Value<int> correctType,
      Value<String> singleAnswer,
      Value<String> multipleAnswer,
      Value<int> numberAnswer}) {
    return QuestionTryingsCompanion(
      id: id ?? this.id,
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      endFlg: endFlg ?? this.endFlg,
      correctType: correctType ?? this.correctType,
      singleAnswer: singleAnswer ?? this.singleAnswer,
      multipleAnswer: multipleAnswer ?? this.multipleAnswer,
      numberAnswer: numberAnswer ?? this.numberAnswer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (businessYear.present) {
      map['business_year'] = Variable<int>(businessYear.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (questionNo.present) {
      map['question_no'] = Variable<String>(questionNo.value);
    }
    if (endFlg.present) {
      map['end_flg'] = Variable<bool>(endFlg.value);
    }
    if (correctType.present) {
      map['correct_type'] = Variable<int>(correctType.value);
    }
    if (singleAnswer.present) {
      map['single_answer'] = Variable<String>(singleAnswer.value);
    }
    if (multipleAnswer.present) {
      map['multiple_answer'] = Variable<String>(multipleAnswer.value);
    }
    if (numberAnswer.present) {
      map['number_answer'] = Variable<int>(numberAnswer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionTryingsCompanion(')
          ..write('id: $id, ')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('endFlg: $endFlg, ')
          ..write('correctType: $correctType, ')
          ..write('singleAnswer: $singleAnswer, ')
          ..write('multipleAnswer: $multipleAnswer, ')
          ..write('numberAnswer: $numberAnswer')
          ..write(')'))
        .toString();
  }
}

class $QuestionTryingsTable extends QuestionTryings
    with TableInfo<$QuestionTryingsTable, QuestionTrying> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionTryingsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _businessYearMeta =
      const VerificationMeta('businessYear');
  GeneratedIntColumn _businessYear;
  @override
  GeneratedIntColumn get businessYear =>
      _businessYear ??= _constructBusinessYear();
  GeneratedIntColumn _constructBusinessYear() {
    return GeneratedIntColumn(
      'business_year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _periodMeta = const VerificationMeta('period');
  GeneratedIntColumn _period;
  @override
  GeneratedIntColumn get period => _period ??= _constructPeriod();
  GeneratedIntColumn _constructPeriod() {
    return GeneratedIntColumn(
      'period',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionNoMeta = const VerificationMeta('questionNo');
  GeneratedTextColumn _questionNo;
  @override
  GeneratedTextColumn get questionNo => _questionNo ??= _constructQuestionNo();
  GeneratedTextColumn _constructQuestionNo() {
    return GeneratedTextColumn(
      'question_no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _endFlgMeta = const VerificationMeta('endFlg');
  GeneratedBoolColumn _endFlg;
  @override
  GeneratedBoolColumn get endFlg => _endFlg ??= _constructEndFlg();
  GeneratedBoolColumn _constructEndFlg() {
    return GeneratedBoolColumn(
      'end_flg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctTypeMeta =
      const VerificationMeta('correctType');
  GeneratedIntColumn _correctType;
  @override
  GeneratedIntColumn get correctType =>
      _correctType ??= _constructCorrectType();
  GeneratedIntColumn _constructCorrectType() {
    return GeneratedIntColumn(
      'correct_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _singleAnswerMeta =
      const VerificationMeta('singleAnswer');
  GeneratedTextColumn _singleAnswer;
  @override
  GeneratedTextColumn get singleAnswer =>
      _singleAnswer ??= _constructSingleAnswer();
  GeneratedTextColumn _constructSingleAnswer() {
    return GeneratedTextColumn(
      'single_answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _multipleAnswerMeta =
      const VerificationMeta('multipleAnswer');
  GeneratedTextColumn _multipleAnswer;
  @override
  GeneratedTextColumn get multipleAnswer =>
      _multipleAnswer ??= _constructMultipleAnswer();
  GeneratedTextColumn _constructMultipleAnswer() {
    return GeneratedTextColumn(
      'multiple_answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberAnswerMeta =
      const VerificationMeta('numberAnswer');
  GeneratedIntColumn _numberAnswer;
  @override
  GeneratedIntColumn get numberAnswer =>
      _numberAnswer ??= _constructNumberAnswer();
  GeneratedIntColumn _constructNumberAnswer() {
    return GeneratedIntColumn(
      'number_answer',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        businessYear,
        period,
        questionNo,
        endFlg,
        correctType,
        singleAnswer,
        multipleAnswer,
        numberAnswer
      ];
  @override
  $QuestionTryingsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'question_tryings';
  @override
  final String actualTableName = 'question_tryings';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionTrying> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('business_year')) {
      context.handle(
          _businessYearMeta,
          businessYear.isAcceptableOrUnknown(
              data['business_year'], _businessYearMeta));
    } else if (isInserting) {
      context.missing(_businessYearMeta);
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period'], _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    if (data.containsKey('question_no')) {
      context.handle(
          _questionNoMeta,
          questionNo.isAcceptableOrUnknown(
              data['question_no'], _questionNoMeta));
    } else if (isInserting) {
      context.missing(_questionNoMeta);
    }
    if (data.containsKey('end_flg')) {
      context.handle(_endFlgMeta,
          endFlg.isAcceptableOrUnknown(data['end_flg'], _endFlgMeta));
    } else if (isInserting) {
      context.missing(_endFlgMeta);
    }
    if (data.containsKey('correct_type')) {
      context.handle(
          _correctTypeMeta,
          correctType.isAcceptableOrUnknown(
              data['correct_type'], _correctTypeMeta));
    } else if (isInserting) {
      context.missing(_correctTypeMeta);
    }
    if (data.containsKey('single_answer')) {
      context.handle(
          _singleAnswerMeta,
          singleAnswer.isAcceptableOrUnknown(
              data['single_answer'], _singleAnswerMeta));
    } else if (isInserting) {
      context.missing(_singleAnswerMeta);
    }
    if (data.containsKey('multiple_answer')) {
      context.handle(
          _multipleAnswerMeta,
          multipleAnswer.isAcceptableOrUnknown(
              data['multiple_answer'], _multipleAnswerMeta));
    } else if (isInserting) {
      context.missing(_multipleAnswerMeta);
    }
    if (data.containsKey('number_answer')) {
      context.handle(
          _numberAnswerMeta,
          numberAnswer.isAcceptableOrUnknown(
              data['number_answer'], _numberAnswerMeta));
    } else if (isInserting) {
      context.missing(_numberAnswerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestionTrying map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return QuestionTrying.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $QuestionTryingsTable createAlias(String alias) {
    return $QuestionTryingsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ParametersTable _parameters;
  $ParametersTable get parameters => _parameters ??= $ParametersTable(this);
  $StudyStatusTable _studyStatus;
  $StudyStatusTable get studyStatus => _studyStatus ??= $StudyStatusTable(this);
  $QuestionHeadersTable _questionHeaders;
  $QuestionHeadersTable get questionHeaders =>
      _questionHeaders ??= $QuestionHeadersTable(this);
  $SubjectsTable _subjects;
  $SubjectsTable get subjects => _subjects ??= $SubjectsTable(this);
  $QuestionOptionsTable _questionOptions;
  $QuestionOptionsTable get questionOptions =>
      _questionOptions ??= $QuestionOptionsTable(this);
  $QuestionFilesTable _questionFiles;
  $QuestionFilesTable get questionFiles =>
      _questionFiles ??= $QuestionFilesTable(this);
  $QuestionTryingsTable _questionTryings;
  $QuestionTryingsTable get questionTryings =>
      _questionTryings ??= $QuestionTryingsTable(this);
  Selectable<Parameter> _selectParameterByCode(String _code) {
    return customSelect('SELECT * FROM parameters WHERE code = :_code',
        variables: [Variable<String>(_code)],
        readsFrom: {parameters}).map(parameters.mapFromRow);
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        parameters,
        studyStatus,
        questionHeaders,
        subjects,
        questionOptions,
        questionFiles,
        questionTryings
      ];
}
