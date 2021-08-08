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
        ,textValue:'A'
        ,booleanValue:false);
    db.insertparameter(para1);
    Parameter para2 = Parameter(code:'serialcdStartedFlg:202102'
        ,numberValue:0
        ,textValue:'B'
        ,booleanValue:false);
    db.insertparameter(para2);
    Parameter para3 = Parameter(code:'serialcdStartedFlg:202103'
        ,numberValue:0
        ,textValue:'C'
        ,booleanValue:false);
    db.insertparameter(para3);
    Parameter para4 = Parameter(code:'serialcdStartedFlg:202104'
        ,numberValue:0
        ,textValue:'D'
        ,booleanValue:false);
    db.insertparameter(para4);
    QuestionHeader qh0 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,subjectId:13
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'無ガンマグロブリン血症の症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh0);
    QuestionHeader qh1 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'葉酸欠乏性貧血とビタミンB12欠乏性貧血とで共通する所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh1);
    QuestionHeader qh2 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'消化管ポリポーシスの症候'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh2);
    QuestionHeader qh3 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'羊水塞栓症の初発症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh3);
    QuestionHeader qh4 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'精巣捻転症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh4);
    QuestionHeader qh5 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'腎硬化症の原因'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh5);
    QuestionHeader qh6 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'急性縦隔炎で行う処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh6);
    QuestionHeader qh7 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'大動脈弁輪拡張症の手術法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh7);
    QuestionHeader qh8 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'高齢者でせん妄を起こしやすい疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh8);
    QuestionHeader qh9 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'骨髄線維症で認められる病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh9);
    QuestionHeader qh10 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Dressler症候群'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh10);
    QuestionHeader qh11 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'感冒で最多の起炎ウイルス'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh11);
    QuestionHeader qh12 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,subjectId:18
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Turner症候群の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh12);
    QuestionHeader qh13 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,subjectId:15
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'食中毒とその原因食品（英語問題）'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh13);
    QuestionHeader qh14 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'食道扁平上皮癌のリスクファクター'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh14);
    QuestionHeader qh15 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'呼吸窮迫症候群〈RDS〉の処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh15);
    QuestionHeader qh16 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'胃悪性リンパ腫の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh16);
    Subject subject1 = Subject(
        id:1
        ,subjectName:'産科');
    db.insertsubject(subject1);
    Subject subject2 = Subject(
        id:2
        ,subjectName:'婦人科');
    db.insertsubject(subject2);
    Subject subject3 = Subject(
        id:3
        ,subjectName:'呼吸器');
    db.insertsubject(subject3);
    Subject subject4 = Subject(
        id:4
        ,subjectName:'循環器');
    db.insertsubject(subject4);
    Subject subject5 = Subject(
        id:5
        ,subjectName:'消化管');
    db.insertsubject(subject5);
    Subject subject6 = Subject(
        id:6
        ,subjectName:'肝胆膵');
    db.insertsubject(subject6);
    Subject subject7 = Subject(
        id:7
        ,subjectName:'血液');
    db.insertsubject(subject7);
    Subject subject8 = Subject(
        id:8
        ,subjectName:'腎');
    db.insertsubject(subject8);
    Subject subject9 = Subject(
        id:9
        ,subjectName:'神経');
    db.insertsubject(subject9);
    Subject subject10 = Subject(
        id:10
        ,subjectName:'内分泌');
    db.insertsubject(subject10);
    Subject subject11 = Subject(
        id:11
        ,subjectName:'代謝');
    db.insertsubject(subject11);
    Subject subject12 = Subject(
        id:12
        ,subjectName:'アレ膠');
    db.insertsubject(subject12);
    Subject subject13 = Subject(
        id:13
        ,subjectName:'免疫');
    db.insertsubject(subject13);
    Subject subject14 = Subject(
        id:14
        ,subjectName:'感染症');
    db.insertsubject(subject14);
    Subject subject15 = Subject(
        id:15
        ,subjectName:'中毒');
    db.insertsubject(subject15);
    Subject subject16 = Subject(
        id:16
        ,subjectName:'救急');
    db.insertsubject(subject16);
    Subject subject17 = Subject(
        id:17
        ,subjectName:'複合');
    db.insertsubject(subject17);
    Subject subject18 = Subject(
        id:18
        ,subjectName:'小児科複合');
    db.insertsubject(subject18);
    Subject subject19 = Subject(
        id:19
        ,subjectName:'精神科');
    db.insertsubject(subject19);
    Subject subject20 = Subject(
        id:20
        ,subjectName:'皮膚科');
    db.insertsubject(subject20);
    Subject subject21 = Subject(
        id:21
        ,subjectName:'眼科');
    db.insertsubject(subject21);
    Subject subject22 = Subject(
        id:22
        ,subjectName:'耳鼻咽喉科');
    db.insertsubject(subject22);
    Subject subject23 = Subject(
        id:23
        ,subjectName:'泌尿器科');
    db.insertsubject(subject23);
    Subject subject24 = Subject(
        id:24
        ,subjectName:'整形外科');
    db.insertsubject(subject24);
    Subject subject25 = Subject(
        id:25
        ,subjectName:'放射線科');
    db.insertsubject(subject25);
    Subject subject26 = Subject(
        id:26
        ,subjectName:'麻酔科');
    db.insertsubject(subject26);
    Subject subject27 = Subject(
        id:27
        ,subjectName:'公衆衛生');
    db.insertsubject(subject27);
    Subject subject28 = Subject(
        id:28
        ,subjectName:'一般教養');
    db.insertsubject(subject28);
    QuestionOption qo0 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,optionCd:'a'
        ,optionText:'毛細血管拡張'
        ,correctType:0);
    db.insertquestionoption(qo0);
    QuestionOption qo1 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,optionCd:'b'
        ,optionText:'B 細胞減少'
        ,correctType:1);
    db.insertquestionoption(qo1);
    QuestionOption qo2 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,optionCd:'c'
        ,optionText:'血小板減少'
        ,correctType:0);
    db.insertquestionoption(qo2);
    QuestionOption qo3 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,optionCd:'d'
        ,optionText:'HIV 抗体'
        ,correctType:0);
    db.insertquestionoption(qo3);
    QuestionOption qo4 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,optionCd:'e'
        ,optionText:'テタニー'
        ,correctType:0);
    db.insertquestionoption(qo4);
    QuestionOption qo5 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'a'
        ,optionText:'MCV 高値'
        ,correctType:1);
    db.insertquestionoption(qo5);
    QuestionOption qo6 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'b'
        ,optionText:'内因子欠乏'
        ,correctType:0);
    db.insertquestionoption(qo6);
    QuestionOption qo7 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'c'
        ,optionText:'Babinski 徴候陽性'
        ,correctType:0);
    db.insertquestionoption(qo7);
    QuestionOption qo8 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'d'
        ,optionText:'Romberg 徴候陽性'
        ,correctType:0);
    db.insertquestionoption(qo8);
    QuestionOption qo9 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'e'
        ,optionText:'尿中メチルマロン酸上昇'
        ,correctType:0);
    db.insertquestionoption(qo9);
    QuestionOption qo10 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'a'
        ,optionText:'家族性腺腫性ポリポーシスー蛋白漏出性胃腸症'
        ,correctType:0);
    db.insertquestionoption(qo10);
    QuestionOption qo11 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'b'
        ,optionText:'Cronkhite-Canada 症候群ー潰瘍性大腸炎'
        ,correctType:0);
    db.insertquestionoption(qo11);
    QuestionOption qo12 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'c'
        ,optionText:'Peutz-Jeghers 症候群ー脳腫瘍'
        ,correctType:0);
    db.insertquestionoption(qo12);
    QuestionOption qo13 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'d'
        ,optionText:'Gardner 症候群ー骨・軟部腫瘍'
        ,correctType:1);
    db.insertquestionoption(qo13);
    QuestionOption qo14 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'e'
        ,optionText:'Turcot 症候群ー低カリウム血症'
        ,correctType:0);
    db.insertquestionoption(qo14);
    QuestionOption qo15 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,optionCd:'a'
        ,optionText:'下肢腫脹'
        ,correctType:0);
    db.insertquestionoption(qo15);
    QuestionOption qo16 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,optionCd:'b'
        ,optionText:'けいれん'
        ,correctType:0);
    db.insertquestionoption(qo16);
    QuestionOption qo17 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,optionCd:'c'
        ,optionText:'呼吸困難'
        ,correctType:1);
    db.insertquestionoption(qo17);
    QuestionOption qo18 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,optionCd:'d'
        ,optionText:'高血圧'
        ,correctType:0);
    db.insertquestionoption(qo18);
    QuestionOption qo19 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,optionCd:'e'
        ,optionText:'喀　血'
        ,correctType:0);
    db.insertquestionoption(qo19);
    QuestionOption qo20 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,optionCd:'a'
        ,optionText:'通常発熱を伴う。'
        ,correctType:0);
    db.insertquestionoption(qo20);
    QuestionOption qo21 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,optionCd:'b'
        ,optionText:'高齢者に発症しやすい。'
        ,correctType:0);
    db.insertquestionoption(qo21);
    QuestionOption qo22 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,optionCd:'c'
        ,optionText:'シルクサインを認める。'
        ,correctType:0);
    db.insertquestionoption(qo22);
    QuestionOption qo23 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,optionCd:'d'
        ,optionText:'自覚症状はほとんどみられない。'
        ,correctType:0);
    db.insertquestionoption(qo23);
    QuestionOption qo24 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,optionCd:'e'
        ,optionText:'発症後6 時間以内に捻転が解除されれば精巣機能の回復が期待できる。'
        ,correctType:1);
    db.insertquestionoption(qo24);
    QuestionOption qo25 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'a'
        ,optionText:'ANCA 関連血管炎'
        ,correctType:0);
    db.insertquestionoption(qo25);
    QuestionOption qo26 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'b'
        ,optionText:'Sjögren 症候群'
        ,correctType:0);
    db.insertquestionoption(qo26);
    QuestionOption qo27 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'c'
        ,optionText:'高尿酸血症'
        ,correctType:0);
    db.insertquestionoption(qo27);
    QuestionOption qo28 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'d'
        ,optionText:'高血圧'
        ,correctType:1);
    db.insertquestionoption(qo28);
    QuestionOption qo29 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'e'
        ,optionText:'糖尿病'
        ,correctType:0);
    db.insertquestionoption(qo29);
    QuestionOption qo30 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,optionCd:'a'
        ,optionText:'縦隔ドレナージ'
        ,correctType:1);
    db.insertquestionoption(qo30);
    QuestionOption qo31 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,optionCd:'b'
        ,optionText:'胸腔ドレナージ'
        ,correctType:0);
    db.insertquestionoption(qo31);
    QuestionOption qo32 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,optionCd:'c'
        ,optionText:'気管支鏡検査'
        ,correctType:0);
    db.insertquestionoption(qo32);
    QuestionOption qo33 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,optionCd:'d'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo33);
    QuestionOption qo34 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,optionCd:'e'
        ,optionText:'開胸手術'
        ,correctType:0);
    db.insertquestionoption(qo34);
    QuestionOption qo35 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'a'
        ,optionText:'Blalock-Taussig 短絡手術'
        ,correctType:0);
    db.insertquestionoption(qo35);
    QuestionOption qo36 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'b'
        ,optionText:'Senning 手術'
        ,correctType:0);
    db.insertquestionoption(qo36);
    QuestionOption qo37 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'c'
        ,optionText:'Rastelli 手術'
        ,correctType:0);
    db.insertquestionoption(qo37);
    QuestionOption qo38 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'d'
        ,optionText:'Fontan 手術'
        ,correctType:0);
    db.insertquestionoption(qo38);
    QuestionOption qo39 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'e'
        ,optionText:'Bentall 手術'
        ,correctType:1);
    db.insertquestionoption(qo39);
    QuestionOption qo40 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,optionCd:'a'
        ,optionText:'起立性低血圧症'
        ,correctType:0);
    db.insertquestionoption(qo40);
    QuestionOption qo41 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,optionCd:'b'
        ,optionText:'肺炎球菌性肺炎'
        ,correctType:1);
    db.insertquestionoption(qo41);
    QuestionOption qo42 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,optionCd:'c'
        ,optionText:'関節リウマチ'
        ,correctType:0);
    db.insertquestionoption(qo42);
    QuestionOption qo43 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,optionCd:'d'
        ,optionText:'緊張型頭痛'
        ,correctType:0);
    db.insertquestionoption(qo43);
    QuestionOption qo44 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,optionCd:'e'
        ,optionText:'便秘症'
        ,correctType:0);
    db.insertquestionoption(qo44);
    QuestionOption qo45 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,optionCd:'a'
        ,optionText:'球状赤血球'
        ,correctType:1);
    db.insertquestionoption(qo45);
    QuestionOption qo46 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,optionCd:'b'
        ,optionText:'涙滴赤血球'
        ,correctType:0);
    db.insertquestionoption(qo46);
    QuestionOption qo47 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,optionCd:'c'
        ,optionText:'巨大血小板'
        ,correctType:0);
    db.insertquestionoption(qo47);
    QuestionOption qo48 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,optionCd:'d'
        ,optionText:'dry tap'
        ,correctType:0);
    db.insertquestionoption(qo48);
    QuestionOption qo49 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,optionCd:'e'
        ,optionText:'脾　腫'
        ,correctType:0);
    db.insertquestionoption(qo49);
    QuestionOption qo50 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,optionCd:'a'
        ,optionText:'心膜炎'
        ,correctType:1);
    db.insertquestionoption(qo50);
    QuestionOption qo51 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,optionCd:'b'
        ,optionText:'心室頻拍'
        ,correctType:0);
    db.insertquestionoption(qo51);
    QuestionOption qo52 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,optionCd:'c'
        ,optionText:'乳頭筋断裂'
        ,correctType:0);
    db.insertquestionoption(qo52);
    QuestionOption qo53 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,optionCd:'d'
        ,optionText:'自由壁破裂'
        ,correctType:0);
    db.insertquestionoption(qo53);
    QuestionOption qo54 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,optionCd:'e'
        ,optionText:'心室中隔穿孔'
        ,correctType:0);
    db.insertquestionoption(qo54);
    QuestionOption qo55 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,optionCd:'a'
        ,optionText:'パラインフルエンザウイルス'
        ,correctType:0);
    db.insertquestionoption(qo55);
    QuestionOption qo56 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,optionCd:'b'
        ,optionText:'エンテロウイルス'
        ,correctType:0);
    db.insertquestionoption(qo56);
    QuestionOption qo57 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,optionCd:'c'
        ,optionText:'ライノウイルス'
        ,correctType:1);
    db.insertquestionoption(qo57);
    QuestionOption qo58 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,optionCd:'d'
        ,optionText:'アデノウイルス'
        ,correctType:0);
    db.insertquestionoption(qo58);
    QuestionOption qo59 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,optionCd:'e'
        ,optionText:'RS ウイルス'
        ,correctType:0);
    db.insertquestionoption(qo59);
    QuestionOption qo60 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,optionCd:'a'
        ,optionText:'心疾患'
        ,correctType:0);
    db.insertquestionoption(qo60);
    QuestionOption qo61 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,optionCd:'b'
        ,optionText:'低身長'
        ,correctType:0);
    db.insertquestionoption(qo61);
    QuestionOption qo62 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,optionCd:'c'
        ,optionText:'糖尿病'
        ,correctType:0);
    db.insertquestionoption(qo62);
    QuestionOption qo63 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,optionCd:'d'
        ,optionText:'知的障害'
        ,correctType:1);
    db.insertquestionoption(qo63);
    QuestionOption qo64 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,optionCd:'e'
        ,optionText:'性腺機能不全'
        ,correctType:0);
    db.insertquestionoption(qo64);
    QuestionOption qo65 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'a'
        ,optionText:'Salmonella entericaーRaw egg'
        ,correctType:1);
    db.insertquestionoption(qo65);
    QuestionOption qo66 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'b'
        ,optionText:'Staphylococcus aureusーHoney'
        ,correctType:0);
    db.insertquestionoption(qo66);
    QuestionOption qo67 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'c'
        ,optionText:'Clostridium perfringensーRice ball'
        ,correctType:0);
    db.insertquestionoption(qo67);
    QuestionOption qo68 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'d'
        ,optionText:'Vibrio parahaemolyticusーSeafood'
        ,correctType:1);
    db.insertquestionoption(qo68);
    QuestionOption qo69 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'e'
        ,optionText:'Campylobacter jejuniーChicken'
        ,correctType:1);
    db.insertquestionoption(qo69);
    QuestionOption qo70 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'a'
        ,optionText:'ヒトパピローマウイルス'
        ,correctType:0);
    db.insertquestionoption(qo70);
    QuestionOption qo71 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'b'
        ,optionText:'胃食道逆流症'
        ,correctType:0);
    db.insertquestionoption(qo71);
    QuestionOption qo72 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'c'
        ,optionText:'アカラシア'
        ,correctType:1);
    db.insertquestionoption(qo72);
    QuestionOption qo73 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'d'
        ,optionText:'喫　煙'
        ,correctType:1);
    db.insertquestionoption(qo73);
    QuestionOption qo74 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'e'
        ,optionText:'飲　酒'
        ,correctType:1);
    db.insertquestionoption(qo74);
    QuestionOption qo75 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'a'
        ,optionText:'肺サーファクタント投与'
        ,correctType:1);
    db.insertquestionoption(qo75);
    QuestionOption qo76 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'b'
        ,optionText:'気管内洗浄'
        ,correctType:0);
    db.insertquestionoption(qo76);
    QuestionOption qo77 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'c'
        ,optionText:'抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo77);
    QuestionOption qo78 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'d'
        ,optionText:'強心薬投与'
        ,correctType:0);
    db.insertquestionoption(qo78);
    QuestionOption qo79 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'e'
        ,optionText:'胸腔穿刺'
        ,correctType:0);
    db.insertquestionoption(qo79);
    QuestionOption qo80 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'a'
        ,optionText:'GIST'
        ,correctType:0);
    db.insertquestionoption(qo80);
    QuestionOption qo81 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'b'
        ,optionText:'胃　癌'
        ,correctType:0);
    db.insertquestionoption(qo81);
    QuestionOption qo82 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'c'
        ,optionText:'胃腺腫'
        ,correctType:0);
    db.insertquestionoption(qo82);
    QuestionOption qo83 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'d'
        ,optionText:'胃平滑筋腫'
        ,correctType:0);
    db.insertquestionoption(qo83);
    QuestionOption qo84 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'e'
        ,optionText:'胃悪性リンパ腫'
        ,correctType:1);
    db.insertquestionoption(qo84);
    QuestionFile qf1 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1);
    QuestionFile qf2 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf2);
    QuestionFile qf3 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf3);
    QuestionFile qf4 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf4);
    QuestionFile qf5 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf5);
    QuestionFile qf6 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf6);
    QuestionFile qf7 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf7);
    QuestionFile qf8 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf8);
    QuestionFile qf9 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf9);
    QuestionFile qf10 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf10);
    QuestionFile qf11 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf11);
    QuestionFile qf12 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf12);
    QuestionFile qf13 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf13);
    QuestionFile qf14 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf14);
    QuestionFile qf15 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf15);
    QuestionFile qf16 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf16);
    QuestionFile qf17 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf17);
    QuestionFile qf18 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf18);
    QuestionFile qf19 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf19);
    QuestionFile qf20 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf20);
    QuestionFile qf21 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf21);
    QuestionFile qf22 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf22);
    QuestionFile qf23 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf23);
    QuestionFile qf24 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf24);
    QuestionFile qf25 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf25);
    QuestionFile qf26 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf26);
    QuestionFile qf27 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf27);
    QuestionFile qf28 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf28);
    QuestionFile qf29 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf29);
    QuestionFile qf30 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf30);
    QuestionFile qf31 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf31);
    QuestionFile qf32 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A19_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf32);
    QuestionFile qf33 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf33);
    QuestionFile qf34 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf34);
    QuestionFile qf35 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A24_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf35);
    QuestionFile qf36 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A24_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf36);
    QuestionFile qf37 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_A24_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf37);
    QuestionFile qf38 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf38);



  }


  Future<void> allDataDelete(MyDatabase db) async{

    await deleteAllParameters(db);
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

