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

class QuestionHeader extends DataClass implements Insertable<QuestionHeader> {
  final int businessYear;
  final int period;
  final String questionNo;
  final int pediatricsType;
  final int subjectId;
  final int compulsoryType;
  final int answerType;
  final String questionText;
  final int numberAnswer;
  final int correctType1;
  final int correctType2;
  final int correctType3;
  final bool favorite;
  QuestionHeader(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.pediatricsType,
      @required this.subjectId,
      @required this.compulsoryType,
      @required this.answerType,
      @required this.questionText,
      @required this.numberAnswer,
      @required this.correctType1,
      @required this.correctType2,
      @required this.correctType3,
      @required this.favorite});
  factory QuestionHeader.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return QuestionHeader(
      businessYear: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_year']),
      period: intType.mapFromDatabaseResponse(data['${effectivePrefix}period']),
      questionNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}question_no']),
      pediatricsType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pediatrics_type']),
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
      correctType1: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type1']),
      correctType2: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type2']),
      correctType3: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type3']),
      favorite:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}favorite']),
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
    if (!nullToAbsent || pediatricsType != null) {
      map['pediatrics_type'] = Variable<int>(pediatricsType);
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
    if (!nullToAbsent || correctType1 != null) {
      map['correct_type1'] = Variable<int>(correctType1);
    }
    if (!nullToAbsent || correctType2 != null) {
      map['correct_type2'] = Variable<int>(correctType2);
    }
    if (!nullToAbsent || correctType3 != null) {
      map['correct_type3'] = Variable<int>(correctType3);
    }
    if (!nullToAbsent || favorite != null) {
      map['favorite'] = Variable<bool>(favorite);
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
      pediatricsType: pediatricsType == null && nullToAbsent
          ? const Value.absent()
          : Value(pediatricsType),
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
      correctType1: correctType1 == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType1),
      correctType2: correctType2 == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType2),
      correctType3: correctType3 == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType3),
      favorite: favorite == null && nullToAbsent
          ? const Value.absent()
          : Value(favorite),
    );
  }

  factory QuestionHeader.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return QuestionHeader(
      businessYear: serializer.fromJson<int>(json['businessYear']),
      period: serializer.fromJson<int>(json['period']),
      questionNo: serializer.fromJson<String>(json['questionNo']),
      pediatricsType: serializer.fromJson<int>(json['pediatricsType']),
      subjectId: serializer.fromJson<int>(json['subjectId']),
      compulsoryType: serializer.fromJson<int>(json['compulsoryType']),
      answerType: serializer.fromJson<int>(json['answerType']),
      questionText: serializer.fromJson<String>(json['questionText']),
      numberAnswer: serializer.fromJson<int>(json['numberAnswer']),
      correctType1: serializer.fromJson<int>(json['correctType1']),
      correctType2: serializer.fromJson<int>(json['correctType2']),
      correctType3: serializer.fromJson<int>(json['correctType3']),
      favorite: serializer.fromJson<bool>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'businessYear': serializer.toJson<int>(businessYear),
      'period': serializer.toJson<int>(period),
      'questionNo': serializer.toJson<String>(questionNo),
      'pediatricsType': serializer.toJson<int>(pediatricsType),
      'subjectId': serializer.toJson<int>(subjectId),
      'compulsoryType': serializer.toJson<int>(compulsoryType),
      'answerType': serializer.toJson<int>(answerType),
      'questionText': serializer.toJson<String>(questionText),
      'numberAnswer': serializer.toJson<int>(numberAnswer),
      'correctType1': serializer.toJson<int>(correctType1),
      'correctType2': serializer.toJson<int>(correctType2),
      'correctType3': serializer.toJson<int>(correctType3),
      'favorite': serializer.toJson<bool>(favorite),
    };
  }

  QuestionHeader copyWith(
          {int businessYear,
          int period,
          String questionNo,
          int pediatricsType,
          int subjectId,
          int compulsoryType,
          int answerType,
          String questionText,
          int numberAnswer,
          int correctType1,
          int correctType2,
          int correctType3,
          bool favorite}) =>
      QuestionHeader(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        pediatricsType: pediatricsType ?? this.pediatricsType,
        subjectId: subjectId ?? this.subjectId,
        compulsoryType: compulsoryType ?? this.compulsoryType,
        answerType: answerType ?? this.answerType,
        questionText: questionText ?? this.questionText,
        numberAnswer: numberAnswer ?? this.numberAnswer,
        correctType1: correctType1 ?? this.correctType1,
        correctType2: correctType2 ?? this.correctType2,
        correctType3: correctType3 ?? this.correctType3,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionHeader(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('pediatricsType: $pediatricsType, ')
          ..write('subjectId: $subjectId, ')
          ..write('compulsoryType: $compulsoryType, ')
          ..write('answerType: $answerType, ')
          ..write('questionText: $questionText, ')
          ..write('numberAnswer: $numberAnswer, ')
          ..write('correctType1: $correctType1, ')
          ..write('correctType2: $correctType2, ')
          ..write('correctType3: $correctType3, ')
          ..write('favorite: $favorite')
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
                  pediatricsType.hashCode,
                  $mrjc(
                      subjectId.hashCode,
                      $mrjc(
                          compulsoryType.hashCode,
                          $mrjc(
                              answerType.hashCode,
                              $mrjc(
                                  questionText.hashCode,
                                  $mrjc(
                                      numberAnswer.hashCode,
                                      $mrjc(
                                          correctType1.hashCode,
                                          $mrjc(
                                              correctType2.hashCode,
                                              $mrjc(
                                                  correctType3.hashCode,
                                                  favorite
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionHeader &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.pediatricsType == this.pediatricsType &&
          other.subjectId == this.subjectId &&
          other.compulsoryType == this.compulsoryType &&
          other.answerType == this.answerType &&
          other.questionText == this.questionText &&
          other.numberAnswer == this.numberAnswer &&
          other.correctType1 == this.correctType1 &&
          other.correctType2 == this.correctType2 &&
          other.correctType3 == this.correctType3 &&
          other.favorite == this.favorite);
}

class QuestionHeadersCompanion extends UpdateCompanion<QuestionHeader> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<int> pediatricsType;
  final Value<int> subjectId;
  final Value<int> compulsoryType;
  final Value<int> answerType;
  final Value<String> questionText;
  final Value<int> numberAnswer;
  final Value<int> correctType1;
  final Value<int> correctType2;
  final Value<int> correctType3;
  final Value<bool> favorite;
  const QuestionHeadersCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.pediatricsType = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.compulsoryType = const Value.absent(),
    this.answerType = const Value.absent(),
    this.questionText = const Value.absent(),
    this.numberAnswer = const Value.absent(),
    this.correctType1 = const Value.absent(),
    this.correctType2 = const Value.absent(),
    this.correctType3 = const Value.absent(),
    this.favorite = const Value.absent(),
  });
  QuestionHeadersCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required int pediatricsType,
    @required int subjectId,
    @required int compulsoryType,
    @required int answerType,
    @required String questionText,
    @required int numberAnswer,
    @required int correctType1,
    @required int correctType2,
    @required int correctType3,
    @required bool favorite,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        pediatricsType = Value(pediatricsType),
        subjectId = Value(subjectId),
        compulsoryType = Value(compulsoryType),
        answerType = Value(answerType),
        questionText = Value(questionText),
        numberAnswer = Value(numberAnswer),
        correctType1 = Value(correctType1),
        correctType2 = Value(correctType2),
        correctType3 = Value(correctType3),
        favorite = Value(favorite);
  static Insertable<QuestionHeader> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<int> pediatricsType,
    Expression<int> subjectId,
    Expression<int> compulsoryType,
    Expression<int> answerType,
    Expression<String> questionText,
    Expression<int> numberAnswer,
    Expression<int> correctType1,
    Expression<int> correctType2,
    Expression<int> correctType3,
    Expression<bool> favorite,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (pediatricsType != null) 'pediatrics_type': pediatricsType,
      if (subjectId != null) 'subject_id': subjectId,
      if (compulsoryType != null) 'compulsory_type': compulsoryType,
      if (answerType != null) 'answer_type': answerType,
      if (questionText != null) 'question_text': questionText,
      if (numberAnswer != null) 'number_answer': numberAnswer,
      if (correctType1 != null) 'correct_type1': correctType1,
      if (correctType2 != null) 'correct_type2': correctType2,
      if (correctType3 != null) 'correct_type3': correctType3,
      if (favorite != null) 'favorite': favorite,
    });
  }

  QuestionHeadersCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<int> pediatricsType,
      Value<int> subjectId,
      Value<int> compulsoryType,
      Value<int> answerType,
      Value<String> questionText,
      Value<int> numberAnswer,
      Value<int> correctType1,
      Value<int> correctType2,
      Value<int> correctType3,
      Value<bool> favorite}) {
    return QuestionHeadersCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      pediatricsType: pediatricsType ?? this.pediatricsType,
      subjectId: subjectId ?? this.subjectId,
      compulsoryType: compulsoryType ?? this.compulsoryType,
      answerType: answerType ?? this.answerType,
      questionText: questionText ?? this.questionText,
      numberAnswer: numberAnswer ?? this.numberAnswer,
      correctType1: correctType1 ?? this.correctType1,
      correctType2: correctType2 ?? this.correctType2,
      correctType3: correctType3 ?? this.correctType3,
      favorite: favorite ?? this.favorite,
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
    if (pediatricsType.present) {
      map['pediatrics_type'] = Variable<int>(pediatricsType.value);
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
    if (correctType1.present) {
      map['correct_type1'] = Variable<int>(correctType1.value);
    }
    if (correctType2.present) {
      map['correct_type2'] = Variable<int>(correctType2.value);
    }
    if (correctType3.present) {
      map['correct_type3'] = Variable<int>(correctType3.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionHeadersCompanion(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('pediatricsType: $pediatricsType, ')
          ..write('subjectId: $subjectId, ')
          ..write('compulsoryType: $compulsoryType, ')
          ..write('answerType: $answerType, ')
          ..write('questionText: $questionText, ')
          ..write('numberAnswer: $numberAnswer, ')
          ..write('correctType1: $correctType1, ')
          ..write('correctType2: $correctType2, ')
          ..write('correctType3: $correctType3, ')
          ..write('favorite: $favorite')
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

  final VerificationMeta _pediatricsTypeMeta =
      const VerificationMeta('pediatricsType');
  GeneratedIntColumn _pediatricsType;
  @override
  GeneratedIntColumn get pediatricsType =>
      _pediatricsType ??= _constructPediatricsType();
  GeneratedIntColumn _constructPediatricsType() {
    return GeneratedIntColumn(
      'pediatrics_type',
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

  final VerificationMeta _correctType1Meta =
      const VerificationMeta('correctType1');
  GeneratedIntColumn _correctType1;
  @override
  GeneratedIntColumn get correctType1 =>
      _correctType1 ??= _constructCorrectType1();
  GeneratedIntColumn _constructCorrectType1() {
    return GeneratedIntColumn(
      'correct_type1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctType2Meta =
      const VerificationMeta('correctType2');
  GeneratedIntColumn _correctType2;
  @override
  GeneratedIntColumn get correctType2 =>
      _correctType2 ??= _constructCorrectType2();
  GeneratedIntColumn _constructCorrectType2() {
    return GeneratedIntColumn(
      'correct_type2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _correctType3Meta =
      const VerificationMeta('correctType3');
  GeneratedIntColumn _correctType3;
  @override
  GeneratedIntColumn get correctType3 =>
      _correctType3 ??= _constructCorrectType3();
  GeneratedIntColumn _constructCorrectType3() {
    return GeneratedIntColumn(
      'correct_type3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _favoriteMeta = const VerificationMeta('favorite');
  GeneratedBoolColumn _favorite;
  @override
  GeneratedBoolColumn get favorite => _favorite ??= _constructFavorite();
  GeneratedBoolColumn _constructFavorite() {
    return GeneratedBoolColumn(
      'favorite',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        businessYear,
        period,
        questionNo,
        pediatricsType,
        subjectId,
        compulsoryType,
        answerType,
        questionText,
        numberAnswer,
        correctType1,
        correctType2,
        correctType3,
        favorite
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
    if (data.containsKey('pediatrics_type')) {
      context.handle(
          _pediatricsTypeMeta,
          pediatricsType.isAcceptableOrUnknown(
              data['pediatrics_type'], _pediatricsTypeMeta));
    } else if (isInserting) {
      context.missing(_pediatricsTypeMeta);
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
    if (data.containsKey('correct_type1')) {
      context.handle(
          _correctType1Meta,
          correctType1.isAcceptableOrUnknown(
              data['correct_type1'], _correctType1Meta));
    } else if (isInserting) {
      context.missing(_correctType1Meta);
    }
    if (data.containsKey('correct_type2')) {
      context.handle(
          _correctType2Meta,
          correctType2.isAcceptableOrUnknown(
              data['correct_type2'], _correctType2Meta));
    } else if (isInserting) {
      context.missing(_correctType2Meta);
    }
    if (data.containsKey('correct_type3')) {
      context.handle(
          _correctType3Meta,
          correctType3.isAcceptableOrUnknown(
              data['correct_type3'], _correctType3Meta));
    } else if (isInserting) {
      context.missing(_correctType3Meta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite'], _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
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
  final int correctType;
  QuestionOption(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.optionCd,
      @required this.optionText,
      @required this.correctType});
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
      correctType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}correct_type']),
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
    if (!nullToAbsent || correctType != null) {
      map['correct_type'] = Variable<int>(correctType);
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
      correctType: correctType == null && nullToAbsent
          ? const Value.absent()
          : Value(correctType),
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
      correctType: serializer.fromJson<int>(json['correctType']),
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
      'correctType': serializer.toJson<int>(correctType),
    };
  }

  QuestionOption copyWith(
          {int businessYear,
          int period,
          String questionNo,
          String optionCd,
          String optionText,
          int correctType}) =>
      QuestionOption(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        optionCd: optionCd ?? this.optionCd,
        optionText: optionText ?? this.optionText,
        correctType: correctType ?? this.correctType,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionOption(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('optionCd: $optionCd, ')
          ..write('optionText: $optionText, ')
          ..write('correctType: $correctType')
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
                  $mrjc(optionText.hashCode, correctType.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionOption &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.optionCd == this.optionCd &&
          other.optionText == this.optionText &&
          other.correctType == this.correctType);
}

class QuestionOptionsCompanion extends UpdateCompanion<QuestionOption> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<String> optionCd;
  final Value<String> optionText;
  final Value<int> correctType;
  const QuestionOptionsCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.optionCd = const Value.absent(),
    this.optionText = const Value.absent(),
    this.correctType = const Value.absent(),
  });
  QuestionOptionsCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required String optionCd,
    @required String optionText,
    @required int correctType,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        optionCd = Value(optionCd),
        optionText = Value(optionText),
        correctType = Value(correctType);
  static Insertable<QuestionOption> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<String> optionCd,
    Expression<String> optionText,
    Expression<int> correctType,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (optionCd != null) 'option_cd': optionCd,
      if (optionText != null) 'option_text': optionText,
      if (correctType != null) 'correct_type': correctType,
    });
  }

  QuestionOptionsCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<String> optionCd,
      Value<String> optionText,
      Value<int> correctType}) {
    return QuestionOptionsCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      optionCd: optionCd ?? this.optionCd,
      optionText: optionText ?? this.optionText,
      correctType: correctType ?? this.correctType,
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
    if (correctType.present) {
      map['correct_type'] = Variable<int>(correctType.value);
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
          ..write('correctType: $correctType')
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

  @override
  List<GeneratedColumn> get $columns =>
      [businessYear, period, questionNo, optionCd, optionText, correctType];
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
    if (data.containsKey('correct_type')) {
      context.handle(
          _correctTypeMeta,
          correctType.isAcceptableOrUnknown(
              data['correct_type'], _correctTypeMeta));
    } else if (isInserting) {
      context.missing(_correctTypeMeta);
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
  final String filePath;
  final int fileType;
  QuestionFile(
      {@required this.businessYear,
      @required this.period,
      @required this.questionNo,
      @required this.questionAnswerType,
      @required this.fileNo,
      @required this.filePath,
      @required this.fileType});
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
      filePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}file_path']),
      fileType:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}file_type']),
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
    if (!nullToAbsent || filePath != null) {
      map['file_path'] = Variable<String>(filePath);
    }
    if (!nullToAbsent || fileType != null) {
      map['file_type'] = Variable<int>(fileType);
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
      filePath: filePath == null && nullToAbsent
          ? const Value.absent()
          : Value(filePath),
      fileType: fileType == null && nullToAbsent
          ? const Value.absent()
          : Value(fileType),
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
      filePath: serializer.fromJson<String>(json['filePath']),
      fileType: serializer.fromJson<int>(json['fileType']),
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
      'filePath': serializer.toJson<String>(filePath),
      'fileType': serializer.toJson<int>(fileType),
    };
  }

  QuestionFile copyWith(
          {int businessYear,
          int period,
          String questionNo,
          int questionAnswerType,
          int fileNo,
          String filePath,
          int fileType}) =>
      QuestionFile(
        businessYear: businessYear ?? this.businessYear,
        period: period ?? this.period,
        questionNo: questionNo ?? this.questionNo,
        questionAnswerType: questionAnswerType ?? this.questionAnswerType,
        fileNo: fileNo ?? this.fileNo,
        filePath: filePath ?? this.filePath,
        fileType: fileType ?? this.fileType,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionFile(')
          ..write('businessYear: $businessYear, ')
          ..write('period: $period, ')
          ..write('questionNo: $questionNo, ')
          ..write('questionAnswerType: $questionAnswerType, ')
          ..write('fileNo: $fileNo, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType')
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
                      $mrjc(filePath.hashCode, fileType.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is QuestionFile &&
          other.businessYear == this.businessYear &&
          other.period == this.period &&
          other.questionNo == this.questionNo &&
          other.questionAnswerType == this.questionAnswerType &&
          other.fileNo == this.fileNo &&
          other.filePath == this.filePath &&
          other.fileType == this.fileType);
}

class QuestionFilesCompanion extends UpdateCompanion<QuestionFile> {
  final Value<int> businessYear;
  final Value<int> period;
  final Value<String> questionNo;
  final Value<int> questionAnswerType;
  final Value<int> fileNo;
  final Value<String> filePath;
  final Value<int> fileType;
  const QuestionFilesCompanion({
    this.businessYear = const Value.absent(),
    this.period = const Value.absent(),
    this.questionNo = const Value.absent(),
    this.questionAnswerType = const Value.absent(),
    this.fileNo = const Value.absent(),
    this.filePath = const Value.absent(),
    this.fileType = const Value.absent(),
  });
  QuestionFilesCompanion.insert({
    @required int businessYear,
    @required int period,
    @required String questionNo,
    @required int questionAnswerType,
    @required int fileNo,
    @required String filePath,
    @required int fileType,
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        questionAnswerType = Value(questionAnswerType),
        fileNo = Value(fileNo),
        filePath = Value(filePath),
        fileType = Value(fileType);
  static Insertable<QuestionFile> custom({
    Expression<int> businessYear,
    Expression<int> period,
    Expression<String> questionNo,
    Expression<int> questionAnswerType,
    Expression<int> fileNo,
    Expression<String> filePath,
    Expression<int> fileType,
  }) {
    return RawValuesInsertable({
      if (businessYear != null) 'business_year': businessYear,
      if (period != null) 'period': period,
      if (questionNo != null) 'question_no': questionNo,
      if (questionAnswerType != null)
        'question_answer_type': questionAnswerType,
      if (fileNo != null) 'file_no': fileNo,
      if (filePath != null) 'file_path': filePath,
      if (fileType != null) 'file_type': fileType,
    });
  }

  QuestionFilesCompanion copyWith(
      {Value<int> businessYear,
      Value<int> period,
      Value<String> questionNo,
      Value<int> questionAnswerType,
      Value<int> fileNo,
      Value<String> filePath,
      Value<int> fileType}) {
    return QuestionFilesCompanion(
      businessYear: businessYear ?? this.businessYear,
      period: period ?? this.period,
      questionNo: questionNo ?? this.questionNo,
      questionAnswerType: questionAnswerType ?? this.questionAnswerType,
      fileNo: fileNo ?? this.fileNo,
      filePath: filePath ?? this.filePath,
      fileType: fileType ?? this.fileType,
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
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<int>(fileType.value);
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
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType')
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

  final VerificationMeta _filePathMeta = const VerificationMeta('filePath');
  GeneratedTextColumn _filePath;
  @override
  GeneratedTextColumn get filePath => _filePath ??= _constructFilePath();
  GeneratedTextColumn _constructFilePath() {
    return GeneratedTextColumn(
      'file_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fileTypeMeta = const VerificationMeta('fileType');
  GeneratedIntColumn _fileType;
  @override
  GeneratedIntColumn get fileType => _fileType ??= _constructFileType();
  GeneratedIntColumn _constructFileType() {
    return GeneratedIntColumn(
      'file_type',
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
        filePath,
        fileType
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
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path'], _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('file_type')) {
      context.handle(_fileTypeMeta,
          fileType.isAcceptableOrUnknown(data['file_type'], _fileTypeMeta));
    } else if (isInserting) {
      context.missing(_fileTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {businessYear, period, questionNo, questionAnswerType, fileNo, fileType};
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
      this.correctType,
      this.singleAnswer,
      this.multipleAnswer,
      this.numberAnswer});
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
    this.correctType = const Value.absent(),
    this.singleAnswer = const Value.absent(),
    this.multipleAnswer = const Value.absent(),
    this.numberAnswer = const Value.absent(),
  })  : businessYear = Value(businessYear),
        period = Value(period),
        questionNo = Value(questionNo),
        endFlg = Value(endFlg);
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
      true,
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
      true,
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
      true,
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
      true,
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
    }
    if (data.containsKey('single_answer')) {
      context.handle(
          _singleAnswerMeta,
          singleAnswer.isAcceptableOrUnknown(
              data['single_answer'], _singleAnswerMeta));
    }
    if (data.containsKey('multiple_answer')) {
      context.handle(
          _multipleAnswerMeta,
          multipleAnswer.isAcceptableOrUnknown(
              data['multiple_answer'], _multipleAnswerMeta));
    }
    if (data.containsKey('number_answer')) {
      context.handle(
          _numberAnswerMeta,
          numberAnswer.isAcceptableOrUnknown(
              data['number_answer'], _numberAnswerMeta));
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
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        parameters,
        questionHeaders,
        subjects,
        questionOptions,
        questionFiles,
        questionTryings
      ];
}
