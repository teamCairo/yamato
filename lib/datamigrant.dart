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
        ,questionNo:'A16'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'全身性強皮症の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh15);
    QuestionHeader qh16 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'回旋異常'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh16);
    QuestionHeader qh17 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,subjectId:9
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'筋強直性ジストロフィーの診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh17);
    QuestionHeader qh18 = QuestionHeader(
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
    db.insertquestionheader(qh18);
    QuestionHeader qh19 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,subjectId:21
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'頭蓋内圧亢進によるうっ血乳頭'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh19);
    QuestionHeader qh20 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,subjectId:13
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'慢性肉芽腫症の所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh20);
    QuestionHeader qh21 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'WPW症候群患者への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh21);
    QuestionHeader qh22 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'ナルコレプシーの診断に有用な検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh22);
    QuestionHeader qh23 = QuestionHeader(
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
    db.insertquestionheader(qh23);
    QuestionHeader qh24 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,subjectId:22
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'声帯ポリープ患者の内視鏡像'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh24);
    QuestionHeader qh25 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'口唇ヘルペスの治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh25);
    QuestionHeader qh26 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'血友病の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh26);
    QuestionHeader qh27 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,subjectId:9
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'West症候群への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh27);
    QuestionHeader qh28 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'異常行動がみられる患者の鑑別'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh28);
    QuestionHeader qh29 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,subjectId:14
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'流行性耳下腺炎〈ムンプス〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh29);
    QuestionHeader qh30 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'左房粘液腫'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh30);
    QuestionHeader qh31 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'血栓性血小板減少性紫斑病の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh31);
    QuestionHeader qh32 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'尿道損傷の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh32);
    QuestionHeader qh33 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'腎代替療法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh33);
    QuestionHeader qh34 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'転移性肝癌の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh34);
    QuestionHeader qh35 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,subjectId:20
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'丘疹で考えられる疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh35);
    QuestionHeader qh36 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'淋菌が関与する感染症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh36);
    QuestionHeader qh37 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'胸膜中皮腫とリスクファクター'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh37);
    QuestionHeader qh38 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,subjectId:24
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'転移性骨腫瘍の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh38);
    QuestionHeader qh39 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'大動脈弁狭窄症の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh39);
    QuestionHeader qh40 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Sjögren症候群で出現する自己抗体'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh40);
    QuestionHeader qh41 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,subjectId:21
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'網膜中心静脈閉塞症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh41);
    QuestionHeader qh42 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'乳癌の診察・検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh42);
    QuestionHeader qh43 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,subjectId:2
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'閉経後の萎縮性腟炎の処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh43);
    QuestionHeader qh44 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'左心不全の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh44);
    QuestionHeader qh45 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'SIADHで予想される検査所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh45);
    QuestionHeader qh46 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,subjectId:20
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'皮脂欠乏性湿疹患者への指導'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh46);
    QuestionHeader qh47 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'多発性骨髄腫の治療法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh47);
    QuestionHeader qh48 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'肺動静脈瘻の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh48);
    QuestionHeader qh49 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'陰茎癌の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh49);
    QuestionHeader qh50 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,subjectId:21
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'穿孔性眼外傷の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh50);
    QuestionHeader qh51 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'学習障害の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh51);
    QuestionHeader qh52 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'腎盂癌の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh52);
    QuestionHeader qh53 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'反復流産患者への治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh53);
    QuestionHeader qh54 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'透析アミロイドーシスによる手根管症候群'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh54);
    QuestionHeader qh55 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'真性赤血球増加症の検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh55);
    QuestionHeader qh56 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'クリプトコックス髄膜炎の治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh56);
    QuestionHeader qh57 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'慢性炎症性脱髄性多発根ニューロパチーの治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh57);
    QuestionHeader qh58 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'胆嚢癌の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh58);
    QuestionHeader qh59 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'IgA腎症の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh59);
    QuestionHeader qh60 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'前頭葉症状のアセスメント'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh60);
    QuestionHeader qh61 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'パニック障害の治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh61);
    QuestionHeader qh62 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,subjectId:2
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'卵巣腫瘍の初回治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh62);
    QuestionHeader qh63 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Kartagener症候群の所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh63);
    QuestionHeader qh64 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'大腸憩室症の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh64);
    QuestionHeader qh65 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,subjectId:24
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'反復性脱臼の診断に有用な検査情報'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh65);
    QuestionHeader qh66 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,subjectId:22
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'慢性穿孔性中耳炎の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh66);
    QuestionHeader qh67 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'褐色細胞腫の術前処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh67);
    QuestionHeader qh68 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'鼠径ヘルニア嵌頓で低下する所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh68);
    QuestionHeader qh69 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Pancoast腫瘍でみられる身体所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh69);
    QuestionHeader qh70 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'誤嚥性肺炎'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh70);
    QuestionHeader qh71 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Behçet病でみられる所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh71);
    QuestionHeader qh72 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'胃潰瘍の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh72);
    QuestionHeader qh73 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,subjectId:18
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Down症候群の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh73);
    QuestionHeader qh74 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,subjectId:11
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'1型糖尿病の検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh74);
    QuestionHeader qh75 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,subjectId:22
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'耳鏡検査像の所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh75);
    QuestionHeader qh76 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'身体症状症の特徴'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh76);
    QuestionHeader qh77 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'解釈モデル'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh77);
    QuestionHeader qh78 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,subjectId:2
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'女性性器の診察所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh78);
    QuestionHeader qh79 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'加齢により低下・減少する項目'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh79);
    QuestionHeader qh80 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,subjectId:18
        ,pediatricsType:1
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'乳幼児で治療を必要とする所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh80);
    QuestionHeader qh81 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'健康づくり支援のための環境整備'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh81);
    QuestionHeader qh82 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'大腸癌のスクリーニング検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh82);
    QuestionHeader qh83 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'処方箋に医師の記入が必要な項目'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh83);
    QuestionHeader qh84 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'胎児循環系'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh84);
    QuestionHeader qh85 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,subjectId:24
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'徒手筋力テスト'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh85);
    QuestionHeader qh86 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'嗄声をきたす疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh86);
    QuestionHeader qh87 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'医療の質を評価する指標'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh87);
    QuestionHeader qh88 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'いびき音〈rhonchi〉が聞かれる疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh88);
    QuestionHeader qh89 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'行動変容'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh89);
    QuestionHeader qh90 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'腹部の診察'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh90);
    QuestionHeader qh91 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'医療法の規定'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh91);
    QuestionHeader qh92 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'中枢性麻痺'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh92);
    QuestionHeader qh93 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'リスボン宣言'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh93);
    QuestionHeader qh94 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,subjectId:21
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'糖尿病網膜症の所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh94);
    QuestionHeader qh95 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'感度，特異度'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh95);
    QuestionHeader qh96 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'アレルギー性鼻炎の炎症部位に集積する細胞'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh96);
    QuestionHeader qh97 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'直腸指診'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh97);
    QuestionHeader qh98 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'ニコチン依存度を知るための問診'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh98);
    QuestionHeader qh99 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'高エネルギー外傷，出血性ショック'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh99);
    QuestionHeader qh100 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'医療過誤'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh100);
    QuestionHeader qh101 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'無症候性HBVキャリアへの指導'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh101);
    QuestionHeader qh102 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'意識障害'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh102);
    QuestionHeader qh103 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'自殺未遂者への声掛け'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh103);
    QuestionHeader qh104 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'標準予防策〈standard precautions〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh104);
    QuestionHeader qh105 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'来院時心肺停止で直ちに行う処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh105);
    QuestionHeader qh106 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'手術後の褥瘡リスク'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh106);
    QuestionHeader qh107 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'動悸を主訴に来院した患者への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh107);
    QuestionHeader qh108 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'胃癌転移を示唆するリンパ節腫脹'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh108);
    QuestionHeader qh109 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'Basedow病の頸部診察'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh109);
    QuestionHeader qh110 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,subjectId:2
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'更年期障害の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh110);
    QuestionHeader qh111 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,subjectId:24
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'腰痛患者で聴取すべき事項'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh111);
    QuestionHeader qh112 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'死体検案書の記載'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh112);
    QuestionHeader qh113 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'肺クリプトコックス症の原因微生物'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh113);
    QuestionHeader qh114 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,subjectId:28
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'くも膜下出血の診断（英語問題）'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh114);
    QuestionHeader qh115 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,subjectId:11
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'予想される検査所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh115);
    QuestionHeader qh116 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,subjectId:11
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'関節炎'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh116);
    QuestionHeader qh117 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'胸痛が危険と判断する根拠'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh117);
    QuestionHeader qh118 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'当面の方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh118);
    QuestionHeader qh119 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'頭部単純CTを施行した根拠'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh119);
    QuestionHeader qh120 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'まず行う治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh120);
    QuestionHeader qh121 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'注意すべき所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh121);
    QuestionHeader qh122 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh122);
    QuestionHeader qh123 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'貯蔵鉄の量を反映する項目'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh123);
    QuestionHeader qh124 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'有用な問診'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh124);
    QuestionHeader qh125 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'労働災害の補償'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh125);
    QuestionHeader qh126 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'MRIによる頭部解剖'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh126);
    QuestionHeader qh127 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'訪問看護で行える処置（英語問題）'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh127);
    QuestionHeader qh128 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'医療配管用のボンベと色の組合せ'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh128);
    QuestionHeader qh129 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'刑法に規定されている項目'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh129);
    QuestionHeader qh130 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'レム〈REM〉睡眠'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh130);
    QuestionHeader qh131 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'疾病発生モデル'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh131);
    QuestionHeader qh132 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,subjectId:22
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'咽喉頭の解剖'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh132);
    QuestionHeader qh133 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'人工妊娠中絶'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh133);
    QuestionHeader qh134 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,subjectId:26
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'手術時の麻酔医の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh134);
    QuestionHeader qh135 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'前頭葉機能検査の質問内容'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh135);
    QuestionHeader qh136 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,subjectId:13
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'低補体血症を認める疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh136);
    QuestionHeader qh137 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'三次予防'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh137);
    QuestionHeader qh138 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,subjectId:13
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'抗原凝集能が高い免疫グロブリン'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh138);
    QuestionHeader qh139 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'コホート研究'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh139);
    QuestionHeader qh140 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,subjectId:11
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'低Ca・高P血症をきたす疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh140);
    QuestionHeader qh141 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'廃用症候群'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh141);
    QuestionHeader qh142 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'心血管系の構造'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh142);
    QuestionHeader qh143 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'ヘルスプロモーション'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh143);
    QuestionHeader qh144 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,subjectId:18
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'男児の二次性徴'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh144);
    QuestionHeader qh145 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'国際協力'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh145);
    QuestionHeader qh146 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'flow-volume曲線'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh146);
    QuestionHeader qh147 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'濃度依存性の抗菌薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh147);
    QuestionHeader qh148 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'妊娠によって減少・低下する所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh148);
    QuestionHeader qh149 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'消化管の消化・吸収'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh149);
    QuestionHeader qh150 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'発症者の核型が46, XYとなる疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh150);
    QuestionHeader qh151 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'見当識障害を起こしやすい疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh151);
    QuestionHeader qh152 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'蚊が媒介する疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh152);
    QuestionHeader qh153 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'胎児付属物'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh153);
    QuestionHeader qh154 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'精神障害者社会復帰のための通所施設'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh154);
    QuestionHeader qh155 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'健常人でもみられる尿沈渣所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh155);
    QuestionHeader qh156 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'アルマ・アタ宣言'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh156);
    QuestionHeader qh157 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'溶血を示す所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh157);
    QuestionHeader qh158 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'高齢者単独世帯数の実態把握'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh158);
    QuestionHeader qh159 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,subjectId:18
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'乳児期早期に行う予防接種'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh159);
    QuestionHeader qh160 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'健康診断で異常を認めた際の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh160);
    QuestionHeader qh161 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'高齢者の生理的特徴'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh161);
    QuestionHeader qh162 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,subjectId:24
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'変形性関節症の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh162);
    QuestionHeader qh163 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,subjectId:16
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'小児のバイタルサイン'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh163);
    QuestionHeader qh164 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,subjectId:9
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'脳動脈瘤の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh164);
    QuestionHeader qh165 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Bishopスコアによる分娩管理の判断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh165);
    QuestionHeader qh166 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'手術室入室後の周術期管理'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh166);
    QuestionHeader qh167 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'梅毒感染が疑われる妊婦への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh167);
    QuestionHeader qh168 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'介護老人保健施設の適応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh168);
    QuestionHeader qh169 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'内視鏡的止血法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh169);
    QuestionHeader qh170 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'SLE患者に予想される血液所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh170);
    QuestionHeader qh171 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'悲嘆のケア〈グリーフケア〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh171);
    QuestionHeader qh172 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,subjectId:3
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'特発性肺線維症に予想される所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh172);
    QuestionHeader qh173 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'産褥無月経の治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh173);
    QuestionHeader qh174 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'癌性疼痛管理'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh174);
    QuestionHeader qh175 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'避妊法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh175);
    QuestionHeader qh176 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'上部消化管内視鏡検査の読影'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh176);
    QuestionHeader qh177 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,subjectId:19
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'医療保護入院患者への行動制限'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh177);
    QuestionHeader qh178 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'産業医の労働安全衛生管理'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh178);
    QuestionHeader qh179 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'外傷患者のトリアージ'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh179);
    QuestionHeader qh180 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'高齢者虐待が疑われる際の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh180);
    QuestionHeader qh181 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'交通外傷の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh181);
    QuestionHeader qh182 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'手術を希望する患者の転院相談'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh182);
    QuestionHeader qh183 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'特発性門脈圧亢進症の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh183);
    QuestionHeader qh184 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'骨髄標本所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh184);
    QuestionHeader qh185 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'現在の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh185);
    QuestionHeader qh186 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'適切な処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh186);
    QuestionHeader qh187 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,subjectId:9
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'予想されるMRI所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh187);
    QuestionHeader qh188 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,subjectId:9
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'発作の誘因'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh188);
    QuestionHeader qh189 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,subjectId:9
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh189);
    QuestionHeader qh190 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'心電図所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh190);
    QuestionHeader qh191 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'上昇するホルモン基礎値'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh191);
    QuestionHeader qh192 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,subjectId:10
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'精神症状の治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh192);
    QuestionHeader qh193 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'損傷臓器'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh193);
    QuestionHeader qh194 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'初期治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh194);
    QuestionHeader qh195 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh195);
    QuestionHeader qh196 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh196);
    QuestionHeader qh197 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh197);
    QuestionHeader qh198 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,subjectId:5
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'治療後に出現した腹膜刺激症状への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh198);
    QuestionHeader qh199 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'C75'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:3
        ,questionText:'陽性尤度比（計算問題）'
        ,numberAnswer:55
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh199);
    QuestionHeader qh200 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'起立性低血圧の原因となる薬剤'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh200);
    QuestionHeader qh201 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'前期破水と関わりが深い疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh201);
    QuestionHeader qh202 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,subjectId:7
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'発作性夜間ヘモグロビン尿症の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh202);
    QuestionHeader qh203 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,subjectId:11
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'くる病の要因'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh203);
    QuestionHeader qh204 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'若年性特発性関節炎の検査所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh204);
    QuestionHeader qh205 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'未治療・活動性の肝膿瘍の所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh205);
    QuestionHeader qh206 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'眼科疾患と視野異常の組合せ'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh206);
    QuestionHeader qh207 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'内痔核'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh207);
    QuestionHeader qh208 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'脳出血'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh208);
    QuestionHeader qh209 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'保険診療の禁煙外来'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh209);
    QuestionHeader qh210 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'不育症の原因となる疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh210);
    QuestionHeader qh211 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'喉頭を観察するのに使用する検査器具'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh211);
    QuestionHeader qh212 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Stevens-Johnson症候群でみられる可能性が高い症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh212);
    QuestionHeader qh213 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'骨肉腫の好発部位'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh213);
    QuestionHeader qh214 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'肺葉内肺分画症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh214);
    QuestionHeader qh215 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'慢性骨髄性白血病治療薬の標的分子'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh215);
    QuestionHeader qh216 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'腎結石の結石成分'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh216);
    QuestionHeader qh217 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'直腸脱の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh217);
    QuestionHeader qh218 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'粟粒結核の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh218);
    QuestionHeader qh219 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'脳動静脈奇形の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh219);
    QuestionHeader qh220 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Wilson病で行う検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh220);
    QuestionHeader qh221 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'強直性脊椎炎と炎症性腰痛'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh221);
    QuestionHeader qh222 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'心原性脳塞栓症の治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh222);
    QuestionHeader qh223 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'ネフローゼ症候群患者への食事指導'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh223);
    QuestionHeader qh224 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Addison病の原因臓器'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh224);
    QuestionHeader qh225 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'機能性ディスペプシアの初期対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh225);
    QuestionHeader qh226 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'腸管出血性大腸菌感染症の検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh226);
    QuestionHeader qh227 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'リウマチ性頸椎症の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh227);
    QuestionHeader qh228 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'丹毒の治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh228);
    QuestionHeader qh229 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'子宮体癌で考慮する治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh229);
    QuestionHeader qh230 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'気道異物で出現する症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh230);
    QuestionHeader qh231 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'感染性心内膜炎に行うべき検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh231);
    QuestionHeader qh232 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'前立腺肥大症による慢性尿閉の治療法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh232);
    QuestionHeader qh233 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'房室中隔欠損症〈心内膜床欠損症〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh233);
    QuestionHeader qh234 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'肺炎患者への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh234);
    QuestionHeader qh235 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'外耳道異物の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh235);
    QuestionHeader qh236 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'消化管潰瘍穿孔の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh236);
    QuestionHeader qh237 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'うつ病の治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh237);
    QuestionHeader qh238 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'白内障患者への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh238);
    QuestionHeader qh239 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'びまん性大細胞型B細胞リンパ腫の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh239);
    QuestionHeader qh240 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'高Ca性クリーゼの治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh240);
    QuestionHeader qh241 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'抗糸球体基底膜腎炎で出現する自己抗体'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh241);
    QuestionHeader qh242 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'真菌性上顎洞炎の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh242);
    QuestionHeader qh243 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'Sheehan症候群の検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh243);
    QuestionHeader qh244 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'原発無月経の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh244);
    QuestionHeader qh245 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'筋萎縮性側索硬化症の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh245);
    QuestionHeader qh246 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'伝染性単核球症の方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh246);
    QuestionHeader qh247 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'完全房室ブロックをきたす薬剤'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh247);
    QuestionHeader qh248 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'加重型妊娠高血圧腎症患者への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh248);
    QuestionHeader qh249 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'HIV感染者に発症したネフローゼ症候群'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh249);
    QuestionHeader qh250 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'甲状腺濾胞癌の上腕骨転移'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh250);
    QuestionHeader qh251 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'角膜ヘルペスの治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh251);
    QuestionHeader qh252 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'手足口病で診察すべき部位'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh252);
    QuestionHeader qh253 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'母児間輸血症候群'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh253);
    QuestionHeader qh254 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'拡張型心筋症の聴診所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh254);
    QuestionHeader qh255 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'突発性難聴の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh255);
    QuestionHeader qh256 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'先天性胆道拡張症と関連が深い病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh256);
    QuestionHeader qh257 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'右前頭葉腫瘍（神経膠芽腫の疑い）'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh257);
    QuestionHeader qh258 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'有棘細胞癌の検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh258);
    QuestionHeader qh259 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'マイコプラズマ肺炎の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh259);
    QuestionHeader qh260 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'心的外傷後ストレス障害〈PTSD〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh260);
    QuestionHeader qh261 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'SLE合併妊娠への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh261);
    QuestionHeader qh262 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'膜性腎症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh262);
    QuestionHeader qh263 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'洞不全症候群で適応となる降圧薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh263);
    QuestionHeader qh264 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'重症急性膵炎の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh264);
    QuestionHeader qh265 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'絨毛膜羊膜炎による切迫早産の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh265);
    QuestionHeader qh266 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'抗リン脂質抗体症候群と関係が深い疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh266);
    QuestionHeader qh267 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'潰瘍性大腸炎の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh267);
    QuestionHeader qh268 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'腰椎椎間板ヘルニアに予想される所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh268);
    QuestionHeader qh269 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Crohn病の治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh269);
    QuestionHeader qh270 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'Lewy小体型認知症の補助診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh270);
    QuestionHeader qh271 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'網膜色素変性で異常を検出する検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh271);
    QuestionHeader qh272 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'先天性十二指腸閉鎖症，腸回転異常症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh272);
    QuestionHeader qh273 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'肺血栓塞栓症の治療薬'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh273);
    QuestionHeader qh274 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'熱中症の初期治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh274);
    QuestionHeader qh275 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'中心静脈カテーテル挿入部位'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh275);
    QuestionHeader qh276 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'診療ガイドラインの主目的'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh276);
    QuestionHeader qh277 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'尿路感染症による敗血症性ショック'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh277);
    QuestionHeader qh278 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'市中肺炎に対する抗菌薬の適正使用'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh278);
    QuestionHeader qh279 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'膨疹'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh279);
    QuestionHeader qh280 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'SOAPの内容'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh280);
    QuestionHeader qh281 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'心電図検査時の電極の位置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh281);
    QuestionHeader qh282 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'脳死判定基準'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh282);
    QuestionHeader qh283 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'下血'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh283);
    QuestionHeader qh284 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'腎臓専門医と連携が必要な慢性腎臓病患者'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh284);
    QuestionHeader qh285 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'膀胱炎の存在を疑う症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh285);
    QuestionHeader qh286 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'リハビリテーションの理念'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh286);
    QuestionHeader qh287 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'片麻痺患者の歩容'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh287);
    QuestionHeader qh288 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'カンファレンスでのプレゼンテーション'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh288);
    QuestionHeader qh289 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'クリニカルシナリオ'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh289);
    QuestionHeader qh290 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'アルコールによる健康障害'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh290);
    QuestionHeader qh291 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'一過性脳虚血発作として扱う症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh291);
    QuestionHeader qh292 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'緊急入院の適応となる疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh292);
    QuestionHeader qh293 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'片側性難聴で起こり得る病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh293);
    QuestionHeader qh294 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'尿中ウロビリノゲンが低下する黄疸'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh294);
    QuestionHeader qh295 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'中心静脈カテーテル挿入時の合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh295);
    QuestionHeader qh296 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'刑法に規定された医師の法的義務'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh296);
    QuestionHeader qh297 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'骨粗鬆症による骨折のリスクファクター'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh297);
    QuestionHeader qh298 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'最も多いヘモグロビンの構成'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh298);
    QuestionHeader qh299 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'統合失調症でみられる関係妄想'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh299);
    QuestionHeader qh300 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'妊娠悪阻患者への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh300);
    QuestionHeader qh301 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'性器出血で考える疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh301);
    QuestionHeader qh302 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'敗血症性ショックが疑われる患者の病態の判定'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh302);
    QuestionHeader qh303 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'ニューモシスチス肺炎'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh303);
    QuestionHeader qh304 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'新生児の蘇生法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh304);
    QuestionHeader qh305 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'家族との連携'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh305);
    QuestionHeader qh306 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'自然気胸の処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh306);
    QuestionHeader qh307 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'生体肝移植による合併症の説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh307);
    QuestionHeader qh308 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'糖尿病患者で血尿がみられた際に行う対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh308);
    QuestionHeader qh309 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'二次救命処置〈ALS〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh309);
    QuestionHeader qh310 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'直腸肛門指診時の患者体位'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh310);
    QuestionHeader qh311 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'急性呼吸窮迫症候群〈ARDS〉の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh311);
    QuestionHeader qh312 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'緑内障の治療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh312);
    QuestionHeader qh313 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'システムレビュー'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh313);
    QuestionHeader qh314 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'一酸化炭素中毒の処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh314);
    QuestionHeader qh315 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'尿が茶褐色となる原因物質'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh315);
    QuestionHeader qh316 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'輸液'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh316);
    QuestionHeader qh317 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'リスクファクター'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh317);
    QuestionHeader qh318 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'貧血の成因を調べる検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh318);
    QuestionHeader qh319 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'尿失禁の種類'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh319);
    QuestionHeader qh320 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh320);
    QuestionHeader qh321 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'脈拍数'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh321);
    QuestionHeader qh322 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'緊急に静注すべき薬剤'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh322);
    QuestionHeader qh323 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'この病態に関与する免疫グロブリン'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh323);
    QuestionHeader qh324 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:1
        ,answerType:1
        ,questionText:'まず行う処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh324);
    QuestionHeader qh325 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'社会保障制度'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh325);
    QuestionHeader qh326 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'角膜移植術'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh326);
    QuestionHeader qh327 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'世界の保健医療'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh327);
    QuestionHeader qh328 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'反射の消失と関連する随意運動'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh328);
    QuestionHeader qh329 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'出席停止の期間'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh329);
    QuestionHeader qh330 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'飲酒が胎児に与える影響'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh330);
    QuestionHeader qh331 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'妊婦が接種できるワクチン'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh331);
    QuestionHeader qh332 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'早期新生児血中に最多の免疫グロブリン'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh332);
    QuestionHeader qh333 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'母子感染の疫学'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh333);
    QuestionHeader qh334 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'胎児超音波検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh334);
    QuestionHeader qh335 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'児童相談所'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh335);
    QuestionHeader qh336 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'視覚刺激投影法による心理学的検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh336);
    QuestionHeader qh337 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'水道法に基づく水質基準'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh337);
    QuestionHeader qh338 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'気管支鏡検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh338);
    QuestionHeader qh339 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'学校保健統計調査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh339);
    QuestionHeader qh340 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'食物摂取とエネルギー代謝'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh340);
    QuestionHeader qh341 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'ユニバーサルデザインの具体例'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh341);
    QuestionHeader qh342 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'ビタミン欠乏とその症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh342);
    QuestionHeader qh343 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'高齢者にみられるフレイルの診断基準'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh343);
    QuestionHeader qh344 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'脳の構造'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh344);
    QuestionHeader qh345 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'妊娠可能女性の職業被曝の実効線量限度'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh345);
    QuestionHeader qh346 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'気分安定化薬の副作用'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh346);
    QuestionHeader qh347 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'疾患と自己抗体の組合せ'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh347);
    QuestionHeader qh348 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'男性生殖器の構造と機能'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh348);
    QuestionHeader qh349 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'妊娠週数の画像診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh349);
    QuestionHeader qh350 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'医療計画'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh350);
    QuestionHeader qh351 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'運動機能障害の合併判定'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh351);
    QuestionHeader qh352 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'味覚を伝える神経'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh352);
    QuestionHeader qh353 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'赤血球の形態・機能'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh353);
    QuestionHeader qh354 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'母子保健法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh354);
    QuestionHeader qh355 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'地域医療支援病院'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh355);
    QuestionHeader qh356 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'介護保険'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh356);
    QuestionHeader qh357 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'5類感染症の全数把握対象疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh357);
    QuestionHeader qh358 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'運動器症候群〈ロコモティブシンドローム〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh358);
    QuestionHeader qh359 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'骨軟化症で摂取を進めるべき食材'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh359);
    QuestionHeader qh360 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'低身長を主訴に来院した患者の母親への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh360);
    QuestionHeader qh361 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'離乳'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh361);
    QuestionHeader qh362 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,subjectId:12
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'熱性けいれん患児の家族への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh362);
    QuestionHeader qh363 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'敗血症の循環動態維持'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh363);
    QuestionHeader qh364 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'調節性内斜視の治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh364);
    QuestionHeader qh365 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'静脈性浮腫'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh365);
    QuestionHeader qh366 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'吐血をきたした患者への処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh366);
    QuestionHeader qh367 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'遺伝カウンセリング'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh367);
    QuestionHeader qh368 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'呼吸性アシドーシス'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh368);
    QuestionHeader qh369 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,subjectId:12
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'関節リウマチ患者の治療計画'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh369);
    QuestionHeader qh370 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,subjectId:1
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'先天性風疹症候群について母親への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh370);
    QuestionHeader qh371 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,subjectId:21
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'コンタクトレンズにより眼痛を認める患者への説明'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh371);
    QuestionHeader qh372 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'高齢者総合機能評価〈CGA〉'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh372);
    QuestionHeader qh373 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,subjectId:17
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'薬疹への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh373);
    QuestionHeader qh374 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'死後経過時間の判定'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh374);
    QuestionHeader qh375 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,subjectId:20
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'掌蹠膿疱症の特徴'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh375);
    QuestionHeader qh376 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'末期癌患者への多職種連携'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh376);
    QuestionHeader qh377 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,subjectId:2
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'子宮腺筋症の診断'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh377);
    QuestionHeader qh378 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,subjectId:16
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'肝損傷への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh378);
    QuestionHeader qh379 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'精神保健福祉相談の窓口'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh379);
    QuestionHeader qh380 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,subjectId:15
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'急性医薬品中毒の対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh380);
    QuestionHeader qh381 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'高齢者の転倒の一次予防'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh381);
    QuestionHeader qh382 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,subjectId:16
        ,pediatricsType:1
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'脱水症の小児の病態'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh382);
    QuestionHeader qh383 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,subjectId:27
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'障害者への対応'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh383);
    QuestionHeader qh384 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'GCS（Glasgow Coma Scale）のEの点数'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh384);
    QuestionHeader qh385 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'認められる所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh385);
    QuestionHeader qh386 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,subjectId:16
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'直ちに行うべき処置'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh386);
    QuestionHeader qh387 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'qSOFAの解釈'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh387);
    QuestionHeader qh388 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'追加で投与すべき薬剤'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh388);
    QuestionHeader qh389 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,subjectId:14
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'退院後の患者に予想される現象'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh389);
    QuestionHeader qh390 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:2
        ,questionText:'伴いやすい症状'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh390);
    QuestionHeader qh391 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'検査所見'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh391);
    QuestionHeader qh392 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,subjectId:23
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'提示すべき治療法'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh392);
    QuestionHeader qh393 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'初療時の注意'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh393);
    QuestionHeader qh394 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'輸液の組成'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh394);
    QuestionHeader qh395 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,subjectId:6
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'施行すべき検査'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh395);
    QuestionHeader qh396 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'治療方針'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh396);
    QuestionHeader qh397 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'合併症'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh397);
    QuestionHeader qh398 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,subjectId:4
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:1
        ,questionText:'考えられる基礎疾患'
        ,numberAnswer:0
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh398);
    QuestionHeader qh399 = QuestionHeader(
        businessYear:2021
        ,period:2
        ,questionNo:'F75'
        ,subjectId:8
        ,pediatricsType:0
        ,compulsoryType:0
        ,answerType:3
        ,questionText:'ナトリウム排泄率の算出（計算問題）'
        ,numberAnswer:3
        ,correctType1:0
        ,correctType2:9
        ,correctType3:9
        ,favorite:false);
    db.insertquestionheader(qh399);


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
        ,optionText:'B細胞減少'
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
        ,optionText:'HIV抗体'
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
        ,optionText:'MCV高値'
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
        ,optionText:'Babinski徴候陽性'
        ,correctType:0);
    db.insertquestionoption(qo7);
    QuestionOption qo8 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A02'
        ,optionCd:'d'
        ,optionText:'Romberg徴候陽性'
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
        ,optionText:'家族性腺腫性ポリポーシス ―――― 蛋白漏出性胃腸症'
        ,correctType:0);
    db.insertquestionoption(qo10);
    QuestionOption qo11 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'b'
        ,optionText:'Cronkhite-Canada症候群 ―――― 潰瘍性大腸炎'
        ,correctType:0);
    db.insertquestionoption(qo11);
    QuestionOption qo12 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'c'
        ,optionText:'Peutz-Jeghers症候群 ―――― 脳腫瘍'
        ,correctType:0);
    db.insertquestionoption(qo12);
    QuestionOption qo13 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'d'
        ,optionText:'Gardner症候群 ―――― 骨・軟部腫瘍'
        ,correctType:1);
    db.insertquestionoption(qo13);
    QuestionOption qo14 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A03'
        ,optionCd:'e'
        ,optionText:'Turcot症候群 ―――― 低カリウム血症'
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
        ,optionText:'発症後6時間以内に捻転が解除されれば精巣機能の回復が期待できる。'
        ,correctType:1);
    db.insertquestionoption(qo24);
    QuestionOption qo25 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'a'
        ,optionText:'ANCA関連血管炎'
        ,correctType:0);
    db.insertquestionoption(qo25);
    QuestionOption qo26 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A06'
        ,optionCd:'b'
        ,optionText:'Sjögren症候群'
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
        ,optionText:'Blalock-Taussig短絡手術'
        ,correctType:0);
    db.insertquestionoption(qo35);
    QuestionOption qo36 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'b'
        ,optionText:'Senning手術'
        ,correctType:0);
    db.insertquestionoption(qo36);
    QuestionOption qo37 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'c'
        ,optionText:'Rastelli手術'
        ,correctType:0);
    db.insertquestionoption(qo37);
    QuestionOption qo38 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'d'
        ,optionText:'Fontan手術'
        ,correctType:0);
    db.insertquestionoption(qo38);
    QuestionOption qo39 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A08'
        ,optionCd:'e'
        ,optionText:'Bentall手術'
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
        ,optionText:'RSウイルス'
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
        ,optionText:'Salmonella enterica ―――― Raw egg'
        ,correctType:1);
    db.insertquestionoption(qo65);
    QuestionOption qo66 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'b'
        ,optionText:'Staphylococcus aureus ―――― Honey'
        ,correctType:0);
    db.insertquestionoption(qo66);
    QuestionOption qo67 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'c'
        ,optionText:'Clostridium perfringens ―――― Rice ball'
        ,correctType:0);
    db.insertquestionoption(qo67);
    QuestionOption qo68 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'d'
        ,optionText:'Vibrio parahaemolyticus ―――― Seafood'
        ,correctType:1);
    db.insertquestionoption(qo68);
    QuestionOption qo69 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A14'
        ,optionCd:'e'
        ,optionText:'Campylobacter jejuni ―――― Chicken'
        ,correctType:1);
    db.insertquestionoption(qo69);
    QuestionOption qo70 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'a'
        ,optionText:'パピローマウイルス'
        ,correctType:0);
    db.insertquestionoption(qo70);
    QuestionOption qo71 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'b'
        ,optionText:'道逆流症'
        ,correctType:0);
    db.insertquestionoption(qo71);
    QuestionOption qo72 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'c'
        ,optionText:'ラシア'
        ,correctType:1);
    db.insertquestionoption(qo72);
    QuestionOption qo73 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'d'
        ,optionText:'煙'
        ,correctType:1);
    db.insertquestionoption(qo73);
    QuestionOption qo74 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A15'
        ,optionCd:'e'
        ,optionText:'酒'
        ,correctType:1);
    db.insertquestionoption(qo74);
    QuestionOption qo75 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,optionCd:'a'
        ,optionText:'肺気腫'
        ,correctType:0);
    db.insertquestionoption(qo75);
    QuestionOption qo76 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,optionCd:'b'
        ,optionText:'肺高血圧'
        ,correctType:1);
    db.insertquestionoption(qo76);
    QuestionOption qo77 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,optionCd:'c'
        ,optionText:'気管支喘息'
        ,correctType:0);
    db.insertquestionoption(qo77);
    QuestionOption qo78 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,optionCd:'d'
        ,optionText:'間質性肺炎'
        ,correctType:0);
    db.insertquestionoption(qo78);
    QuestionOption qo79 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,optionCd:'e'
        ,optionText:'気管支拡張症'
        ,correctType:0);
    db.insertquestionoption(qo79);
    QuestionOption qo80 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,optionCd:'a'
        ,optionText:'不正軸侵入'
        ,correctType:0);
    db.insertquestionoption(qo80);
    QuestionOption qo81 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,optionCd:'b'
        ,optionText:'前期破水'
        ,correctType:0);
    db.insertquestionoption(qo81);
    QuestionOption qo82 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,optionCd:'c'
        ,optionText:'微弱陣痛'
        ,correctType:0);
    db.insertquestionoption(qo82);
    QuestionOption qo83 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,optionCd:'d'
        ,optionText:'回旋異常'
        ,correctType:1);
    db.insertquestionoption(qo83);
    QuestionOption qo84 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,optionCd:'e'
        ,optionText:'正常経過'
        ,correctType:0);
    db.insertquestionoption(qo84);
    QuestionOption qo85 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,optionCd:'a'
        ,optionText:'糖原病Ⅲ型'
        ,correctType:0);
    db.insertquestionoption(qo85);
    QuestionOption qo86 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,optionCd:'b'
        ,optionText:'ネマリンミオパチー'
        ,correctType:0);
    db.insertquestionoption(qo86);
    QuestionOption qo87 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,optionCd:'c'
        ,optionText:'筋強直性ジストロフィー'
        ,correctType:1);
    db.insertquestionoption(qo87);
    QuestionOption qo88 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,optionCd:'d'
        ,optionText:'Werdnig-Hoffmann症候群'
        ,correctType:0);
    db.insertquestionoption(qo88);
    QuestionOption qo89 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,optionCd:'e'
        ,optionText:'Duchenne型筋ジストロフィー'
        ,correctType:0);
    db.insertquestionoption(qo89);
    QuestionOption qo90 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'a'
        ,optionText:'肺サーファクタント投与'
        ,correctType:1);
    db.insertquestionoption(qo90);
    QuestionOption qo91 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'b'
        ,optionText:'気管内洗浄'
        ,correctType:0);
    db.insertquestionoption(qo91);
    QuestionOption qo92 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'c'
        ,optionText:'抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo92);
    QuestionOption qo93 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'d'
        ,optionText:'強心薬投与'
        ,correctType:0);
    db.insertquestionoption(qo93);
    QuestionOption qo94 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,optionCd:'e'
        ,optionText:'胸腔穿刺'
        ,correctType:0);
    db.insertquestionoption(qo94);
    QuestionOption qo95 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,optionCd:'a'
        ,optionText:'頭蓋内圧亢進'
        ,correctType:1);
    db.insertquestionoption(qo95);
    QuestionOption qo96 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,optionCd:'b'
        ,optionText:'中心暗点'
        ,correctType:0);
    db.insertquestionoption(qo96);
    QuestionOption qo97 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,optionCd:'c'
        ,optionText:'瞳孔強直'
        ,correctType:0);
    db.insertquestionoption(qo97);
    QuestionOption qo98 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,optionCd:'d'
        ,optionText:'眼圧上昇'
        ,correctType:0);
    db.insertquestionoption(qo98);
    QuestionOption qo99 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,optionCd:'e'
        ,optionText:'変視症'
        ,correctType:0);
    db.insertquestionoption(qo99);
    QuestionOption qo100 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,optionCd:'a'
        ,optionText:'活性酸素産生能低下'
        ,correctType:1);
    db.insertquestionoption(qo100);
    QuestionOption qo101 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,optionCd:'b'
        ,optionText:'胸腺形成不全'
        ,correctType:0);
    db.insertquestionoption(qo101);
    QuestionOption qo102 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,optionCd:'c'
        ,optionText:'体幹失調症'
        ,correctType:0);
    db.insertquestionoption(qo102);
    QuestionOption qo103 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,optionCd:'d'
        ,optionText:'貪食能低下'
        ,correctType:0);
    db.insertquestionoption(qo103);
    QuestionOption qo104 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,optionCd:'e'
        ,optionText:'遊走能低下'
        ,correctType:0);
    db.insertquestionoption(qo104);
    QuestionOption qo105 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,optionCd:'a'
        ,optionText:'「植込み型除細動器が必要になる人が多いです」'
        ,correctType:0);
    db.insertquestionoption(qo105);
    QuestionOption qo106 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,optionCd:'b'
        ,optionText:'「ほとんどの方はカテーテル治療で治せます」'
        ,correctType:1);
    db.insertquestionoption(qo106);
    QuestionOption qo107 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,optionCd:'c'
        ,optionText:'「特に心配はなく，治療の必要はありません」'
        ,correctType:0);
    db.insertquestionoption(qo107);
    QuestionOption qo108 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,optionCd:'d'
        ,optionText:'「ペースメーカ植込みの適応があります」'
        ,correctType:0);
    db.insertquestionoption(qo108);
    QuestionOption qo109 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,optionCd:'e'
        ,optionText:'「このまま緊急入院が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo109);
    QuestionOption qo110 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,optionCd:'a'
        ,optionText:'誘発電位'
        ,correctType:0);
    db.insertquestionoption(qo110);
    QuestionOption qo111 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,optionCd:'b'
        ,optionText:'脳SPECT'
        ,correctType:0);
    db.insertquestionoption(qo111);
    QuestionOption qo112 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,optionCd:'c'
        ,optionText:'頭部単純MRI'
        ,correctType:0);
    db.insertquestionoption(qo112);
    QuestionOption qo113 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,optionCd:'d'
        ,optionText:'動脈血ガス分析'
        ,correctType:0);
    db.insertquestionoption(qo113);
    QuestionOption qo114 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,optionCd:'e'
        ,optionText:'終夜睡眠ポリソムノグラフィ'
        ,correctType:1);
    db.insertquestionoption(qo114);
    QuestionOption qo115 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'a'
        ,optionText:'GIST'
        ,correctType:0);
    db.insertquestionoption(qo115);
    QuestionOption qo116 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'b'
        ,optionText:'胃　癌'
        ,correctType:0);
    db.insertquestionoption(qo116);
    QuestionOption qo117 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'c'
        ,optionText:'胃腺腫'
        ,correctType:0);
    db.insertquestionoption(qo117);
    QuestionOption qo118 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'d'
        ,optionText:'胃平滑筋腫'
        ,correctType:0);
    db.insertquestionoption(qo118);
    QuestionOption qo119 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,optionCd:'e'
        ,optionText:'胃悪性リンパ腫'
        ,correctType:1);
    db.insertquestionoption(qo119);
    QuestionOption qo120 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo120);
    QuestionOption qo121 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:0);
    db.insertquestionoption(qo121);
    QuestionOption qo122 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:1);
    db.insertquestionoption(qo122);
    QuestionOption qo123 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:0);
    db.insertquestionoption(qo123);
    QuestionOption qo124 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo124);
    QuestionOption qo125 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,optionCd:'a'
        ,optionText:'マクロライド系抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo125);
    QuestionOption qo126 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,optionCd:'b'
        ,optionText:'副腎皮質ステロイド外用'
        ,correctType:0);
    db.insertquestionoption(qo126);
    QuestionOption qo127 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,optionCd:'c'
        ,optionText:'βラクタム系抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo127);
    QuestionOption qo128 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,optionCd:'d'
        ,optionText:'抗ヒスタミン薬投与'
        ,correctType:0);
    db.insertquestionoption(qo128);
    QuestionOption qo129 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,optionCd:'e'
        ,optionText:'ビダラビン軟膏外用'
        ,correctType:1);
    db.insertquestionoption(qo129);
    QuestionOption qo130 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,optionCd:'a'
        ,optionText:'血友病'
        ,correctType:1);
    db.insertquestionoption(qo130);
    QuestionOption qo131 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,optionCd:'b'
        ,optionText:'Glamzmann病'
        ,correctType:0);
    db.insertquestionoption(qo131);
    QuestionOption qo132 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,optionCd:'c'
        ,optionText:'von Willebrand病'
        ,correctType:0);
    db.insertquestionoption(qo132);
    QuestionOption qo133 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,optionCd:'d'
        ,optionText:'抗リン脂質抗体症候群'
        ,correctType:0);
    db.insertquestionoption(qo133);
    QuestionOption qo134 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,optionCd:'e'
        ,optionText:'Bernard-Soulier症候群'
        ,correctType:0);
    db.insertquestionoption(qo134);
    QuestionOption qo135 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,optionCd:'a'
        ,optionText:'視覚誘発電位〈VEP〉測定'
        ,correctType:0);
    db.insertquestionoption(qo135);
    QuestionOption qo136 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,optionCd:'b'
        ,optionText:'免疫抑制療法'
        ,correctType:0);
    db.insertquestionoption(qo136);
    QuestionOption qo137 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,optionCd:'c'
        ,optionText:'血漿交換療法'
        ,correctType:0);
    db.insertquestionoption(qo137);
    QuestionOption qo138 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,optionCd:'d'
        ,optionText:'薬物治療'
        ,correctType:1);
    db.insertquestionoption(qo138);
    QuestionOption qo139 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,optionCd:'e'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo139);
    QuestionOption qo140 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,optionCd:'a'
        ,optionText:'うつ病'
        ,correctType:0);
    db.insertquestionoption(qo140);
    QuestionOption qo141 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,optionCd:'b'
        ,optionText:'統合失調症'
        ,correctType:0);
    db.insertquestionoption(qo141);
    QuestionOption qo142 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,optionCd:'c'
        ,optionText:'びまん性軸索損傷'
        ,correctType:0);
    db.insertquestionoption(qo142);
    QuestionOption qo143 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,optionCd:'d'
        ,optionText:'アルコール離脱せん妄'
        ,correctType:0);
    db.insertquestionoption(qo143);
    QuestionOption qo144 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,optionCd:'e'
        ,optionText:'抗NMDA受容体抗体脳炎'
        ,correctType:1);
    db.insertquestionoption(qo144);
    QuestionOption qo145 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,optionCd:'a'
        ,optionText:'空気感染する。'
        ,correctType:0);
    db.insertquestionoption(qo145);
    QuestionOption qo146 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,optionCd:'b'
        ,optionText:'将来不妊になる。'
        ,correctType:0);
    db.insertquestionoption(qo146);
    QuestionOption qo147 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,optionCd:'c'
        ,optionText:'合併症に感音難聴がある。'
        ,correctType:1);
    db.insertquestionoption(qo147);
    QuestionOption qo148 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,optionCd:'d'
        ,optionText:'髄液で蛋白細胞解離を認める。'
        ,correctType:0);
    db.insertquestionoption(qo148);
    QuestionOption qo149 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,optionCd:'e'
        ,optionText:'治療には抗ウイルス薬を用いる。'
        ,correctType:0);
    db.insertquestionoption(qo149);
    QuestionOption qo150 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,optionCd:'a'
        ,optionText:'血小板のクローン性増殖が原因である。'
        ,correctType:0);
    db.insertquestionoption(qo150);
    QuestionOption qo151 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,optionCd:'b'
        ,optionText:'APTT延長を伴う血栓傾向をきたす。'
        ,correctType:0);
    db.insertquestionoption(qo151);
    QuestionOption qo152 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,optionCd:'c'
        ,optionText:'不明熱の原因の1つである。'
        ,correctType:1);
    db.insertquestionoption(qo152);
    QuestionOption qo153 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,optionCd:'d'
        ,optionText:'リウマチ熱の後遺症である。'
        ,correctType:0);
    db.insertquestionoption(qo153);
    QuestionOption qo154 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,optionCd:'e'
        ,optionText:'抜歯が誘因となる。'
        ,correctType:0);
    db.insertquestionoption(qo154);
    QuestionOption qo155 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,optionCd:'a'
        ,optionText:'副腎皮質ステロイド投与'
        ,correctType:0);
    db.insertquestionoption(qo155);
    QuestionOption qo156 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,optionCd:'b'
        ,optionText:'第Ⅷ凝固因子投与'
        ,correctType:0);
    db.insertquestionoption(qo156);
    QuestionOption qo157 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,optionCd:'c'
        ,optionText:'ヘパリン投与'
        ,correctType:0);
    db.insertquestionoption(qo157);
    QuestionOption qo158 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,optionCd:'d'
        ,optionText:'血小板輸血'
        ,correctType:0);
    db.insertquestionoption(qo158);
    QuestionOption qo159 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,optionCd:'e'
        ,optionText:'血漿交換'
        ,correctType:1);
    db.insertquestionoption(qo159);
    QuestionOption qo160 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,optionCd:'a'
        ,optionText:'尿道再建術'
        ,correctType:0);
    db.insertquestionoption(qo160);
    QuestionOption qo161 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,optionCd:'b'
        ,optionText:'膀胱瘻造設'
        ,correctType:0);
    db.insertquestionoption(qo161);
    QuestionOption qo162 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,optionCd:'c'
        ,optionText:'陰囊部切開ドレナージ'
        ,correctType:0);
    db.insertquestionoption(qo162);
    QuestionOption qo163 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,optionCd:'d'
        ,optionText:'鎮痛薬投与による経過観察'
        ,correctType:0);
    db.insertquestionoption(qo163);
    QuestionOption qo164 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,optionCd:'e'
        ,optionText:'尿道バルーンカテーテル留置'
        ,correctType:1);
    db.insertquestionoption(qo164);
    QuestionOption qo165 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,optionCd:'a'
        ,optionText:'腹膜透析は困難が予想される。'
        ,correctType:1);
    db.insertquestionoption(qo165);
    QuestionOption qo166 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,optionCd:'b'
        ,optionText:'生物学的製剤は血液透析で禁忌である。'
        ,correctType:0);
    db.insertquestionoption(qo166);
    QuestionOption qo167 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,optionCd:'c'
        ,optionText:'腎代替療法に移行したらステロイドは非経口的に投与する。'
        ,correctType:0);
    db.insertquestionoption(qo167);
    QuestionOption qo168 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,optionCd:'d'
        ,optionText:'血液透析ではヘパリンを使用するためアスピリンは不要となる。'
        ,correctType:0);
    db.insertquestionoption(qo168);
    QuestionOption qo169 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,optionCd:'e'
        ,optionText:'血清クレアチニンが10 mg/dL以上に至るまで腎代替療法は不要である。'
        ,correctType:0);
    db.insertquestionoption(qo169);
    QuestionOption qo170 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,optionCd:'a'
        ,optionText:'脂肪肝'
        ,correctType:0);
    db.insertquestionoption(qo170);
    QuestionOption qo171 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,optionCd:'b'
        ,optionText:'肝膿瘍'
        ,correctType:0);
    db.insertquestionoption(qo171);
    QuestionOption qo172 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,optionCd:'c'
        ,optionText:'肝血管腫'
        ,correctType:0);
    db.insertquestionoption(qo172);
    QuestionOption qo173 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,optionCd:'d'
        ,optionText:'肝細胞癌'
        ,correctType:0);
    db.insertquestionoption(qo173);
    QuestionOption qo174 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,optionCd:'e'
        ,optionText:'転移性肝癌'
        ,correctType:1);
    db.insertquestionoption(qo174);
    QuestionOption qo175 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,optionCd:'a'
        ,optionText:'顔面播種状粟粒性狼瘡'
        ,correctType:0);
    db.insertquestionoption(qo175);
    QuestionOption qo176 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,optionCd:'b'
        ,optionText:'酒皶様皮膚炎'
        ,correctType:0);
    db.insertquestionoption(qo176);
    QuestionOption qo177 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,optionCd:'c'
        ,optionText:'尋常性痤瘡'
        ,correctType:1);
    db.insertquestionoption(qo177);
    QuestionOption qo178 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,optionCd:'d'
        ,optionText:'尋常性狼瘡'
        ,correctType:0);
    db.insertquestionoption(qo178);
    QuestionOption qo179 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,optionCd:'e'
        ,optionText:'膿疱性乾癬'
        ,correctType:0);
    db.insertquestionoption(qo179);
    QuestionOption qo180 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,optionCd:'a'
        ,optionText:'肺　炎'
        ,correctType:1);
    db.insertquestionoption(qo180);
    QuestionOption qo181 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,optionCd:'b'
        ,optionText:'咽頭炎'
        ,correctType:0);
    db.insertquestionoption(qo181);
    QuestionOption qo182 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,optionCd:'c'
        ,optionText:'結膜炎'
        ,correctType:0);
    db.insertquestionoption(qo182);
    QuestionOption qo183 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,optionCd:'d'
        ,optionText:'前立腺炎'
        ,correctType:0);
    db.insertquestionoption(qo183);
    QuestionOption qo184 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,optionCd:'e'
        ,optionText:'精巣上体炎'
        ,correctType:0);
    db.insertquestionoption(qo184);
    QuestionOption qo185 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,optionCd:'a'
        ,optionText:'好酸球性多発血管炎性肉芽腫症〈Churg-Strauss症候群〉'
        ,correctType:0);
    db.insertquestionoption(qo185);
    QuestionOption qo186 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,optionCd:'b'
        ,optionText:'サルコイドーシス'
        ,correctType:0);
    db.insertquestionoption(qo186);
    QuestionOption qo187 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,optionCd:'c'
        ,optionText:'関節リウマチ'
        ,correctType:0);
    db.insertquestionoption(qo187);
    QuestionOption qo188 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,optionCd:'d'
        ,optionText:'肺　癌'
        ,correctType:1);
    db.insertquestionoption(qo188);
    QuestionOption qo189 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,optionCd:'e'
        ,optionText:'結　核'
        ,correctType:0);
    db.insertquestionoption(qo189);
    QuestionOption qo190 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,optionCd:'a'
        ,optionText:'原発性副甲状腺機能亢進症'
        ,correctType:0);
    db.insertquestionoption(qo190);
    QuestionOption qo191 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,optionCd:'b'
        ,optionText:'原発性骨腫瘍'
        ,correctType:0);
    db.insertquestionoption(qo191);
    QuestionOption qo192 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,optionCd:'c'
        ,optionText:'転移性骨腫瘍'
        ,correctType:1);
    db.insertquestionoption(qo192);
    QuestionOption qo193 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,optionCd:'d'
        ,optionText:'骨軟化症'
        ,correctType:0);
    db.insertquestionoption(qo193);
    QuestionOption qo194 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,optionCd:'e'
        ,optionText:'骨粗鬆症'
        ,correctType:0);
    db.insertquestionoption(qo194);
    QuestionOption qo195 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,optionCd:'a'
        ,optionText:'ニトログリセリン投与'
        ,correctType:0);
    db.insertquestionoption(qo195);
    QuestionOption qo196 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,optionCd:'b'
        ,optionText:'大動脈弁置換術'
        ,correctType:1);
    db.insertquestionoption(qo196);
    QuestionOption qo197 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,optionCd:'c'
        ,optionText:'ベラパミル投与'
        ,correctType:0);
    db.insertquestionoption(qo197);
    QuestionOption qo198 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,optionCd:'d'
        ,optionText:'僧帽弁形成術'
        ,correctType:0);
    db.insertquestionoption(qo198);
    QuestionOption qo199 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,optionCd:'e'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo199);
    QuestionOption qo200 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,optionCd:'a'
        ,optionText:'抗糸球体基底膜抗体'
        ,correctType:0);
    db.insertquestionoption(qo200);
    QuestionOption qo201 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,optionCd:'b'
        ,optionText:'抗dsDNA抗体'
        ,correctType:0);
    db.insertquestionoption(qo201);
    QuestionOption qo202 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,optionCd:'c'
        ,optionText:'抗GAD抗体'
        ,correctType:0);
    db.insertquestionoption(qo202);
    QuestionOption qo203 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,optionCd:'d'
        ,optionText:'抗SS-B抗体'
        ,correctType:1);
    db.insertquestionoption(qo203);
    QuestionOption qo204 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,optionCd:'e'
        ,optionText:'抗Sm抗体'
        ,correctType:0);
    db.insertquestionoption(qo204);
    QuestionOption qo205 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,optionCd:'a'
        ,optionText:'網膜中心静脈閉塞症'
        ,correctType:1);
    db.insertquestionoption(qo205);
    QuestionOption qo206 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,optionCd:'b'
        ,optionText:'網膜中心動脈閉塞症'
        ,correctType:0);
    db.insertquestionoption(qo206);
    QuestionOption qo207 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,optionCd:'c'
        ,optionText:'網膜色素変性'
        ,correctType:0);
    db.insertquestionoption(qo207);
    QuestionOption qo208 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,optionCd:'d'
        ,optionText:'糖尿病網膜症'
        ,correctType:0);
    db.insertquestionoption(qo208);
    QuestionOption qo209 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,optionCd:'e'
        ,optionText:'Behçet病'
        ,correctType:0);
    db.insertquestionoption(qo209);
    QuestionOption qo210 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,optionCd:'a'
        ,optionText:'アンドロゲン受容体検索'
        ,correctType:1);
    db.insertquestionoption(qo210);
    QuestionOption qo211 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,optionCd:'b'
        ,optionText:'腋窩リンパ節触診'
        ,correctType:0);
    db.insertquestionoption(qo211);
    QuestionOption qo212 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,optionCd:'c'
        ,optionText:'血清CA15-3測定'
        ,correctType:0);
    db.insertquestionoption(qo212);
    QuestionOption qo213 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,optionCd:'d'
        ,optionText:'穿刺吸引細胞診'
        ,correctType:0);
    db.insertquestionoption(qo213);
    QuestionOption qo214 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,optionCd:'e'
        ,optionText:'超音波検査'
        ,correctType:0);
    db.insertquestionoption(qo214);
    QuestionOption qo215 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,optionCd:'a'
        ,optionText:'子宮鏡検査'
        ,correctType:0);
    db.insertquestionoption(qo215);
    QuestionOption qo216 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,optionCd:'b'
        ,optionText:'淋菌PCR検査'
        ,correctType:0);
    db.insertquestionoption(qo216);
    QuestionOption qo217 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,optionCd:'c'
        ,optionText:'子宮内膜全面搔爬術'
        ,correctType:0);
    db.insertquestionoption(qo217);
    QuestionOption qo218 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,optionCd:'d'
        ,optionText:'クラミジア抗原検査'
        ,correctType:0);
    db.insertquestionoption(qo218);
    QuestionOption qo219 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,optionCd:'e'
        ,optionText:'エストリオール薬投与'
        ,correctType:1);
    db.insertquestionoption(qo219);
    QuestionOption qo220 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,optionCd:'a'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo220);
    QuestionOption qo221 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,optionCd:'b'
        ,optionText:'輸液負荷'
        ,correctType:0);
    db.insertquestionoption(qo221);
    QuestionOption qo222 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,optionCd:'c'
        ,optionText:'利尿薬静注'
        ,correctType:1);
    db.insertquestionoption(qo222);
    QuestionOption qo223 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,optionCd:'d'
        ,optionText:'ドパミン投与'
        ,correctType:0);
    db.insertquestionoption(qo223);
    QuestionOption qo224 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,optionCd:'e'
        ,optionText:'大動脈内バルーンパンピング〈IABP〉挿入'
        ,correctType:0);
    db.insertquestionoption(qo224);
    QuestionOption qo225 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,optionCd:'a'
        ,optionText:'抗利尿ホルモン　測定感度以下（基準0.3～3.5）'
        ,correctType:0);
    db.insertquestionoption(qo225);
    QuestionOption qo226 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,optionCd:'b'
        ,optionText:'血清浸透圧　251 mOsm/L（基準275～290）'
        ,correctType:1);
    db.insertquestionoption(qo226);
    QuestionOption qo227 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,optionCd:'c'
        ,optionText:'血中アンモニア　90 μg/dL（基準18～48）'
        ,correctType:0);
    db.insertquestionoption(qo227);
    QuestionOption qo228 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,optionCd:'d'
        ,optionText:'血清尿酸値　9.8 mg/dL'
        ,correctType:0);
    db.insertquestionoption(qo228);
    QuestionOption qo229 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,optionCd:'e'
        ,optionText:'尿ケトン体　強陽性'
        ,correctType:0);
    db.insertquestionoption(qo229);
    QuestionOption qo230 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,optionCd:'a'
        ,optionText:'石鹸を泡立てた手でなで洗いする。'
        ,correctType:1);
    db.insertquestionoption(qo230);
    QuestionOption qo231 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,optionCd:'b'
        ,optionText:'湯の温度は43℃前後とする。'
        ,correctType:0);
    db.insertquestionoption(qo231);
    QuestionOption qo232 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,optionCd:'c'
        ,optionText:'タオルはナイロン製を使う。'
        ,correctType:0);
    db.insertquestionoption(qo232);
    QuestionOption qo233 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,optionCd:'d'
        ,optionText:'脱脂力の強い石鹸を選ぶ。'
        ,correctType:0);
    db.insertquestionoption(qo233);
    QuestionOption qo234 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,optionCd:'e'
        ,optionText:'1日2回以上入浴する。'
        ,correctType:0);
    db.insertquestionoption(qo234);
    QuestionOption qo235 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,optionCd:'a'
        ,optionText:'大量メルファラン療法後自家末梢血造血幹細胞移植'
        ,correctType:0);
    db.insertquestionoption(qo235);
    QuestionOption qo236 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,optionCd:'b'
        ,optionText:'プロテアソーム阻害薬併用療法'
        ,correctType:1);
    db.insertquestionoption(qo236);
    QuestionOption qo237 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,optionCd:'c'
        ,optionText:'デキサメタゾン大量療法'
        ,correctType:0);
    db.insertquestionoption(qo237);
    QuestionOption qo238 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,optionCd:'d'
        ,optionText:'少量の局所放射線照射'
        ,correctType:0);
    db.insertquestionoption(qo238);
    QuestionOption qo239 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,optionCd:'e'
        ,optionText:'無治療経過観察'
        ,correctType:0);
    db.insertquestionoption(qo239);
    QuestionOption qo240 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,optionCd:'a'
        ,optionText:'心室中隔欠損症'
        ,correctType:0);
    db.insertquestionoption(qo240);
    QuestionOption qo241 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,optionCd:'b'
        ,optionText:'亜急性心内膜炎'
        ,correctType:0);
    db.insertquestionoption(qo241);
    QuestionOption qo242 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,optionCd:'c'
        ,optionText:'動脈管開存症'
        ,correctType:0);
    db.insertquestionoption(qo242);
    QuestionOption qo243 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,optionCd:'d'
        ,optionText:'急性胸膜炎'
        ,correctType:0);
    db.insertquestionoption(qo243);
    QuestionOption qo244 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,optionCd:'e'
        ,optionText:'肺動静脈瘻'
        ,correctType:1);
    db.insertquestionoption(qo244);
    QuestionOption qo245 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,optionCd:'a'
        ,optionText:'ヒトヘルペスウイルス8が関与する。'
        ,correctType:0);
    db.insertquestionoption(qo245);
    QuestionOption qo246 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,optionCd:'b'
        ,optionText:'ホルモン療法が有効である。'
        ,correctType:0);
    db.insertquestionoption(qo246);
    QuestionOption qo247 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,optionCd:'c'
        ,optionText:'多くは扁平上皮癌である。'
        ,correctType:1);
    db.insertquestionoption(qo247);
    QuestionOption qo248 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,optionCd:'d'
        ,optionText:'生検は禁忌である。'
        ,correctType:0);
    db.insertquestionoption(qo248);
    QuestionOption qo249 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,optionCd:'e'
        ,optionText:'若年者に多い。'
        ,correctType:0);
    db.insertquestionoption(qo249);
    QuestionOption qo250 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,optionCd:'a'
        ,optionText:'「眼から出てしまったものを眼の中に戻します」'
        ,correctType:0);
    db.insertquestionoption(qo250);
    QuestionOption qo251 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,optionCd:'b'
        ,optionText:'「すぐに眼科医を呼びます」'
        ,correctType:1);
    db.insertquestionoption(qo251);
    QuestionOption qo252 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,optionCd:'c'
        ,optionText:'「MRIを撮影しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo252);
    QuestionOption qo253 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,optionCd:'d'
        ,optionText:'「水道水で眼を洗います」'
        ,correctType:0);
    db.insertquestionoption(qo253);
    QuestionOption qo254 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,optionCd:'e'
        ,optionText:'「まぶたを圧迫します」'
        ,correctType:0);
    db.insertquestionoption(qo254);
    QuestionOption qo255 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,optionCd:'a'
        ,optionText:'自閉症スペクトラム障害'
        ,correctType:0);
    db.insertquestionoption(qo255);
    QuestionOption qo256 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,optionCd:'b'
        ,optionText:'統合失調症'
        ,correctType:0);
    db.insertquestionoption(qo256);
    QuestionOption qo257 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,optionCd:'c'
        ,optionText:'学習障害'
        ,correctType:1);
    db.insertquestionoption(qo257);
    QuestionOption qo258 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,optionCd:'d'
        ,optionText:'知的障害'
        ,correctType:0);
    db.insertquestionoption(qo258);
    QuestionOption qo259 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,optionCd:'e'
        ,optionText:'適応障害'
        ,correctType:0);
    db.insertquestionoption(qo259);
    QuestionOption qo260 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,optionCd:'a'
        ,optionText:'体外衝撃波結石破砕術'
        ,correctType:0);
    db.insertquestionoption(qo260);
    QuestionOption qo261 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,optionCd:'b'
        ,optionText:'分子標的療法薬投与'
        ,correctType:0);
    db.insertquestionoption(qo261);
    QuestionOption qo262 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,optionCd:'c'
        ,optionText:'左腎部分摘除術'
        ,correctType:0);
    db.insertquestionoption(qo262);
    QuestionOption qo263 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,optionCd:'d'
        ,optionText:'左腎動脈塞栓術'
        ,correctType:0);
    db.insertquestionoption(qo263);
    QuestionOption qo264 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,optionCd:'e'
        ,optionText:'左腎尿管全摘術'
        ,correctType:1);
    db.insertquestionoption(qo264);
    QuestionOption qo265 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,optionCd:'a'
        ,optionText:'鉄剤投与'
        ,correctType:0);
    db.insertquestionoption(qo265);
    QuestionOption qo266 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,optionCd:'b'
        ,optionText:'新鮮凍結血漿投与'
        ,correctType:0);
    db.insertquestionoption(qo266);
    QuestionOption qo267 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,optionCd:'c'
        ,optionText:'ステロイドパルス療法'
        ,correctType:0);
    db.insertquestionoption(qo267);
    QuestionOption qo268 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,optionCd:'d'
        ,optionText:'ドパミン受容体刺激薬投与'
        ,correctType:0);
    db.insertquestionoption(qo268);
    QuestionOption qo269 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,optionCd:'e'
        ,optionText:'低用量アスピリン・ヘパリン併用療法'
        ,correctType:1);
    db.insertquestionoption(qo269);
    QuestionOption qo270 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,optionCd:'a'
        ,optionText:'β2マイクログロブリン'
        ,correctType:1);
    db.insertquestionoption(qo270);
    QuestionOption qo271 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,optionCd:'b'
        ,optionText:'副甲状腺ホルモン'
        ,correctType:0);
    db.insertquestionoption(qo271);
    QuestionOption qo272 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,optionCd:'c'
        ,optionText:'インスリン'
        ,correctType:0);
    db.insertquestionoption(qo272);
    QuestionOption qo273 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,optionCd:'d'
        ,optionText:'無機リン'
        ,correctType:0);
    db.insertquestionoption(qo273);
    QuestionOption qo274 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,optionCd:'e'
        ,optionText:'尿素窒素'
        ,correctType:0);
    db.insertquestionoption(qo274);
    QuestionOption qo275 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,optionCd:'a'
        ,optionText:'好中球アルカリフォスファターゼ活性'
        ,correctType:0);
    db.insertquestionoption(qo275);
    QuestionOption qo276 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,optionCd:'b'
        ,optionText:'骨髄生検組織の鍍銀染色'
        ,correctType:0);
    db.insertquestionoption(qo276);
    QuestionOption qo277 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,optionCd:'c'
        ,optionText:'血清エリスロポエチン値'
        ,correctType:0);
    db.insertquestionoption(qo277);
    QuestionOption qo278 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,optionCd:'d'
        ,optionText:'BCR/ABL融合遺伝子'
        ,correctType:0);
    db.insertquestionoption(qo278);
    QuestionOption qo279 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,optionCd:'e'
        ,optionText:'JAK2遺伝子変異'
        ,correctType:1);
    db.insertquestionoption(qo279);
    QuestionOption qo280 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,optionCd:'a'
        ,optionText:'第三世代セフェム系抗菌薬'
        ,correctType:0);
    db.insertquestionoption(qo280);
    QuestionOption qo281 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,optionCd:'b'
        ,optionText:'副腎皮質ステロイド'
        ,correctType:0);
    db.insertquestionoption(qo281);
    QuestionOption qo282 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,optionCd:'c'
        ,optionText:'抗ウイルス薬'
        ,correctType:0);
    db.insertquestionoption(qo282);
    QuestionOption qo283 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,optionCd:'d'
        ,optionText:'抗真菌薬'
        ,correctType:1);
    db.insertquestionoption(qo283);
    QuestionOption qo284 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,optionCd:'e'
        ,optionText:'抗結核薬'
        ,correctType:0);
    db.insertquestionoption(qo284);
    QuestionOption qo285 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,optionCd:'a'
        ,optionText:'免疫抑制薬内服'
        ,correctType:0);
    db.insertquestionoption(qo285);
    QuestionOption qo286 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,optionCd:'b'
        ,optionText:'リツキシマブ静注'
        ,correctType:0);
    db.insertquestionoption(qo286);
    QuestionOption qo287 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,optionCd:'c'
        ,optionText:'サリドマイド内服'
        ,correctType:0);
    db.insertquestionoption(qo287);
    QuestionOption qo288 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,optionCd:'d'
        ,optionText:'免疫グロブリン大量静注療法'
        ,correctType:1);
    db.insertquestionoption(qo288);
    QuestionOption qo289 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,optionCd:'e'
        ,optionText:'シクロフォスファミドパルス療法'
        ,correctType:0);
    db.insertquestionoption(qo289);
    QuestionOption qo290 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,optionCd:'a'
        ,optionText:'経皮的エタノール注入療法'
        ,correctType:0);
    db.insertquestionoption(qo290);
    QuestionOption qo291 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,optionCd:'b'
        ,optionText:'経口胆石溶解薬投与'
        ,correctType:0);
    db.insertquestionoption(qo291);
    QuestionOption qo292 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,optionCd:'c'
        ,optionText:'放射線照射'
        ,correctType:0);
    db.insertquestionoption(qo292);
    QuestionOption qo293 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,optionCd:'d'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo293);
    QuestionOption qo294 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,optionCd:'e'
        ,optionText:'開腹術'
        ,correctType:1);
    db.insertquestionoption(qo294);
    QuestionOption qo295 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,optionCd:'a'
        ,optionText:'IgA腎症'
        ,correctType:1);
    db.insertquestionoption(qo295);
    QuestionOption qo296 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,optionCd:'b'
        ,optionText:'急性糸球体腎炎'
        ,correctType:0);
    db.insertquestionoption(qo296);
    QuestionOption qo297 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,optionCd:'c'
        ,optionText:'膜性増殖性糸球体腎炎'
        ,correctType:0);
    db.insertquestionoption(qo297);
    QuestionOption qo298 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,optionCd:'d'
        ,optionText:'急速進行性糸球体腎炎'
        ,correctType:0);
    db.insertquestionoption(qo298);
    QuestionOption qo299 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,optionCd:'e'
        ,optionText:'巣状分節性糸球体硬化症'
        ,correctType:0);
    db.insertquestionoption(qo299);
    QuestionOption qo300 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,optionCd:'a'
        ,optionText:'脳外科への診療情報提供書の作成'
        ,correctType:1);
    db.insertquestionoption(qo300);
    QuestionOption qo301 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,optionCd:'b'
        ,optionText:'セルトラリンによる薬物療法'
        ,correctType:0);
    db.insertquestionoption(qo301);
    QuestionOption qo302 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,optionCd:'c'
        ,optionText:'ドネペジルによる薬物療法'
        ,correctType:0);
    db.insertquestionoption(qo302);
    QuestionOption qo303 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,optionCd:'d'
        ,optionText:'前頭葉機能検査の施行'
        ,correctType:1);
    db.insertquestionoption(qo303);
    QuestionOption qo304 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,optionCd:'e'
        ,optionText:'言語療法の開始'
        ,correctType:0);
    db.insertquestionoption(qo304);
    QuestionOption qo305 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,optionCd:'a'
        ,optionText:'炭酸リチウム'
        ,correctType:0);
    db.insertquestionoption(qo305);
    QuestionOption qo306 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,optionCd:'b'
        ,optionText:'パロキセチン'
        ,correctType:1);
    db.insertquestionoption(qo306);
    QuestionOption qo307 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,optionCd:'c'
        ,optionText:'カルバマゼピン'
        ,correctType:0);
    db.insertquestionoption(qo307);
    QuestionOption qo308 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,optionCd:'d'
        ,optionText:'ドネペジル塩酸塩'
        ,correctType:0);
    db.insertquestionoption(qo308);
    QuestionOption qo309 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,optionCd:'e'
        ,optionText:'アルプラゾラム'
        ,correctType:1);
    db.insertquestionoption(qo309);
    QuestionOption qo310 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,optionCd:'a'
        ,optionText:'放射線療法'
        ,correctType:0);
    db.insertquestionoption(qo310);
    QuestionOption qo311 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,optionCd:'b'
        ,optionText:'抗癌化学療法'
        ,correctType:1);
    db.insertquestionoption(qo311);
    QuestionOption qo312 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,optionCd:'c'
        ,optionText:'ホルモン療法'
        ,correctType:0);
    db.insertquestionoption(qo312);
    QuestionOption qo313 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,optionCd:'d'
        ,optionText:'標準的根治手術'
        ,correctType:1);
    db.insertquestionoption(qo313);
    QuestionOption qo314 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,optionCd:'e'
        ,optionText:'サイトカイン療法'
        ,correctType:0);
    db.insertquestionoption(qo314);
    QuestionOption qo315 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,optionCd:'a'
        ,optionText:'気管支拡張症'
        ,correctType:1);
    db.insertquestionoption(qo315);
    QuestionOption qo316 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,optionCd:'b'
        ,optionText:'ぶどう膜炎'
        ,correctType:0);
    db.insertquestionoption(qo316);
    QuestionOption qo317 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,optionCd:'c'
        ,optionText:'男性不妊'
        ,correctType:1);
    db.insertquestionoption(qo317);
    QuestionOption qo318 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,optionCd:'d'
        ,optionText:'水様下痢'
        ,correctType:0);
    db.insertquestionoption(qo318);
    QuestionOption qo319 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,optionCd:'e'
        ,optionText:'抗核抗体'
        ,correctType:0);
    db.insertquestionoption(qo319);
    QuestionOption qo320 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,optionCd:'a'
        ,optionText:'蛋白漏出性胃腸症'
        ,correctType:0);
    db.insertquestionoption(qo320);
    QuestionOption qo321 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,optionCd:'b'
        ,optionText:'出　血'
        ,correctType:1);
    db.insertquestionoption(qo321);
    QuestionOption qo322 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,optionCd:'c'
        ,optionText:'癌　化'
        ,correctType:0);
    db.insertquestionoption(qo322);
    QuestionOption qo323 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,optionCd:'d'
        ,optionText:'炎　症'
        ,correctType:1);
    db.insertquestionoption(qo323);
    QuestionOption qo324 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,optionCd:'e'
        ,optionText:'痔　核'
        ,correctType:0);
    db.insertquestionoption(qo324);
    QuestionOption qo325 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,optionCd:'a'
        ,optionText:'左肩外傷歴の既往'
        ,correctType:1);
    db.insertquestionoption(qo325);
    QuestionOption qo326 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,optionCd:'b'
        ,optionText:'血液・生化学検査'
        ,correctType:0);
    db.insertquestionoption(qo326);
    QuestionOption qo327 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,optionCd:'c'
        ,optionText:'頸椎MRI'
        ,correctType:0);
    db.insertquestionoption(qo327);
    QuestionOption qo328 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,optionCd:'d'
        ,optionText:'左肩CT'
        ,correctType:1);
    db.insertquestionoption(qo328);
    QuestionOption qo329 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,optionCd:'e'
        ,optionText:'筋生検'
        ,correctType:0);
    db.insertquestionoption(qo329);
    QuestionOption qo330 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,optionCd:'a'
        ,optionText:'感染コントロール'
        ,correctType:1);
    db.insertquestionoption(qo330);
    QuestionOption qo331 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,optionCd:'b'
        ,optionText:'外耳道形成'
        ,correctType:0);
    db.insertquestionoption(qo331);
    QuestionOption qo332 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,optionCd:'c'
        ,optionText:'人工内耳'
        ,correctType:0);
    db.insertquestionoption(qo332);
    QuestionOption qo333 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,optionCd:'d'
        ,optionText:'耳管通気'
        ,correctType:0);
    db.insertquestionoption(qo333);
    QuestionOption qo334 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,optionCd:'e'
        ,optionText:'鼓室形成'
        ,correctType:1);
    db.insertquestionoption(qo334);
    QuestionOption qo335 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,optionCd:'a'
        ,optionText:'厳格な塩分制限'
        ,correctType:0);
    db.insertquestionoption(qo335);
    QuestionOption qo336 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,optionCd:'b'
        ,optionText:'腹部血管造影検査'
        ,correctType:0);
    db.insertquestionoption(qo336);
    QuestionOption qo337 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,optionCd:'c'
        ,optionText:'α遮断薬の持続投与'
        ,correctType:1);
    db.insertquestionoption(qo337);
    QuestionOption qo338 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,optionCd:'d'
        ,optionText:'ヒスタミン負荷試験'
        ,correctType:0);
    db.insertquestionoption(qo338);
    QuestionOption qo339 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,optionCd:'e'
        ,optionText:'有効循環血漿量の補正'
        ,correctType:1);
    db.insertquestionoption(qo339);
    QuestionOption qo340 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,optionCd:'a'
        ,optionText:'クレアチニン'
        ,correctType:0);
    db.insertquestionoption(qo340);
    QuestionOption qo341 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,optionCd:'b'
        ,optionText:'HCO3－'
        ,correctType:1);
    db.insertquestionoption(qo341);
    QuestionOption qo342 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,optionCd:'c'
        ,optionText:'血小板'
        ,correctType:1);
    db.insertquestionoption(qo342);
    QuestionOption qo343 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,optionCd:'d'
        ,optionText:'乳　酸'
        ,correctType:0);
    db.insertquestionoption(qo343);
    QuestionOption qo344 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,optionCd:'e'
        ,optionText:'LD'
        ,correctType:0);
    db.insertquestionoption(qo344);
    QuestionOption qo345 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,optionCd:'a'
        ,optionText:'左顔面の発汗増加'
        ,correctType:0);
    db.insertquestionoption(qo345);
    QuestionOption qo346 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,optionCd:'b'
        ,optionText:'左鼻唇溝の消失'
        ,correctType:0);
    db.insertquestionoption(qo346);
    QuestionOption qo347 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,optionCd:'c'
        ,optionText:'左眼瞼下垂'
        ,correctType:1);
    db.insertquestionoption(qo347);
    QuestionOption qo348 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,optionCd:'d'
        ,optionText:'左縮瞳'
        ,correctType:1);
    db.insertquestionoption(qo348);
    QuestionOption qo349 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,optionCd:'e'
        ,optionText:'左散瞳'
        ,correctType:0);
    db.insertquestionoption(qo349);
    QuestionOption qo350 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,optionCd:'a'
        ,optionText:'降圧薬を利尿薬内服に変更する。'
        ,correctType:0);
    db.insertquestionoption(qo350);
    QuestionOption qo351 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,optionCd:'b'
        ,optionText:'食後の体位を再検討する。'
        ,correctType:1);
    db.insertquestionoption(qo351);
    QuestionOption qo352 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,optionCd:'c'
        ,optionText:'口腔ケアを徹底する。'
        ,correctType:1);
    db.insertquestionoption(qo352);
    QuestionOption qo353 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,optionCd:'d'
        ,optionText:'抗菌薬を継続する。'
        ,correctType:0);
    db.insertquestionoption(qo353);
    QuestionOption qo354 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,optionCd:'e'
        ,optionText:'胃瘻造設を勧める。'
        ,correctType:0);
    db.insertquestionoption(qo354);
    QuestionOption qo355 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,optionCd:'a'
        ,optionText:'抗好中球細胞質抗体〈ANCA〉陽性'
        ,correctType:0);
    db.insertquestionoption(qo355);
    QuestionOption qo356 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,optionCd:'b'
        ,optionText:'腎尿細管性アシドーシス'
        ,correctType:0);
    db.insertquestionoption(qo356);
    QuestionOption qo357 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,optionCd:'c'
        ,optionText:'HLA-B51陽性'
        ,correctType:1);
    db.insertquestionoption(qo357);
    QuestionOption qo358 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,optionCd:'d'
        ,optionText:'針反応陽性'
        ,correctType:1);
    db.insertquestionoption(qo358);
    QuestionOption qo359 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,optionCd:'e'
        ,optionText:'肺高血圧症'
        ,correctType:0);
    db.insertquestionoption(qo359);
    QuestionOption qo360 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,optionCd:'a'
        ,optionText:'プロトンポンプ阻害薬投与'
        ,correctType:1);
    db.insertquestionoption(qo360);
    QuestionOption qo361 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,optionCd:'b'
        ,optionText:'Entamoeba histolytica検索'
        ,correctType:0);
    db.insertquestionoption(qo361);
    QuestionOption qo362 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,optionCd:'c'
        ,optionText:'上部消化管造影'
        ,correctType:0);
    db.insertquestionoption(qo362);
    QuestionOption qo363 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,optionCd:'d'
        ,optionText:'腹部造影CT'
        ,correctType:0);
    db.insertquestionoption(qo363);
    QuestionOption qo364 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,optionCd:'e'
        ,optionText:'鉄剤投与'
        ,correctType:1);
    db.insertquestionoption(qo364);
    QuestionOption qo365 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,optionCd:'a'
        ,optionText:'甲状腺機能低下症'
        ,correctType:1);
    db.insertquestionoption(qo365);
    QuestionOption qo366 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,optionCd:'b'
        ,optionText:'環軸関節亜脱臼'
        ,correctType:1);
    db.insertquestionoption(qo366);
    QuestionOption qo367 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,optionCd:'c'
        ,optionText:'網膜芽腫'
        ,correctType:0);
    db.insertquestionoption(qo367);
    QuestionOption qo368 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,optionCd:'d'
        ,optionText:'自傷行為'
        ,correctType:0);
    db.insertquestionoption(qo368);
    QuestionOption qo369 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,optionCd:'e'
        ,optionText:'白血病'
        ,correctType:1);
    db.insertquestionoption(qo369);
    QuestionOption qo370 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,optionCd:'a'
        ,optionText:'抗GAD抗体測定'
        ,correctType:1);
    db.insertquestionoption(qo370);
    QuestionOption qo371 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,optionCd:'b'
        ,optionText:'ブドウ糖負荷試験'
        ,correctType:0);
    db.insertquestionoption(qo371);
    QuestionOption qo372 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,optionCd:'c'
        ,optionText:'インスリン負荷試験'
        ,correctType:0);
    db.insertquestionoption(qo372);
    QuestionOption qo373 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,optionCd:'d'
        ,optionText:'血清Cペプチド測定'
        ,correctType:1);
    db.insertquestionoption(qo373);
    QuestionOption qo374 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,optionCd:'e'
        ,optionText:'抗インスリン抗体測定'
        ,correctType:1);
    db.insertquestionoption(qo374);
    QuestionOption qo375 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,optionCd:'a'
        ,optionText:'耳漏を認めない。'
        ,correctType:0);
    db.insertquestionoption(qo375);
    QuestionOption qo376 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,optionCd:'b'
        ,optionText:'鼓室内に滲出液を認める。'
        ,correctType:1);
    db.insertquestionoption(qo376);
    QuestionOption qo377 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,optionCd:'c'
        ,optionText:'光錐が認められる。'
        ,correctType:0);
    db.insertquestionoption(qo377);
    QuestionOption qo378 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,optionCd:'d'
        ,optionText:'鼓膜輪が認められる。'
        ,correctType:0);
    db.insertquestionoption(qo378);
    QuestionOption qo379 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,optionCd:'e'
        ,optionText:'ツチ骨が透見されている。'
        ,correctType:0);
    db.insertquestionoption(qo379);
    QuestionOption qo380 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,optionCd:'a'
        ,optionText:'妄想がみられる。'
        ,correctType:0);
    db.insertquestionoption(qo380);
    QuestionOption qo381 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,optionCd:'b'
        ,optionText:'身体疾患の検査を拒否する。'
        ,correctType:0);
    db.insertquestionoption(qo381);
    QuestionOption qo382 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,optionCd:'c'
        ,optionText:'繰り返し身体症状を訴える。'
        ,correctType:1);
    db.insertquestionoption(qo382);
    QuestionOption qo383 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,optionCd:'d'
        ,optionText:'予期しない状況で発作が起こる。'
        ,correctType:0);
    db.insertquestionoption(qo383);
    QuestionOption qo384 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,optionCd:'e'
        ,optionText:'他の人から注視されることを恐れる。'
        ,correctType:0);
    db.insertquestionoption(qo384);
    QuestionOption qo385 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,optionCd:'a'
        ,optionText:'主治医に対する信頼度を表す指標である。'
        ,correctType:0);
    db.insertquestionoption(qo385);
    QuestionOption qo386 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,optionCd:'b'
        ,optionText:'閉鎖型質問〈closed question〉で確認する。'
        ,correctType:0);
    db.insertquestionoption(qo386);
    QuestionOption qo387 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,optionCd:'c'
        ,optionText:'診療内容に影響を及ぼさない。'
        ,correctType:0);
    db.insertquestionoption(qo387);
    QuestionOption qo388 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,optionCd:'d'
        ,optionText:'主治医以外の医師が確認する。'
        ,correctType:0);
    db.insertquestionoption(qo388);
    QuestionOption qo389 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,optionCd:'e'
        ,optionText:'患者の希望が反映される。'
        ,correctType:1);
    db.insertquestionoption(qo389);
    QuestionOption qo390 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,optionCd:'a'
        ,optionText:'白色，ヨーグルト状の腟分泌物'
        ,correctType:0);
    db.insertquestionoption(qo390);
    QuestionOption qo391 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,optionCd:'b'
        ,optionText:'子宮腟部における上皮の欠損'
        ,correctType:0);
    db.insertquestionoption(qo391);
    QuestionOption qo392 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,optionCd:'c'
        ,optionText:'鵞卵大に触れる子宮体部'
        ,correctType:0);
    db.insertquestionoption(qo392);
    QuestionOption qo393 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,optionCd:'d'
        ,optionText:'逆三角形に生える陰毛'
        ,correctType:1);
    db.insertquestionoption(qo393);
    QuestionOption qo394 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,optionCd:'e'
        ,optionText:'囊胞性に触れる卵巣'
        ,correctType:0);
    db.insertquestionoption(qo394);
    QuestionOption qo395 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,optionCd:'a'
        ,optionText:'肺残気量'
        ,correctType:0);
    db.insertquestionoption(qo395);
    QuestionOption qo396 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,optionCd:'b'
        ,optionText:'左室後負荷'
        ,correctType:0);
    db.insertquestionoption(qo396);
    QuestionOption qo397 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,optionCd:'c'
        ,optionText:'消化液分泌能'
        ,correctType:1);
    db.insertquestionoption(qo397);
    QuestionOption qo398 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,optionCd:'d'
        ,optionText:'血中ゴナドトロピン値'
        ,correctType:0);
    db.insertquestionoption(qo398);
    QuestionOption qo399 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,optionCd:'e'
        ,optionText:'血中カリウム値'
        ,correctType:0);
    db.insertquestionoption(qo399);
    QuestionOption qo400 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,optionCd:'a'
        ,optionText:'頸部に小豆大のリンパ節3個触知'
        ,correctType:0);
    db.insertquestionoption(qo400);
    QuestionOption qo401 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,optionCd:'b'
        ,optionText:'口腔粘膜の広範な鵞口瘡'
        ,correctType:1);
    db.insertquestionoption(qo401);
    QuestionOption qo402 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,optionCd:'c'
        ,optionText:'扁桃腺Ⅱ度の腫大'
        ,correctType:0);
    db.insertquestionoption(qo402);
    QuestionOption qo403 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,optionCd:'d'
        ,optionText:'歯肉に上皮真珠腫'
        ,correctType:0);
    db.insertquestionoption(qo403);
    QuestionOption qo404 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,optionCd:'e'
        ,optionText:'後頭部の母斑'
        ,correctType:0);
    db.insertquestionoption(qo404);
    QuestionOption qo405 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,optionCd:'a'
        ,optionText:'地域包括支援センター'
        ,correctType:0);
    db.insertquestionoption(qo405);
    QuestionOption qo406 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,optionCd:'b'
        ,optionText:'地域医療支援病院'
        ,correctType:0);
    db.insertquestionoption(qo406);
    QuestionOption qo407 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,optionCd:'c'
        ,optionText:'市町村'
        ,correctType:1);
    db.insertquestionoption(qo407);
    QuestionOption qo408 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,optionCd:'d'
        ,optionText:'個　人'
        ,correctType:0);
    db.insertquestionoption(qo408);
    QuestionOption qo409 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,optionCd:'e'
        ,optionText:'国'
        ,correctType:0);
    db.insertquestionoption(qo409);
    QuestionOption qo410 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,optionCd:'a'
        ,optionText:'再検する。'
        ,correctType:0);
    db.insertquestionoption(qo410);
    QuestionOption qo411 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,optionCd:'b'
        ,optionText:'経過を観察する。'
        ,correctType:0);
    db.insertquestionoption(qo411);
    QuestionOption qo412 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,optionCd:'c'
        ,optionText:'腫瘍マーカーを測定する。'
        ,correctType:0);
    db.insertquestionoption(qo412);
    QuestionOption qo413 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,optionCd:'d'
        ,optionText:'下部消化管内視鏡検査を予定する。'
        ,correctType:1);
    db.insertquestionoption(qo413);
    QuestionOption qo414 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,optionCd:'e'
        ,optionText:'陽性であった日の前日の食事内容を確認する。'
        ,correctType:0);
    db.insertquestionoption(qo414);
    QuestionOption qo415 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,optionCd:'a'
        ,optionText:'用　法'
        ,correctType:0);
    db.insertquestionoption(qo415);
    QuestionOption qo416 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,optionCd:'b'
        ,optionText:'薬剤名'
        ,correctType:0);
    db.insertquestionoption(qo416);
    QuestionOption qo417 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,optionCd:'c'
        ,optionText:'投与日数'
        ,correctType:0);
    db.insertquestionoption(qo417);
    QuestionOption qo418 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,optionCd:'d'
        ,optionText:'調剤薬局名'
        ,correctType:1);
    db.insertquestionoption(qo418);
    QuestionOption qo419 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,optionCd:'e'
        ,optionText:'1日投与量'
        ,correctType:0);
    db.insertquestionoption(qo419);
    QuestionOption qo420 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,optionCd:'a'
        ,optionText:'下行大動脈の血液酸素飽和度は下大静脈のそれよりも高い。'
        ,correctType:0);
    db.insertquestionoption(qo420);
    QuestionOption qo421 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,optionCd:'b'
        ,optionText:'上大静脈の血液は卵円孔を通過する。'
        ,correctType:0);
    db.insertquestionoption(qo421);
    QuestionOption qo422 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,optionCd:'c'
        ,optionText:'静脈管の血液は上大静脈に注ぐ。'
        ,correctType:0);
    db.insertquestionoption(qo422);
    QuestionOption qo423 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,optionCd:'d'
        ,optionText:'動脈管の血液は大動脈弓に注ぐ。'
        ,correctType:1);
    db.insertquestionoption(qo423);
    QuestionOption qo424 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,optionCd:'e'
        ,optionText:'左房内圧は右房内圧より高い。'
        ,correctType:0);
    db.insertquestionoption(qo424);
    QuestionOption qo425 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,optionCd:'a'
        ,optionText:'正常な筋力である。'
        ,correctType:0);
    db.insertquestionoption(qo425);
    QuestionOption qo426 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,optionCd:'b'
        ,optionText:'筋収縮を認めない。'
        ,correctType:0);
    db.insertquestionoption(qo426);
    QuestionOption qo427 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,optionCd:'c'
        ,optionText:'徒手抵抗に抗することができない。'
        ,correctType:0);
    db.insertquestionoption(qo427);
    QuestionOption qo428 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,optionCd:'d'
        ,optionText:'重力の影響下での運動が困難である。'
        ,correctType:1);
    db.insertquestionoption(qo428);
    QuestionOption qo429 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,optionCd:'e'
        ,optionText:'重力に抗しての関節の上下運動が可能である。'
        ,correctType:0);
    db.insertquestionoption(qo429);
    QuestionOption qo430 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,optionCd:'a'
        ,optionText:'縦隔神経原性腫瘍'
        ,correctType:0);
    db.insertquestionoption(qo430);
    QuestionOption qo431 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,optionCd:'b'
        ,optionText:'甲状腺癌'
        ,correctType:0);
    db.insertquestionoption(qo431);
    QuestionOption qo432 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,optionCd:'c'
        ,optionText:'喉頭癌'
        ,correctType:1);
    db.insertquestionoption(qo432);
    QuestionOption qo433 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,optionCd:'d'
        ,optionText:'食道癌'
        ,correctType:0);
    db.insertquestionoption(qo433);
    QuestionOption qo434 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,optionCd:'e'
        ,optionText:'肺　癌'
        ,correctType:0);
    db.insertquestionoption(qo434);
    QuestionOption qo435 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,optionCd:'a'
        ,optionText:'平均在院日数'
        ,correctType:0);
    db.insertquestionoption(qo435);
    QuestionOption qo436 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,optionCd:'b'
        ,optionText:'職員満足度'
        ,correctType:1);
    db.insertquestionoption(qo436);
    QuestionOption qo437 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,optionCd:'c'
        ,optionText:'患者満足度'
        ,correctType:0);
    db.insertquestionoption(qo437);
    QuestionOption qo438 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,optionCd:'d'
        ,optionText:'院内死亡率'
        ,correctType:0);
    db.insertquestionoption(qo438);
    QuestionOption qo439 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,optionCd:'e'
        ,optionText:'院内感染率'
        ,correctType:0);
    db.insertquestionoption(qo439);
    QuestionOption qo440 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,optionCd:'a'
        ,optionText:'慢性気管支炎'
        ,correctType:1);
    db.insertquestionoption(qo440);
    QuestionOption qo441 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,optionCd:'b'
        ,optionText:'間質性肺炎'
        ,correctType:0);
    db.insertquestionoption(qo441);
    QuestionOption qo442 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,optionCd:'c'
        ,optionText:'じん肺症'
        ,correctType:0);
    db.insertquestionoption(qo442);
    QuestionOption qo443 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,optionCd:'d'
        ,optionText:'胸膜炎'
        ,correctType:0);
    db.insertquestionoption(qo443);
    QuestionOption qo444 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,optionCd:'e'
        ,optionText:'肺　炎'
        ,correctType:0);
    db.insertquestionoption(qo444);
    QuestionOption qo445 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,optionCd:'a'
        ,optionText:'無関心期→関心期→準備期→実行期→維持期'
        ,correctType:1);
    db.insertquestionoption(qo445);
    QuestionOption qo446 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,optionCd:'b'
        ,optionText:'無関心期→関心期→維持期→準備期→実行期'
        ,correctType:0);
    db.insertquestionoption(qo446);
    QuestionOption qo447 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,optionCd:'c'
        ,optionText:'無関心期→準備期→関心期→実行期→維持期'
        ,correctType:0);
    db.insertquestionoption(qo447);
    QuestionOption qo448 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,optionCd:'d'
        ,optionText:'準備期→無関心期→関心期→実行期→維持期'
        ,correctType:0);
    db.insertquestionoption(qo448);
    QuestionOption qo449 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,optionCd:'e'
        ,optionText:'準備期→維持期→無関心期→関心期→実行期'
        ,correctType:0);
    db.insertquestionoption(qo449);
    QuestionOption qo450 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,optionCd:'a'
        ,optionText:'触診で反跳痛がなければ腹膜刺激症状はないといえる。'
        ,correctType:0);
    db.insertquestionoption(qo450);
    QuestionOption qo451 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,optionCd:'b'
        ,optionText:'聴診は打診や触診の後に行う。'
        ,correctType:0);
    db.insertquestionoption(qo451);
    QuestionOption qo452 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,optionCd:'c'
        ,optionText:'下肢は伸展させたままで行う。'
        ,correctType:0);
    db.insertquestionoption(qo452);
    QuestionOption qo453 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,optionCd:'d'
        ,optionText:'肝臓の打診音は濁音である。'
        ,correctType:1);
    db.insertquestionoption(qo453);
    QuestionOption qo454 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,optionCd:'e'
        ,optionText:'触診は疼痛部から始める。'
        ,correctType:0);
    db.insertquestionoption(qo454);
    QuestionOption qo455 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,optionCd:'a'
        ,optionText:'無資格医師による堕胎の禁止'
        ,correctType:0);
    db.insertquestionoption(qo455);
    QuestionOption qo456 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,optionCd:'b'
        ,optionText:'医療事故の調査・届出'
        ,correctType:1);
    db.insertquestionoption(qo456);
    QuestionOption qo457 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,optionCd:'c'
        ,optionText:'医薬品副作用報告'
        ,correctType:0);
    db.insertquestionoption(qo457);
    QuestionOption qo458 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,optionCd:'d'
        ,optionText:'臨床研修義務'
        ,correctType:0);
    db.insertquestionoption(qo458);
    QuestionOption qo459 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,optionCd:'e'
        ,optionText:'診療録記載'
        ,correctType:0);
    db.insertquestionoption(qo459);
    QuestionOption qo460 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,optionCd:'a'
        ,optionText:'Babinski徴候が出現する。'
        ,correctType:1);
    db.insertquestionoption(qo460);
    QuestionOption qo461 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,optionCd:'b'
        ,optionText:'線維束性攣縮を認める。'
        ,correctType:0);
    db.insertquestionoption(qo461);
    QuestionOption qo462 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,optionCd:'c'
        ,optionText:'筋萎縮が高度である。'
        ,correctType:0);
    db.insertquestionoption(qo462);
    QuestionOption qo463 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,optionCd:'d'
        ,optionText:'筋緊張は低下する。'
        ,correctType:0);
    db.insertquestionoption(qo463);
    QuestionOption qo464 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,optionCd:'e'
        ,optionText:'腱反射は低下する。'
        ,correctType:0);
    db.insertquestionoption(qo464);
    QuestionOption qo465 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo465);
    QuestionOption qo466 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:1);
    db.insertquestionoption(qo466);
    QuestionOption qo467 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:0);
    db.insertquestionoption(qo467);
    QuestionOption qo468 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:0);
    db.insertquestionoption(qo468);
    QuestionOption qo469 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo469);
    QuestionOption qo470 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,optionCd:'a'
        ,optionText:'硬性白斑'
        ,correctType:0);
    db.insertquestionoption(qo470);
    QuestionOption qo471 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,optionCd:'b'
        ,optionText:'点状出血'
        ,correctType:0);
    db.insertquestionoption(qo471);
    QuestionOption qo472 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,optionCd:'c'
        ,optionText:'軟性白斑'
        ,correctType:0);
    db.insertquestionoption(qo472);
    QuestionOption qo473 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,optionCd:'d'
        ,optionText:'うっ血乳頭'
        ,correctType:1);
    db.insertquestionoption(qo473);
    QuestionOption qo474 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,optionCd:'e'
        ,optionText:'硝子体出血'
        ,correctType:0);
    db.insertquestionoption(qo474);
    QuestionOption qo475 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,optionCd:'a'
        ,optionText:'トA　感度99％　特異度99％	　検体：腎組織'
        ,correctType:0);
    db.insertquestionoption(qo475);
    QuestionOption qo476 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,optionCd:'b'
        ,optionText:'トB　感度95％　特異度85％	　検体：尿'
        ,correctType:1);
    db.insertquestionoption(qo476);
    QuestionOption qo477 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,optionCd:'c'
        ,optionText:'トC　感度86％　特異度92％	　検体：尿'
        ,correctType:0);
    db.insertquestionoption(qo477);
    QuestionOption qo478 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,optionCd:'d'
        ,optionText:'トD　感度85％　特異度90％	　検体：血液'
        ,correctType:0);
    db.insertquestionoption(qo478);
    QuestionOption qo479 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,optionCd:'e'
        ,optionText:'トE　感度80％　特異度98％	　検体：血液'
        ,correctType:0);
    db.insertquestionoption(qo479);
    QuestionOption qo480 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,optionCd:'a'
        ,optionText:'樹状細胞'
        ,correctType:0);
    db.insertquestionoption(qo480);
    QuestionOption qo481 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,optionCd:'b'
        ,optionText:'好塩基球'
        ,correctType:0);
    db.insertquestionoption(qo481);
    QuestionOption qo482 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,optionCd:'c'
        ,optionText:'肥満細胞'
        ,correctType:0);
    db.insertquestionoption(qo482);
    QuestionOption qo483 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,optionCd:'d'
        ,optionText:'リンパ球'
        ,correctType:0);
    db.insertquestionoption(qo483);
    QuestionOption qo484 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,optionCd:'e'
        ,optionText:'好酸球'
        ,correctType:1);
    db.insertquestionoption(qo484);
    QuestionOption qo485 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,optionCd:'a'
        ,optionText:'男性患者では前立腺の状態を確認する。'
        ,correctType:1);
    db.insertquestionoption(qo485);
    QuestionOption qo486 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,optionCd:'b'
        ,optionText:'女性患者では腟の状態を確認する。'
        ,correctType:0);
    db.insertquestionoption(qo486);
    QuestionOption qo487 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,optionCd:'c'
        ,optionText:'滅菌手袋を着用して行う。'
        ,correctType:0);
    db.insertquestionoption(qo487);
    QuestionOption qo488 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,optionCd:'d'
        ,optionText:'肛門を消毒してから行う。'
        ,correctType:0);
    db.insertquestionoption(qo488);
    QuestionOption qo489 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,optionCd:'e'
        ,optionText:'腹臥位で行う。'
        ,correctType:0);
    db.insertquestionoption(qo489);
    QuestionOption qo490 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,optionCd:'a'
        ,optionText:'「タバコを吸えない場所には行きたくないですか」'
        ,correctType:0);
    db.insertquestionoption(qo490);
    QuestionOption qo491 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,optionCd:'b'
        ,optionText:'「今までに禁煙に失敗したことがありますか」'
        ,correctType:0);
    db.insertquestionoption(qo491);
    QuestionOption qo492 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,optionCd:'c'
        ,optionText:'「病気でほとんど寝ているときも吸いますか」'
        ,correctType:0);
    db.insertquestionoption(qo492);
    QuestionOption qo493 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,optionCd:'d'
        ,optionText:'「タバコを吸わないといらいらしますか」'
        ,correctType:0);
    db.insertquestionoption(qo493);
    QuestionOption qo494 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,optionCd:'e'
        ,optionText:'「お酒を飲むと吸いたくなりますか」'
        ,correctType:1);
    db.insertquestionoption(qo494);
    QuestionOption qo495 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,optionCd:'a'
        ,optionText:'左季肋部の圧痛'
        ,correctType:0);
    db.insertquestionoption(qo495);
    QuestionOption qo496 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,optionCd:'b'
        ,optionText:'頸静脈の怒張'
        ,correctType:1);
    db.insertquestionoption(qo496);
    QuestionOption qo497 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,optionCd:'c'
        ,optionText:'骨盤の動揺性'
        ,correctType:0);
    db.insertquestionoption(qo497);
    QuestionOption qo498 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,optionCd:'d'
        ,optionText:'冷　汗'
        ,correctType:0);
    db.insertquestionoption(qo498);
    QuestionOption qo499 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,optionCd:'e'
        ,optionText:'頻　脈'
        ,correctType:0);
    db.insertquestionoption(qo499);
    QuestionOption qo500 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,optionCd:'a'
        ,optionText:'詐　欺'
        ,correctType:0);
    db.insertquestionoption(qo500);
    QuestionOption qo501 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,optionCd:'b'
        ,optionText:'殺　人'
        ,correctType:0);
    db.insertquestionoption(qo501);
    QuestionOption qo502 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,optionCd:'c'
        ,optionText:'暴　行'
        ,correctType:0);
    db.insertquestionoption(qo502);
    QuestionOption qo503 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,optionCd:'d'
        ,optionText:'傷　害'
        ,correctType:0);
    db.insertquestionoption(qo503);
    QuestionOption qo504 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,optionCd:'e'
        ,optionText:'業務上過失致死'
        ,correctType:1);
    db.insertquestionoption(qo504);
    QuestionOption qo505 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,optionCd:'a'
        ,optionText:'事務職への配置換えが望ましい。'
        ,correctType:0);
    db.insertquestionoption(qo505);
    QuestionOption qo506 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,optionCd:'b'
        ,optionText:'定期的な肝機能検査が望ましい。'
        ,correctType:1);
    db.insertquestionoption(qo506);
    QuestionOption qo507 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,optionCd:'c'
        ,optionText:'看護師を辞職するのが望ましい。'
        ,correctType:0);
    db.insertquestionoption(qo507);
    QuestionOption qo508 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,optionCd:'d'
        ,optionText:'一般病棟への配置換えが望ましい。'
        ,correctType:0);
    db.insertquestionoption(qo508);
    QuestionOption qo509 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,optionCd:'e'
        ,optionText:'インターフェロン投与が望ましい。'
        ,correctType:0);
    db.insertquestionoption(qo509);
    QuestionOption qo510 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,optionCd:'a'
        ,optionText:'JCS　Ⅱ-30 ―――― GCS　E1V2M4'
        ,correctType:0);
    db.insertquestionoption(qo510);
    QuestionOption qo511 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,optionCd:'b'
        ,optionText:'JCS　Ⅱ-30 ―――― GCS　E2V2M5'
        ,correctType:0);
    db.insertquestionoption(qo511);
    QuestionOption qo512 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,optionCd:'c'
        ,optionText:'JCS　Ⅲ-100 ―――― GCS　E1V2M5'
        ,correctType:1);
    db.insertquestionoption(qo512);
    QuestionOption qo513 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,optionCd:'d'
        ,optionText:'JCS　Ⅲ-100 ―――― GCS　E1V1M4'
        ,correctType:0);
    db.insertquestionoption(qo513);
    QuestionOption qo514 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,optionCd:'e'
        ,optionText:'JCS　Ⅲ-100 ―――― GCS　E2V3M5'
        ,correctType:0);
    db.insertquestionoption(qo514);
    QuestionOption qo515 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,optionCd:'a'
        ,optionText:'「今後はご主人に迷惑をかけないようにしてください」'
        ,correctType:0);
    db.insertquestionoption(qo515);
    QuestionOption qo516 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,optionCd:'b'
        ,optionText:'「今後自殺をしないと約束できますか」'
        ,correctType:1);
    db.insertquestionoption(qo516);
    QuestionOption qo517 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,optionCd:'c'
        ,optionText:'「このまま様子をみましょう」'
        ,correctType:0);
    db.insertquestionoption(qo517);
    QuestionOption qo518 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,optionCd:'d'
        ,optionText:'「抗うつ薬の点滴を行います」'
        ,correctType:0);
    db.insertquestionoption(qo518);
    QuestionOption qo519 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,optionCd:'e'
        ,optionText:'「警察に通報します」'
        ,correctType:0);
    db.insertquestionoption(qo519);
    QuestionOption qo520 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,optionCd:'a'
        ,optionText:'N95マスクを装着して処置を行う。'
        ,correctType:1);
    db.insertquestionoption(qo520);
    QuestionOption qo521 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,optionCd:'b'
        ,optionText:'ガウンを装着して処置を行う。'
        ,correctType:0);
    db.insertquestionoption(qo521);
    QuestionOption qo522 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,optionCd:'c'
        ,optionText:'手袋を装着して処置を行う。'
        ,correctType:0);
    db.insertquestionoption(qo522);
    QuestionOption qo523 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,optionCd:'d'
        ,optionText:'処置後に手指衛生を行う。'
        ,correctType:0);
    db.insertquestionoption(qo523);
    QuestionOption qo524 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,optionCd:'e'
        ,optionText:'処置前に手指衛生を行う。'
        ,correctType:0);
    db.insertquestionoption(qo524);
    QuestionOption qo525 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,optionCd:'a'
        ,optionText:'中心静脈路確保'
        ,correctType:0);
    db.insertquestionoption(qo525);
    QuestionOption qo526 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,optionCd:'b'
        ,optionText:'200 Jで除細動'
        ,correctType:0);
    db.insertquestionoption(qo526);
    QuestionOption qo527 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,optionCd:'c'
        ,optionText:'血液検体採取'
        ,correctType:0);
    db.insertquestionoption(qo527);
    QuestionOption qo528 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,optionCd:'d'
        ,optionText:'胸骨圧迫再開'
        ,correctType:1);
    db.insertquestionoption(qo528);
    QuestionOption qo529 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,optionCd:'e'
        ,optionText:'気管挿管'
        ,correctType:0);
    db.insertquestionoption(qo529);
    QuestionOption qo530 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,optionCd:'a'
        ,optionText:'しわになったシーツ'
        ,correctType:1);
    db.insertquestionoption(qo530);
    QuestionOption qo531 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,optionCd:'b'
        ,optionText:'体圧分散寝具の使用'
        ,correctType:0);
    db.insertquestionoption(qo531);
    QuestionOption qo532 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,optionCd:'c'
        ,optionText:'長い手術時間'
        ,correctType:0);
    db.insertquestionoption(qo532);
    QuestionOption qo533 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,optionCd:'d'
        ,optionText:'るいそう'
        ,correctType:0);
    db.insertquestionoption(qo533);
    QuestionOption qo534 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,optionCd:'e'
        ,optionText:'低体温'
        ,correctType:0);
    db.insertquestionoption(qo534);
    QuestionOption qo535 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,optionCd:'a'
        ,optionText:'「むしろ高血圧が問題です」'
        ,correctType:0);
    db.insertquestionoption(qo535);
    QuestionOption qo536 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,optionCd:'b'
        ,optionText:'「念のため心電図をとりましょう」'
        ,correctType:1);
    db.insertquestionoption(qo536);
    QuestionOption qo537 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,optionCd:'c'
        ,optionText:'「心臓カテーテル検査を予約しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo537);
    QuestionOption qo538 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,optionCd:'d'
        ,optionText:'「脳梗塞を起こしている可能性はありません」'
        ,correctType:0);
    db.insertquestionoption(qo538);
    QuestionOption qo539 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,optionCd:'e'
        ,optionText:'「今は動悸がないので，このままお帰りください」'
        ,correctType:0);
    db.insertquestionoption(qo539);
    QuestionOption qo540 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,optionCd:'a'
        ,optionText:'放射線外照射'
        ,correctType:0);
    db.insertquestionoption(qo540);
    QuestionOption qo541 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,optionCd:'b'
        ,optionText:'化学療法の中止'
        ,correctType:0);
    db.insertquestionoption(qo541);
    QuestionOption qo542 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,optionCd:'c'
        ,optionText:'手術による切除'
        ,correctType:0);
    db.insertquestionoption(qo542);
    QuestionOption qo543 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,optionCd:'d'
        ,optionText:'化学療法薬の変更'
        ,correctType:1);
    db.insertquestionoption(qo543);
    QuestionOption qo544 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,optionCd:'e'
        ,optionText:'悪性リンパ腫の化学療法の追加'
        ,correctType:0);
    db.insertquestionoption(qo544);
    QuestionOption qo545 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,optionCd:'a'
        ,optionText:'硬　さ'
        ,correctType:0);
    db.insertquestionoption(qo545);
    QuestionOption qo546 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,optionCd:'b'
        ,optionText:'表面の形状'
        ,correctType:0);
    db.insertquestionoption(qo546);
    QuestionOption qo547 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,optionCd:'c'
        ,optionText:'病変の性状'
        ,correctType:0);
    db.insertquestionoption(qo547);
    QuestionOption qo548 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,optionCd:'d'
        ,optionText:'反跳痛の有無'
        ,correctType:1);
    db.insertquestionoption(qo548);
    QuestionOption qo549 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,optionCd:'e'
        ,optionText:'可動性の有無'
        ,correctType:0);
    db.insertquestionoption(qo549);
    QuestionOption qo550 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,optionCd:'a'
        ,optionText:'プロラクチノーマ'
        ,correctType:0);
    db.insertquestionoption(qo550);
    QuestionOption qo551 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,optionCd:'b'
        ,optionText:'更年期障害'
        ,correctType:1);
    db.insertquestionoption(qo551);
    QuestionOption qo552 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,optionCd:'c'
        ,optionText:'動脈硬化症'
        ,correctType:0);
    db.insertquestionoption(qo552);
    QuestionOption qo553 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,optionCd:'d'
        ,optionText:'甲状腺疾患'
        ,correctType:0);
    db.insertquestionoption(qo553);
    QuestionOption qo554 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,optionCd:'e'
        ,optionText:'うつ病'
        ,correctType:0);
    db.insertquestionoption(qo554);
    QuestionOption qo555 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,optionCd:'a'
        ,optionText:'「以前から腰痛がありませんでしたか」'
        ,correctType:0);
    db.insertquestionoption(qo555);
    QuestionOption qo556 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,optionCd:'b'
        ,optionText:'「どのような動作で痛みが強くなりますか」'
        ,correctType:0);
    db.insertquestionoption(qo556);
    QuestionOption qo557 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,optionCd:'c'
        ,optionText:'「おしりや足に痛みやしびれがありませんか」'
        ,correctType:0);
    db.insertquestionoption(qo557);
    QuestionOption qo558 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,optionCd:'d'
        ,optionText:'「家族に腰痛疾患の方がいらっしゃいませんか」'
        ,correctType:1);
    db.insertquestionoption(qo558);
    QuestionOption qo559 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,optionCd:'e'
        ,optionText:'「横になっていても痛みの程度は変わりませんか」'
        ,correctType:0);
    db.insertquestionoption(qo559);
    QuestionOption qo560 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,optionCd:'a'
        ,optionText:'「手術」欄'
        ,correctType:0);
    db.insertquestionoption(qo560);
    QuestionOption qo561 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,optionCd:'b'
        ,optionText:'「死因の種類」欄'
        ,correctType:1);
    db.insertquestionoption(qo561);
    QuestionOption qo562 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,optionCd:'c'
        ,optionText:'「死亡の原因Ⅱ」欄'
        ,correctType:0);
    db.insertquestionoption(qo562);
    QuestionOption qo563 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,optionCd:'d'
        ,optionText:'「（ア）直接死因」欄'
        ,correctType:0);
    db.insertquestionoption(qo563);
    QuestionOption qo564 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,optionCd:'e'
        ,optionText:'「（ウ）（イ）の原因」欄'
        ,correctType:0);
    db.insertquestionoption(qo564);
    QuestionOption qo565 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,optionCd:'a'
        ,optionText:'肺炎球菌'
        ,correctType:0);
    db.insertquestionoption(qo565);
    QuestionOption qo566 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,optionCd:'b'
        ,optionText:'Legionella'
        ,correctType:0);
    db.insertquestionoption(qo566);
    QuestionOption qo567 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,optionCd:'c'
        ,optionText:'Mycoplasma'
        ,correctType:0);
    db.insertquestionoption(qo567);
    QuestionOption qo568 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,optionCd:'d'
        ,optionText:'Cryptococcus'
        ,correctType:1);
    db.insertquestionoption(qo568);
    QuestionOption qo569 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,optionCd:'e'
        ,optionText:'新型コロナウイルス'
        ,correctType:0);
    db.insertquestionoption(qo569);
    QuestionOption qo570 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,optionCd:'a'
        ,optionText:'Meningitis'
        ,correctType:0);
    db.insertquestionoption(qo570);
    QuestionOption qo571 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,optionCd:'b'
        ,optionText:'Brain tumor'
        ,correctType:0);
    db.insertquestionoption(qo571);
    QuestionOption qo572 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,optionCd:'c'
        ,optionText:'Cerebral infarction'
        ,correctType:0);
    db.insertquestionoption(qo572);
    QuestionOption qo573 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,optionCd:'d'
        ,optionText:'Cerebral hemorrhage'
        ,correctType:0);
    db.insertquestionoption(qo573);
    QuestionOption qo574 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,optionCd:'e'
        ,optionText:'Subarachnoid hemorrhage'
        ,correctType:1);
    db.insertquestionoption(qo574);
    QuestionOption qo575 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,optionCd:'a'
        ,optionText:'リウマトイド因子〈RF〉陽性'
        ,correctType:0);
    db.insertquestionoption(qo575);
    QuestionOption qo576 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,optionCd:'b'
        ,optionText:'血清CRP上昇'
        ,correctType:1);
    db.insertquestionoption(qo576);
    QuestionOption qo577 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,optionCd:'c'
        ,optionText:'白血球減少'
        ,correctType:0);
    db.insertquestionoption(qo577);
    QuestionOption qo578 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,optionCd:'d'
        ,optionText:'ASO高値'
        ,correctType:0);
    db.insertquestionoption(qo578);
    QuestionOption qo579 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,optionCd:'e'
        ,optionText:'赤沈遅延'
        ,correctType:0);
    db.insertquestionoption(qo579);
    QuestionOption qo580 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,optionCd:'a'
        ,optionText:'NSAIDを使用する。'
        ,correctType:1);
    db.insertquestionoption(qo580);
    QuestionOption qo581 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,optionCd:'b'
        ,optionText:'骨破壊に至ることはない。'
        ,correctType:0);
    db.insertquestionoption(qo581);
    QuestionOption qo582 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,optionCd:'c'
        ,optionText:'発作と運動は無関係である。'
        ,correctType:0);
    db.insertquestionoption(qo582);
    QuestionOption qo583 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,optionCd:'d'
        ,optionText:'尿路結石を合併することはない。'
        ,correctType:0);
    db.insertquestionoption(qo583);
    QuestionOption qo584 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,optionCd:'e'
        ,optionText:'急速に血清尿酸値を下げる必要がある。'
        ,correctType:0);
    db.insertquestionoption(qo584);
    QuestionOption qo585 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,optionCd:'a'
        ,optionText:'嘔気を訴えている。'
        ,correctType:0);
    db.insertquestionoption(qo585);
    QuestionOption qo586 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,optionCd:'b'
        ,optionText:'冷汗が著明である。'
        ,correctType:0);
    db.insertquestionoption(qo586);
    QuestionOption qo587 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,optionCd:'c'
        ,optionText:'SpO2が96％である。'
        ,correctType:1);
    db.insertquestionoption(qo587);
    QuestionOption qo588 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,optionCd:'d'
        ,optionText:'胸痛が圧迫感を伴う。'
        ,correctType:0);
    db.insertquestionoption(qo588);
    QuestionOption qo589 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,optionCd:'e'
        ,optionText:'胸痛が左肩に放散している。'
        ,correctType:0);
    db.insertquestionoption(qo589);
    QuestionOption qo590 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,optionCd:'a'
        ,optionText:'1時間後にトロポニンTを再検する。'
        ,correctType:0);
    db.insertquestionoption(qo590);
    QuestionOption qo591 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,optionCd:'b'
        ,optionText:'30分後に心電図を再検する。'
        ,correctType:0);
    db.insertquestionoption(qo591);
    QuestionOption qo592 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,optionCd:'c'
        ,optionText:'心電図モニターを装着する。'
        ,correctType:0);
    db.insertquestionoption(qo592);
    QuestionOption qo593 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,optionCd:'d'
        ,optionText:'運動負荷心電図を行う。'
        ,correctType:1);
    db.insertquestionoption(qo593);
    QuestionOption qo594 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,optionCd:'e'
        ,optionText:'心エコーを行う。'
        ,correctType:0);
    db.insertquestionoption(qo594);
    QuestionOption qo595 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,optionCd:'a'
        ,optionText:'かつて経験したことがない強い頭痛である。'
        ,correctType:1);
    db.insertquestionoption(qo595);
    QuestionOption qo596 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,optionCd:'b'
        ,optionText:'頭痛に先立ってギザギザした光が見えた。'
        ,correctType:0);
    db.insertquestionoption(qo596);
    QuestionOption qo597 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,optionCd:'c'
        ,optionText:'ギザギザした光が次第に大きくなった。'
        ,correctType:0);
    db.insertquestionoption(qo597);
    QuestionOption qo598 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,optionCd:'d'
        ,optionText:'項部硬直を認めない。'
        ,correctType:0);
    db.insertquestionoption(qo598);
    QuestionOption qo599 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,optionCd:'e'
        ,optionText:'拍動性の頭痛である。'
        ,correctType:0);
    db.insertquestionoption(qo599);
    QuestionOption qo600 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,optionCd:'a'
        ,optionText:'抗菌薬静注'
        ,correctType:0);
    db.insertquestionoption(qo600);
    QuestionOption qo601 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,optionCd:'b'
        ,optionText:'NSAID内服'
        ,correctType:0);
    db.insertquestionoption(qo601);
    QuestionOption qo602 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,optionCd:'c'
        ,optionText:'トリプタン投与'
        ,correctType:1);
    db.insertquestionoption(qo602);
    QuestionOption qo603 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,optionCd:'d'
        ,optionText:'カルシウム拮抗薬内服'
        ,correctType:0);
    db.insertquestionoption(qo603);
    QuestionOption qo604 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,optionCd:'e'
        ,optionText:'副腎皮質ステロイド静注'
        ,correctType:0);
    db.insertquestionoption(qo604);
    QuestionOption qo605 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,optionCd:'a'
        ,optionText:'規則的な下腹部痛'
        ,correctType:0);
    db.insertquestionoption(qo605);
    QuestionOption qo606 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,optionCd:'b'
        ,optionText:'子宮底　臍高'
        ,correctType:0);
    db.insertquestionoption(qo606);
    QuestionOption qo607 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,optionCd:'c'
        ,optionText:'脈拍　120/分'
        ,correctType:1);
    db.insertquestionoption(qo607);
    QuestionOption qo608 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,optionCd:'d'
        ,optionText:'体温　37.0℃'
        ,correctType:0);
    db.insertquestionoption(qo608);
    QuestionOption qo609 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,optionCd:'e'
        ,optionText:'悪露　赤色'
        ,correctType:0);
    db.insertquestionoption(qo609);
    QuestionOption qo610 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,optionCd:'a'
        ,optionText:'乳房・乳頭マッサージ'
        ,correctType:1);
    db.insertquestionoption(qo610);
    QuestionOption qo611 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,optionCd:'b'
        ,optionText:'乳汁分泌抑制薬投与'
        ,correctType:0);
    db.insertquestionoption(qo611);
    QuestionOption qo612 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,optionCd:'c'
        ,optionText:'母体の水分制限'
        ,correctType:0);
    db.insertquestionoption(qo612);
    QuestionOption qo613 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,optionCd:'d'
        ,optionText:'抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo613);
    QuestionOption qo614 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,optionCd:'e'
        ,optionText:'授乳禁止'
        ,correctType:0);
    db.insertquestionoption(qo614);
    QuestionOption qo615 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,optionCd:'a'
        ,optionText:'フェリチン'
        ,correctType:1);
    db.insertquestionoption(qo615);
    QuestionOption qo616 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,optionCd:'b'
        ,optionText:'UIBC'
        ,correctType:0);
    db.insertquestionoption(qo616);
    QuestionOption qo617 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,optionCd:'c'
        ,optionText:'TIBC'
        ,correctType:0);
    db.insertquestionoption(qo617);
    QuestionOption qo618 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,optionCd:'d'
        ,optionText:'Hb'
        ,correctType:0);
    db.insertquestionoption(qo618);
    QuestionOption qo619 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,optionCd:'e'
        ,optionText:'Fe'
        ,correctType:0);
    db.insertquestionoption(qo619);
    QuestionOption qo620 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,optionCd:'a'
        ,optionText:'「便が黒いのに気付いたことはありますか」'
        ,correctType:0);
    db.insertquestionoption(qo620);
    QuestionOption qo621 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,optionCd:'b'
        ,optionText:'「お腹が痛くなることはありますか」'
        ,correctType:0);
    db.insertquestionoption(qo621);
    QuestionOption qo622 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,optionCd:'c'
        ,optionText:'「息子さんにも貧血がありますか」'
        ,correctType:1);
    db.insertquestionoption(qo622);
    QuestionOption qo623 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,optionCd:'d'
        ,optionText:'「生理の出血は多い方ですか」'
        ,correctType:0);
    db.insertquestionoption(qo623);
    QuestionOption qo624 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,optionCd:'e'
        ,optionText:'「生理は順調ですか」'
        ,correctType:0);
    db.insertquestionoption(qo624);
    QuestionOption qo625 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,optionCd:'a'
        ,optionText:'遺族も給付対象となる。'
        ,correctType:1);
    db.insertquestionoption(qo625);
    QuestionOption qo626 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,optionCd:'b'
        ,optionText:'現金給付されることはない。'
        ,correctType:0);
    db.insertquestionoption(qo626);
    QuestionOption qo627 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,optionCd:'c'
        ,optionText:'パートタイマーには適用されない。'
        ,correctType:0);
    db.insertquestionoption(qo627);
    QuestionOption qo628 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,optionCd:'d'
        ,optionText:'給付は労働安全衛生法で定められている。'
        ,correctType:0);
    db.insertquestionoption(qo628);
    QuestionOption qo629 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,optionCd:'e'
        ,optionText:'認定を受けると医療費の9割が給付される。'
        ,correctType:0);
    db.insertquestionoption(qo629);
    QuestionOption qo630 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,optionCd:'a'
        ,optionText:'① ―――― 視神経'
        ,correctType:1);
    db.insertquestionoption(qo630);
    QuestionOption qo631 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,optionCd:'b'
        ,optionText:'② ―――― 中脳水道'
        ,correctType:0);
    db.insertquestionoption(qo631);
    QuestionOption qo632 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,optionCd:'c'
        ,optionText:'③ ―――― 椎骨動脈'
        ,correctType:0);
    db.insertquestionoption(qo632);
    QuestionOption qo633 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,optionCd:'d'
        ,optionText:'④ ―――― 延　髄'
        ,correctType:0);
    db.insertquestionoption(qo633);
    QuestionOption qo634 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,optionCd:'e'
        ,optionText:'⑤ ―――― 後頭葉'
        ,correctType:0);
    db.insertquestionoption(qo634);
    QuestionOption qo635 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,optionCd:'a'
        ,optionText:'Abdominal puncture'
        ,correctType:0);
    db.insertquestionoption(qo635);
    QuestionOption qo636 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,optionCd:'b'
        ,optionText:'Gastrostomy'
        ,correctType:0);
    db.insertquestionoption(qo636);
    QuestionOption qo637 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,optionCd:'c'
        ,optionText:'Surgical suture removal'
        ,correctType:0);
    db.insertquestionoption(qo637);
    QuestionOption qo638 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,optionCd:'d'
        ,optionText:'Prescription of oral drugs'
        ,correctType:0);
    db.insertquestionoption(qo638);
    QuestionOption qo639 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,optionCd:'e'
        ,optionText:'Treatment for pressure ulcers'
        ,correctType:1);
    db.insertquestionoption(qo639);
    QuestionOption qo640 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,optionCd:'a'
        ,optionText:'笑気配管 ―――― 青色'
        ,correctType:0);
    db.insertquestionoption(qo640);
    QuestionOption qo641 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,optionCd:'b'
        ,optionText:'酸素配管 ―――― 緑色'
        ,correctType:0);
    db.insertquestionoption(qo641);
    QuestionOption qo642 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,optionCd:'c'
        ,optionText:'空気配管 ―――― 黄色'
        ,correctType:0);
    db.insertquestionoption(qo642);
    QuestionOption qo643 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,optionCd:'d'
        ,optionText:'吸引配管 ―――― 赤色'
        ,correctType:1);
    db.insertquestionoption(qo643);
    QuestionOption qo644 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,optionCd:'e'
        ,optionText:'酸素ボンベ ―――― 黒色'
        ,correctType:0);
    db.insertquestionoption(qo644);
    QuestionOption qo645 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,optionCd:'a'
        ,optionText:'守秘義務'
        ,correctType:1);
    db.insertquestionoption(qo645);
    QuestionOption qo646 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,optionCd:'b'
        ,optionText:'診療録の開示'
        ,correctType:0);
    db.insertquestionoption(qo646);
    QuestionOption qo647 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,optionCd:'c'
        ,optionText:'医療保護入院'
        ,correctType:0);
    db.insertquestionoption(qo647);
    QuestionOption qo648 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,optionCd:'d'
        ,optionText:'異状死体の届出'
        ,correctType:0);
    db.insertquestionoption(qo648);
    QuestionOption qo649 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,optionCd:'e'
        ,optionText:'基本的人権の尊重'
        ,correctType:0);
    db.insertquestionoption(qo649);
    QuestionOption qo650 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,optionCd:'a'
        ,optionText:'脳波は高振幅徐波を示す。'
        ,correctType:0);
    db.insertquestionoption(qo650);
    QuestionOption qo651 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,optionCd:'b'
        ,optionText:'夢を見ていることが多い。'
        ,correctType:1);
    db.insertquestionoption(qo651);
    QuestionOption qo652 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,optionCd:'c'
        ,optionText:'体温低下が特徴である。'
        ,correctType:0);
    db.insertquestionoption(qo652);
    QuestionOption qo653 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,optionCd:'d'
        ,optionText:'睡眠の開始相である。'
        ,correctType:0);
    db.insertquestionoption(qo653);
    QuestionOption qo654 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,optionCd:'e'
        ,optionText:'筋緊張が亢進する。'
        ,correctType:0);
    db.insertquestionoption(qo654);
    QuestionOption qo655 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,optionCd:'a'
        ,optionText:'病原微生物'
        ,correctType:0);
    db.insertquestionoption(qo655);
    QuestionOption qo656 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,optionCd:'b'
        ,optionText:'大気汚染'
        ,correctType:0);
    db.insertquestionoption(qo656);
    QuestionOption qo657 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,optionCd:'c'
        ,optionText:'液性免疫'
        ,correctType:1);
    db.insertquestionoption(qo657);
    QuestionOption qo658 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,optionCd:'d'
        ,optionText:'運動習慣'
        ,correctType:0);
    db.insertquestionoption(qo658);
    QuestionOption qo659 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,optionCd:'e'
        ,optionText:'食生活'
        ,correctType:0);
    db.insertquestionoption(qo659);
    QuestionOption qo660 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,optionCd:'a'
        ,optionText:'披裂喉頭蓋ヒダ'
        ,correctType:0);
    db.insertquestionoption(qo660);
    QuestionOption qo661 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,optionCd:'b'
        ,optionText:'下咽頭後壁'
        ,correctType:0);
    db.insertquestionoption(qo661);
    QuestionOption qo662 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,optionCd:'c'
        ,optionText:'梨状陥凹'
        ,correctType:0);
    db.insertquestionoption(qo662);
    QuestionOption qo663 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,optionCd:'d'
        ,optionText:'口蓋扁桃'
        ,correctType:1);
    db.insertquestionoption(qo663);
    QuestionOption qo664 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,optionCd:'e'
        ,optionText:'喉頭蓋'
        ,correctType:0);
    db.insertquestionoption(qo664);
    QuestionOption qo665 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,optionCd:'a'
        ,optionText:'妊娠25週未満までが適応となる。'
        ,correctType:1);
    db.insertquestionoption(qo665);
    QuestionOption qo666 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,optionCd:'b'
        ,optionText:'母体保護法指定医のみが施行できる。'
        ,correctType:0);
    db.insertquestionoption(qo666);
    QuestionOption qo667 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,optionCd:'c'
        ,optionText:'胎児異常の可能性があっても中絶できない。'
        ,correctType:0);
    db.insertquestionoption(qo667);
    QuestionOption qo668 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,optionCd:'d'
        ,optionText:'手術の適応は母体保護法に規定されている。'
        ,correctType:0);
    db.insertquestionoption(qo668);
    QuestionOption qo669 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,optionCd:'e'
        ,optionText:'実施した医師は翌月の10日までに都道府県知事に届け出る。'
        ,correctType:0);
    db.insertquestionoption(qo669);
    QuestionOption qo670 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,optionCd:'a'
        ,optionText:'手術開始前に麻酔器を患者の左側へ移動する。'
        ,correctType:0);
    db.insertquestionoption(qo670);
    QuestionOption qo671 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,optionCd:'b'
        ,optionText:'麻酔導入はチオペンタールを使用する。'
        ,correctType:1);
    db.insertquestionoption(qo671);
    QuestionOption qo672 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,optionCd:'c'
        ,optionText:'術前訪問で開口状態を確認する。'
        ,correctType:0);
    db.insertquestionoption(qo672);
    QuestionOption qo673 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,optionCd:'d'
        ,optionText:'仙骨部の褥瘡予防に注意する。'
        ,correctType:0);
    db.insertquestionoption(qo673);
    QuestionOption qo674 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,optionCd:'e'
        ,optionText:'術前に処方内容を確認する。'
        ,correctType:0);
    db.insertquestionoption(qo674);
    QuestionOption qo675 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,optionCd:'a'
        ,optionText:'ウィスコンシンカードソーティングテスト〈WCST〉'
        ,correctType:0);
    db.insertquestionoption(qo675);
    QuestionOption qo676 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,optionCd:'b'
        ,optionText:'Mini-Mental State Examination〈MMSE〉'
        ,correctType:0);
    db.insertquestionoption(qo676);
    QuestionOption qo677 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,optionCd:'c'
        ,optionText:'改訂長谷川式簡易知能評価スケール'
        ,correctType:0);
    db.insertquestionoption(qo677);
    QuestionOption qo678 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,optionCd:'d'
        ,optionText:'田中・Binet式知能検査'
        ,correctType:0);
    db.insertquestionoption(qo678);
    QuestionOption qo679 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,optionCd:'e'
        ,optionText:'前頭葉機能検査〈FAB〉'
        ,correctType:1);
    db.insertquestionoption(qo679);
    QuestionOption qo680 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,optionCd:'a'
        ,optionText:'クリオグロブリン血症'
        ,correctType:0);
    db.insertquestionoption(qo680);
    QuestionOption qo681 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,optionCd:'b'
        ,optionText:'遺伝性血管性浮腫'
        ,correctType:0);
    db.insertquestionoption(qo681);
    QuestionOption qo682 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,optionCd:'c'
        ,optionText:'悪性関節リウマチ'
        ,correctType:0);
    db.insertquestionoption(qo682);
    QuestionOption qo683 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,optionCd:'d'
        ,optionText:'ループス腎炎'
        ,correctType:0);
    db.insertquestionoption(qo683);
    QuestionOption qo684 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,optionCd:'e'
        ,optionText:'Behçet病'
        ,correctType:1);
    db.insertquestionoption(qo684);
    QuestionOption qo685 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,optionCd:'a'
        ,optionText:'2歳児の歯磨き指導'
        ,correctType:0);
    db.insertquestionoption(qo685);
    QuestionOption qo686 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,optionCd:'b'
        ,optionText:'肥満予防の栄養相談'
        ,correctType:0);
    db.insertquestionoption(qo686);
    QuestionOption qo687 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,optionCd:'c'
        ,optionText:'3歳児健康診査の受診'
        ,correctType:0);
    db.insertquestionoption(qo687);
    QuestionOption qo688 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,optionCd:'d'
        ,optionText:'日本脳炎ワクチンの接種'
        ,correctType:0);
    db.insertquestionoption(qo688);
    QuestionOption qo689 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,optionCd:'e'
        ,optionText:'脳性麻痺児の言語リハビリテーション'
        ,correctType:1);
    db.insertquestionoption(qo689);
    QuestionOption qo690 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,optionCd:'a'
        ,optionText:'IgA'
        ,correctType:0);
    db.insertquestionoption(qo690);
    QuestionOption qo691 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,optionCd:'b'
        ,optionText:'IgD'
        ,correctType:0);
    db.insertquestionoption(qo691);
    QuestionOption qo692 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,optionCd:'c'
        ,optionText:'IgE'
        ,correctType:0);
    db.insertquestionoption(qo692);
    QuestionOption qo693 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,optionCd:'d'
        ,optionText:'IgG'
        ,correctType:0);
    db.insertquestionoption(qo693);
    QuestionOption qo694 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,optionCd:'e'
        ,optionText:'IgM'
        ,correctType:1);
    db.insertquestionoption(qo694);
    QuestionOption qo695 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,optionCd:'a'
        ,optionText:'喫煙に関する寄与危険度は疾患Aで最も大きい。'
        ,correctType:0);
    db.insertquestionoption(qo695);
    QuestionOption qo696 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,optionCd:'b'
        ,optionText:'個人の禁煙効果は疾患C予防の上で最も大きい。'
        ,correctType:0);
    db.insertquestionoption(qo696);
    QuestionOption qo697 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,optionCd:'c'
        ,optionText:'喫煙に関する相対危険度は疾患Bで最も大きい。'
        ,correctType:1);
    db.insertquestionoption(qo697);
    QuestionOption qo698 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,optionCd:'d'
        ,optionText:'集団の禁煙効果は疾患A予防の上で最も大きい。'
        ,correctType:0);
    db.insertquestionoption(qo698);
    QuestionOption qo699 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,optionCd:'e'
        ,optionText:'期待値は疾患Bで最も大きい。'
        ,correctType:0);
    db.insertquestionoption(qo699);
    QuestionOption qo700 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,optionCd:'a'
        ,optionText:'特発性副甲状腺機能低下症'
        ,correctType:0);
    db.insertquestionoption(qo700);
    QuestionOption qo701 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,optionCd:'b'
        ,optionText:'偽性副甲状腺機能低下症'
        ,correctType:0);
    db.insertquestionoption(qo701);
    QuestionOption qo702 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,optionCd:'c'
        ,optionText:'サルコイドーシス'
        ,correctType:0);
    db.insertquestionoption(qo702);
    QuestionOption qo703 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,optionCd:'d'
        ,optionText:'慢性腎不全'
        ,correctType:1);
    db.insertquestionoption(qo703);
    QuestionOption qo704 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,optionCd:'e'
        ,optionText:'骨軟化症'
        ,correctType:0);
    db.insertquestionoption(qo704);
    QuestionOption qo705 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,optionCd:'a'
        ,optionText:'骨粗鬆症'
        ,correctType:0);
    db.insertquestionoption(qo705);
    QuestionOption qo706 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,optionCd:'b'
        ,optionText:'関節弛緩'
        ,correctType:1);
    db.insertquestionoption(qo706);
    QuestionOption qo707 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,optionCd:'c'
        ,optionText:'筋萎縮'
        ,correctType:0);
    db.insertquestionoption(qo707);
    QuestionOption qo708 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,optionCd:'d'
        ,optionText:'認知機能低下'
        ,correctType:0);
    db.insertquestionoption(qo708);
    QuestionOption qo709 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,optionCd:'e'
        ,optionText:'褥　瘡'
        ,correctType:0);
    db.insertquestionoption(qo709);
    QuestionOption qo710 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,optionCd:'a'
        ,optionText:'洞結節は右房に存在する。'
        ,correctType:0);
    db.insertquestionoption(qo710);
    QuestionOption qo711 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,optionCd:'b'
        ,optionText:'僧帽弁は三尖弁より後方にある。'
        ,correctType:0);
    db.insertquestionoption(qo711);
    QuestionOption qo712 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,optionCd:'c'
        ,optionText:'肺動脈弁は大動脈弁より前方にある。'
        ,correctType:0);
    db.insertquestionoption(qo712);
    QuestionOption qo713 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,optionCd:'d'
        ,optionText:'僧帽弁の弁口面積は4～6 cm2である。'
        ,correctType:0);
    db.insertquestionoption(qo713);
    QuestionOption qo714 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,optionCd:'e'
        ,optionText:'房室結節は左冠動脈により主に栄養されている。'
        ,correctType:1);
    db.insertquestionoption(qo714);
    QuestionOption qo715 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,optionCd:'a'
        ,optionText:'早期発見・早期治療が中核である。'
        ,correctType:0);
    db.insertquestionoption(qo715);
    QuestionOption qo716 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,optionCd:'b'
        ,optionText:'ライフスタイルの改善が必要である。'
        ,correctType:1);
    db.insertquestionoption(qo716);
    QuestionOption qo717 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,optionCd:'c'
        ,optionText:'行政機関が国民に健康増進を促す法的根拠はない。'
        ,correctType:0);
    db.insertquestionoption(qo717);
    QuestionOption qo718 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,optionCd:'d'
        ,optionText:'現代の我が国では生活習慣病対策の重要性は低い。'
        ,correctType:0);
    db.insertquestionoption(qo718);
    QuestionOption qo719 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,optionCd:'e'
        ,optionText:'健康づくり政策は個人を対象にすると効果的である。'
        ,correctType:0);
    db.insertquestionoption(qo719);
    QuestionOption qo720 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,optionCd:'a'
        ,optionText:'陰毛の発生'
        ,correctType:0);
    db.insertquestionoption(qo720);
    QuestionOption qo721 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,optionCd:'b'
        ,optionText:'ひげの発生'
        ,correctType:0);
    db.insertquestionoption(qo721);
    QuestionOption qo722 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,optionCd:'c'
        ,optionText:'腋毛の発生'
        ,correctType:0);
    db.insertquestionoption(qo722);
    QuestionOption qo723 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,optionCd:'d'
        ,optionText:'精巣の増大'
        ,correctType:1);
    db.insertquestionoption(qo723);
    QuestionOption qo724 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,optionCd:'e'
        ,optionText:'声変わり'
        ,correctType:0);
    db.insertquestionoption(qo724);
    QuestionOption qo725 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,optionCd:'a'
        ,optionText:'世界保健機関〈WHO〉 ―――― 労働条件の国際基準の設定'
        ,correctType:1);
    db.insertquestionoption(qo725);
    QuestionOption qo726 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,optionCd:'b'
        ,optionText:'国際協力機構〈JICA〉 ―――― 政府主導の二国間協力'
        ,correctType:0);
    db.insertquestionoption(qo726);
    QuestionOption qo727 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,optionCd:'c'
        ,optionText:'政府開発援助〈ODA〉 ―――― 政府による資金協力'
        ,correctType:0);
    db.insertquestionoption(qo727);
    QuestionOption qo728 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,optionCd:'d'
        ,optionText:'国際労働機関〈ILO〉 ―――― 労働者の健康保護'
        ,correctType:0);
    db.insertquestionoption(qo728);
    QuestionOption qo729 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,optionCd:'e'
        ,optionText:'非政府機関〈NGO〉 ―――― 民間による国際保健協力'
        ,correctType:0);
    db.insertquestionoption(qo729);
    QuestionOption qo730 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo730);
    QuestionOption qo731 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:0);
    db.insertquestionoption(qo731);
    QuestionOption qo732 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:0);
    db.insertquestionoption(qo732);
    QuestionOption qo733 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:1);
    db.insertquestionoption(qo733);
    QuestionOption qo734 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo734);
    QuestionOption qo735 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,optionCd:'a'
        ,optionText:'ペニシリン系'
        ,correctType:0);
    db.insertquestionoption(qo735);
    QuestionOption qo736 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,optionCd:'b'
        ,optionText:'マクロライド系'
        ,correctType:0);
    db.insertquestionoption(qo736);
    QuestionOption qo737 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,optionCd:'c'
        ,optionText:'ニューキノロン系'
        ,correctType:1);
    db.insertquestionoption(qo737);
    QuestionOption qo738 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,optionCd:'d'
        ,optionText:'カルバペネム系'
        ,correctType:0);
    db.insertquestionoption(qo738);
    QuestionOption qo739 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,optionCd:'e'
        ,optionText:'第三世代セフェム系'
        ,correctType:0);
    db.insertquestionoption(qo739);
    QuestionOption qo740 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,optionCd:'a'
        ,optionText:'耐糖能'
        ,correctType:1);
    db.insertquestionoption(qo740);
    QuestionOption qo741 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,optionCd:'b'
        ,optionText:'基礎代謝'
        ,correctType:0);
    db.insertquestionoption(qo741);
    QuestionOption qo742 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,optionCd:'c'
        ,optionText:'脂質代謝'
        ,correctType:0);
    db.insertquestionoption(qo742);
    QuestionOption qo743 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,optionCd:'d'
        ,optionText:'循環血漿量'
        ,correctType:0);
    db.insertquestionoption(qo743);
    QuestionOption qo744 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,optionCd:'e'
        ,optionText:'糸球体濾過量'
        ,correctType:0);
    db.insertquestionoption(qo744);
    QuestionOption qo745 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,optionCd:'a'
        ,optionText:'脂肪の消化吸収障害は三大栄養素の中で最も出現しやすい。'
        ,correctType:1);
    db.insertquestionoption(qo745);
    QuestionOption qo746 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,optionCd:'b'
        ,optionText:'BT-PABA試験で膵内分泌機能を測定する。'
        ,correctType:0);
    db.insertquestionoption(qo746);
    QuestionOption qo747 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,optionCd:'c'
        ,optionText:'水分の吸収は主に小腸で行われる。'
        ,correctType:0);
    db.insertquestionoption(qo747);
    QuestionOption qo748 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,optionCd:'d'
        ,optionText:'長鎖脂肪酸は門脈へ運ばれる。'
        ,correctType:0);
    db.insertquestionoption(qo748);
    QuestionOption qo749 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,optionCd:'e'
        ,optionText:'閉塞性黄疸ではタール便になる。'
        ,correctType:0);
    db.insertquestionoption(qo749);
    QuestionOption qo750 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,optionCd:'a'
        ,optionText:'Mayer-Rokitansky-Küster-Hauser〈MRKH〉症候群'
        ,correctType:0);
    db.insertquestionoption(qo750);
    QuestionOption qo751 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,optionCd:'b'
        ,optionText:'アンドロゲン不応症〈精巣性女性化症候群〉'
        ,correctType:1);
    db.insertquestionoption(qo751);
    QuestionOption qo752 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,optionCd:'c'
        ,optionText:'先天性副腎皮質過形成'
        ,correctType:0);
    db.insertquestionoption(qo752);
    QuestionOption qo753 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,optionCd:'d'
        ,optionText:'Klinefelter症候群'
        ,correctType:0);
    db.insertquestionoption(qo753);
    QuestionOption qo754 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,optionCd:'e'
        ,optionText:'Turner症候群'
        ,correctType:0);
    db.insertquestionoption(qo754);
    QuestionOption qo755 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,optionCd:'a'
        ,optionText:'アルコール離脱せん妄'
        ,correctType:0);
    db.insertquestionoption(qo755);
    QuestionOption qo756 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,optionCd:'b'
        ,optionText:'Alzheimer型認知症'
        ,correctType:0);
    db.insertquestionoption(qo756);
    QuestionOption qo757 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,optionCd:'c'
        ,optionText:'Korsakoff症候群'
        ,correctType:0);
    db.insertquestionoption(qo757);
    QuestionOption qo758 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,optionCd:'d'
        ,optionText:'慢性硬膜下血腫'
        ,correctType:0);
    db.insertquestionoption(qo758);
    QuestionOption qo759 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,optionCd:'e'
        ,optionText:'パニック障害'
        ,correctType:1);
    db.insertquestionoption(qo759);
    QuestionOption qo760 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,optionCd:'a'
        ,optionText:'ウエストナイル脳炎'
        ,correctType:0);
    db.insertquestionoption(qo760);
    QuestionOption qo761 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,optionCd:'b'
        ,optionText:'日本脳炎'
        ,correctType:0);
    db.insertquestionoption(qo761);
    QuestionOption qo762 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,optionCd:'c'
        ,optionText:'デング熱'
        ,correctType:0);
    db.insertquestionoption(qo762);
    QuestionOption qo763 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,optionCd:'d'
        ,optionText:'ジカ熱'
        ,correctType:0);
    db.insertquestionoption(qo763);
    QuestionOption qo764 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,optionCd:'e'
        ,optionText:'Q　熱'
        ,correctType:1);
    db.insertquestionoption(qo764);
    QuestionOption qo765 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,optionCd:'a'
        ,optionText:'臍帯静脈血の酸素飽和度は母体子宮動脈よりも高い。'
        ,correctType:0);
    db.insertquestionoption(qo765);
    QuestionOption qo766 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,optionCd:'b'
        ,optionText:'羊水には胎児肺胞からの分泌物が含まれる。'
        ,correctType:1);
    db.insertquestionoption(qo766);
    QuestionOption qo767 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,optionCd:'c'
        ,optionText:'脱落膜は胎児由来の組織である。'
        ,correctType:0);
    db.insertquestionoption(qo767);
    QuestionOption qo768 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,optionCd:'d'
        ,optionText:'絨毛間腔には胎児血が循環する。'
        ,correctType:0);
    db.insertquestionoption(qo768);
    QuestionOption qo769 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,optionCd:'e'
        ,optionText:'羊水量は胎児腎機能と関連する。'
        ,correctType:1);
    db.insertquestionoption(qo769);
    QuestionOption qo770 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,optionCd:'a'
        ,optionText:'障害者就業・生活支援センター'
        ,correctType:1);
    db.insertquestionoption(qo770);
    QuestionOption qo771 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,optionCd:'b'
        ,optionText:'在宅介護支援センター'
        ,correctType:0);
    db.insertquestionoption(qo771);
    QuestionOption qo772 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,optionCd:'c'
        ,optionText:'グループホーム'
        ,correctType:0);
    db.insertquestionoption(qo772);
    QuestionOption qo773 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,optionCd:'d'
        ,optionText:'保護観察所'
        ,correctType:0);
    db.insertquestionoption(qo773);
    QuestionOption qo774 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,optionCd:'e'
        ,optionText:'デイケア'
        ,correctType:1);
    db.insertquestionoption(qo774);
    QuestionOption qo775 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,optionCd:'a'
        ,optionText:'硝子円柱'
        ,correctType:1);
    db.insertquestionoption(qo775);
    QuestionOption qo776 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,optionCd:'b'
        ,optionText:'扁平上皮'
        ,correctType:1);
    db.insertquestionoption(qo776);
    QuestionOption qo777 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,optionCd:'c'
        ,optionText:'赤血球円柱'
        ,correctType:0);
    db.insertquestionoption(qo777);
    QuestionOption qo778 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,optionCd:'d'
        ,optionText:'変形赤血球'
        ,correctType:0);
    db.insertquestionoption(qo778);
    QuestionOption qo779 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,optionCd:'e'
        ,optionText:'正六角形結晶'
        ,correctType:0);
    db.insertquestionoption(qo779);
    QuestionOption qo780 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,optionCd:'a'
        ,optionText:'基本的医薬品の常備'
        ,correctType:1);
    db.insertquestionoption(qo780);
    QuestionOption qo781 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,optionCd:'b'
        ,optionText:'医療機関の機能分化'
        ,correctType:0);
    db.insertquestionoption(qo781);
    QuestionOption qo782 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,optionCd:'c'
        ,optionText:'予防接種の実施'
        ,correctType:1);
    db.insertquestionoption(qo782);
    QuestionOption qo783 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,optionCd:'d'
        ,optionText:'専門医の育成'
        ,correctType:0);
    db.insertquestionoption(qo783);
    QuestionOption qo784 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,optionCd:'e'
        ,optionText:'国民皆保険'
        ,correctType:0);
    db.insertquestionoption(qo784);
    QuestionOption qo785 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,optionCd:'a'
        ,optionText:'血清ハプトグロビン増加'
        ,correctType:0);
    db.insertquestionoption(qo785);
    QuestionOption qo786 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,optionCd:'b'
        ,optionText:'直接ビリルビン増加'
        ,correctType:0);
    db.insertquestionoption(qo786);
    QuestionOption qo787 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,optionCd:'c'
        ,optionText:'赤血球寿命延長'
        ,correctType:0);
    db.insertquestionoption(qo787);
    QuestionOption qo788 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,optionCd:'d'
        ,optionText:'網赤血球増加'
        ,correctType:1);
    db.insertquestionoption(qo788);
    QuestionOption qo789 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,optionCd:'e'
        ,optionText:'血清LD増加'
        ,correctType:1);
    db.insertquestionoption(qo789);
    QuestionOption qo790 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,optionCd:'a'
        ,optionText:'国民健康・栄養調査'
        ,correctType:0);
    db.insertquestionoption(qo790);
    QuestionOption qo791 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,optionCd:'b'
        ,optionText:'国民生活基礎調査'
        ,correctType:1);
    db.insertquestionoption(qo791);
    QuestionOption qo792 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,optionCd:'c'
        ,optionText:'人口動態調査'
        ,correctType:0);
    db.insertquestionoption(qo792);
    QuestionOption qo793 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,optionCd:'d'
        ,optionText:'患者調査'
        ,correctType:0);
    db.insertquestionoption(qo793);
    QuestionOption qo794 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,optionCd:'e'
        ,optionText:'国勢調査'
        ,correctType:1);
    db.insertquestionoption(qo794);
    QuestionOption qo795 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,optionCd:'a'
        ,optionText:'BCGワクチン'
        ,correctType:0);
    db.insertquestionoption(qo795);
    QuestionOption qo796 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,optionCd:'b'
        ,optionText:'インフルエンザワクチン'
        ,correctType:0);
    db.insertquestionoption(qo796);
    QuestionOption qo797 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,optionCd:'c'
        ,optionText:'麻疹・風疹混合ワクチン'
        ,correctType:0);
    db.insertquestionoption(qo797);
    QuestionOption qo798 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,optionCd:'d'
        ,optionText:'インフルエンザ菌b型ワクチン'
        ,correctType:1);
    db.insertquestionoption(qo798);
    QuestionOption qo799 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,optionCd:'e'
        ,optionText:'おたふくかぜワクチン'
        ,correctType:0);
    db.insertquestionoption(qo799);
    QuestionOption qo800 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,optionCd:'a'
        ,optionText:'1年に1回の健康診断を継続して受けるように伝える。'
        ,correctType:0);
    db.insertquestionoption(qo800);
    QuestionOption qo801 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,optionCd:'b'
        ,optionText:'精神的なものなので気にする必要はないと伝える。'
        ,correctType:0);
    db.insertquestionoption(qo801);
    QuestionOption qo802 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,optionCd:'c'
        ,optionText:'更年期障害と考え，うまく付き合うように伝える。'
        ,correctType:0);
    db.insertquestionoption(qo802);
    QuestionOption qo803 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,optionCd:'d'
        ,optionText:'詳細な問診を行い，精密検査の計画を立てる。'
        ,correctType:1);
    db.insertquestionoption(qo803);
    QuestionOption qo804 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,optionCd:'e'
        ,optionText:'経過観察として半年後の予約を入れる。'
        ,correctType:0);
    db.insertquestionoption(qo804);
    QuestionOption qo805 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,optionCd:'a'
        ,optionText:'「ご高齢の方では発熱などの典型的な症状がはっきり出ないこともあります」'
        ,correctType:1);
    db.insertquestionoption(qo805);
    QuestionOption qo806 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,optionCd:'b'
        ,optionText:'「熱がないのは他の病気が隠れているからかもしれません」'
        ,correctType:0);
    db.insertquestionoption(qo806);
    QuestionOption qo807 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,optionCd:'c'
        ,optionText:'「入院した方が良いと思いますが，どうなさいますか」'
        ,correctType:0);
    db.insertquestionoption(qo807);
    QuestionOption qo808 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,optionCd:'d'
        ,optionText:'「診断に間違いはありませんから安心してください」'
        ,correctType:0);
    db.insertquestionoption(qo808);
    QuestionOption qo809 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,optionCd:'e'
        ,optionText:'「特殊な肺炎なので症状が出にくいのです」'
        ,correctType:0);
    db.insertquestionoption(qo809);
    QuestionOption qo810 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,optionCd:'a'
        ,optionText:'偽痛風'
        ,correctType:0);
    db.insertquestionoption(qo810);
    QuestionOption qo811 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,optionCd:'b'
        ,optionText:'関節リウマチ'
        ,correctType:0);
    db.insertquestionoption(qo811);
    QuestionOption qo812 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,optionCd:'c'
        ,optionText:'Heberden結節'
        ,correctType:1);
    db.insertquestionoption(qo812);
    QuestionOption qo813 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,optionCd:'d'
        ,optionText:'リウマチ性多発筋痛症'
        ,correctType:0);
    db.insertquestionoption(qo813);
    QuestionOption qo814 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,optionCd:'e'
        ,optionText:'全身性エリテマトーデス〈SLE〉'
        ,correctType:0);
    db.insertquestionoption(qo814);
    QuestionOption qo815 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,optionCd:'a'
        ,optionText:'SpO2'
        ,correctType:0);
    db.insertquestionoption(qo815);
    QuestionOption qo816 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,optionCd:'b'
        ,optionText:'脈　拍'
        ,correctType:0);
    db.insertquestionoption(qo816);
    QuestionOption qo817 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,optionCd:'c'
        ,optionText:'血　圧'
        ,correctType:0);
    db.insertquestionoption(qo817);
    QuestionOption qo818 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,optionCd:'d'
        ,optionText:'呼吸数'
        ,correctType:1);
    db.insertquestionoption(qo818);
    QuestionOption qo819 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,optionCd:'e'
        ,optionText:'体　温'
        ,correctType:0);
    db.insertquestionoption(qo819);
    QuestionOption qo820 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,optionCd:'a'
        ,optionText:'ビタミンB12投与'
        ,correctType:0);
    db.insertquestionoption(qo820);
    QuestionOption qo821 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,optionCd:'b'
        ,optionText:'降圧薬投与'
        ,correctType:0);
    db.insertquestionoption(qo821);
    QuestionOption qo822 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,optionCd:'c'
        ,optionText:'止血薬投与'
        ,correctType:0);
    db.insertquestionoption(qo822);
    QuestionOption qo823 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,optionCd:'d'
        ,optionText:'早期手術'
        ,correctType:1);
    db.insertquestionoption(qo823);
    QuestionOption qo824 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,optionCd:'e'
        ,optionText:'待機手術'
        ,correctType:0);
    db.insertquestionoption(qo824);
    QuestionOption qo825 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,optionCd:'a'
        ,optionText:'自宅待機'
        ,correctType:0);
    db.insertquestionoption(qo825);
    QuestionOption qo826 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,optionCd:'b'
        ,optionText:'抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo826);
    QuestionOption qo827 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,optionCd:'c'
        ,optionText:'入院経過観察'
        ,correctType:1);
    db.insertquestionoption(qo827);
    QuestionOption qo828 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,optionCd:'d'
        ,optionText:'分娩促進薬投与'
        ,correctType:0);
    db.insertquestionoption(qo828);
    QuestionOption qo829 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,optionCd:'e'
        ,optionText:'子宮収縮抑制薬投与'
        ,correctType:0);
    db.insertquestionoption(qo829);
    QuestionOption qo830 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,optionCd:'a'
        ,optionText:'呼気終末二酸化炭素濃度〈EtCO2〉が上昇するのを確認した。'
        ,correctType:1);
    db.insertquestionoption(qo830);
    QuestionOption qo831 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,optionCd:'b'
        ,optionText:'気管チューブが水蒸気で曇るのを視認した。'
        ,correctType:0);
    db.insertquestionoption(qo831);
    QuestionOption qo832 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,optionCd:'c'
        ,optionText:'視診で吸気に胸郭が上昇するのを確認した。'
        ,correctType:0);
    db.insertquestionoption(qo832);
    QuestionOption qo833 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,optionCd:'d'
        ,optionText:'触診で甲状軟骨下にカフを触知した。'
        ,correctType:0);
    db.insertquestionoption(qo833);
    QuestionOption qo834 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,optionCd:'e'
        ,optionText:'聴診で呼吸音を聴取した。'
        ,correctType:0);
    db.insertquestionoption(qo834);
    QuestionOption qo835 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,optionCd:'a'
        ,optionText:'「風疹の先天感染が疑われます」'
        ,correctType:0);
    db.insertquestionoption(qo835);
    QuestionOption qo836 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,optionCd:'b'
        ,optionText:'「感染初期の梅毒が疑われます」'
        ,correctType:1);
    db.insertquestionoption(qo836);
    QuestionOption qo837 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,optionCd:'c'
        ,optionText:'「妊娠中期以降に梅毒の治療が必要となります」'
        ,correctType:0);
    db.insertquestionoption(qo837);
    QuestionOption qo838 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,optionCd:'d'
        ,optionText:'「念のためにサイトメガロウイルスの抗体価を再検査しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo838);
    QuestionOption qo839 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,optionCd:'e'
        ,optionText:'「今回の妊娠では先天性サイトメガロウイルス感染症の可能性はありません」'
        ,correctType:0);
    db.insertquestionoption(qo839);
    QuestionOption qo840 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,optionCd:'a'
        ,optionText:'介護医療院'
        ,correctType:0);
    db.insertquestionoption(qo840);
    QuestionOption qo841 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,optionCd:'b'
        ,optionText:'医療療養病床'
        ,correctType:0);
    db.insertquestionoption(qo841);
    QuestionOption qo842 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,optionCd:'c'
        ,optionText:'短期入所生活介護'
        ,correctType:0);
    db.insertquestionoption(qo842);
    QuestionOption qo843 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,optionCd:'d'
        ,optionText:'介護老人福祉施設'
        ,correctType:0);
    db.insertquestionoption(qo843);
    QuestionOption qo844 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,optionCd:'e'
        ,optionText:'介護老人保健施設'
        ,correctType:1);
    db.insertquestionoption(qo844);
    QuestionOption qo845 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,optionCd:'a'
        ,optionText:'エピネフリン加生理食塩液散布'
        ,correctType:0);
    db.insertquestionoption(qo845);
    QuestionOption qo846 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,optionCd:'b'
        ,optionText:'プロトンポンプ阻害薬散布'
        ,correctType:0);
    db.insertquestionoption(qo846);
    QuestionOption qo847 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,optionCd:'c'
        ,optionText:'トロンビン静注'
        ,correctType:0);
    db.insertquestionoption(qo847);
    QuestionOption qo848 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,optionCd:'d'
        ,optionText:'クリッピング'
        ,correctType:1);
    db.insertquestionoption(qo848);
    QuestionOption qo849 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,optionCd:'e'
        ,optionText:'冷水で洗浄'
        ,correctType:0);
    db.insertquestionoption(qo849);
    QuestionOption qo850 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,optionCd:'a'
        ,optionText:'C3低値'
        ,correctType:1);
    db.insertquestionoption(qo850);
    QuestionOption qo851 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,optionCd:'b'
        ,optionText:'抗ARS抗体陽性'
        ,correctType:0);
    db.insertquestionoption(qo851);
    QuestionOption qo852 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,optionCd:'c'
        ,optionText:'MPO-ANCA陽性'
        ,correctType:0);
    db.insertquestionoption(qo852);
    QuestionOption qo853 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,optionCd:'d'
        ,optionText:'抗Scl-70抗体陽性'
        ,correctType:0);
    db.insertquestionoption(qo853);
    QuestionOption qo854 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,optionCd:'e'
        ,optionText:'リウマトイド因子陽性'
        ,correctType:0);
    db.insertquestionoption(qo854);
    QuestionOption qo855 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,optionCd:'a'
        ,optionText:'家族会を紹介する。'
        ,correctType:1);
    db.insertquestionoption(qo855);
    QuestionOption qo856 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,optionCd:'b'
        ,optionText:'抗精神病薬を処方する。'
        ,correctType:0);
    db.insertquestionoption(qo856);
    QuestionOption qo857 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,optionCd:'c'
        ,optionText:'しばらく様子をみるように勧める。'
        ,correctType:0);
    db.insertquestionoption(qo857);
    QuestionOption qo858 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,optionCd:'d'
        ,optionText:'気持ちが落ち着いたら来院するよう指示する。'
        ,correctType:0);
    db.insertquestionoption(qo858);
    QuestionOption qo859 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,optionCd:'e'
        ,optionText:'なるべく子どものことは考えないように指導する。'
        ,correctType:0);
    db.insertquestionoption(qo859);
    QuestionOption qo860 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,optionCd:'a'
        ,optionText:'KL-6上昇'
        ,correctType:0);
    db.insertquestionoption(qo860);
    QuestionOption qo861 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,optionCd:'b'
        ,optionText:'肺活量低下'
        ,correctType:0);
    db.insertquestionoption(qo861);
    QuestionOption qo862 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,optionCd:'c'
        ,optionText:'LD 380 U/L'
        ,correctType:0);
    db.insertquestionoption(qo862);
    QuestionOption qo863 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,optionCd:'d'
        ,optionText:'PaCO2 52 Torr'
        ,correctType:0);
    db.insertquestionoption(qo863);
    QuestionOption qo864 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,optionCd:'e'
        ,optionText:'FEV1.0％低下'
        ,correctType:1);
    db.insertquestionoption(qo864);
    QuestionOption qo865 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,optionCd:'a'
        ,optionText:'ドパミンアゴニスト療法'
        ,correctType:1);
    db.insertquestionoption(qo865);
    QuestionOption qo866 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,optionCd:'b'
        ,optionText:'エストロゲン補充療法'
        ,correctType:0);
    db.insertquestionoption(qo866);
    QuestionOption qo867 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,optionCd:'c'
        ,optionText:'ゴナドトロピン療法'
        ,correctType:0);
    db.insertquestionoption(qo867);
    QuestionOption qo868 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,optionCd:'d'
        ,optionText:'クロミフェン療法'
        ,correctType:0);
    db.insertquestionoption(qo868);
    QuestionOption qo869 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,optionCd:'e'
        ,optionText:'下垂体腺腫摘出術'
        ,correctType:0);
    db.insertquestionoption(qo869);
    QuestionOption qo870 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,optionCd:'a'
        ,optionText:'ケタミンを使用する。'
        ,correctType:0);
    db.insertquestionoption(qo870);
    QuestionOption qo871 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,optionCd:'b'
        ,optionText:'モルヒネを増量する。'
        ,correctType:1);
    db.insertquestionoption(qo871);
    QuestionOption qo872 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,optionCd:'c'
        ,optionText:'モルヒネを減量する。'
        ,correctType:0);
    db.insertquestionoption(qo872);
    QuestionOption qo873 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,optionCd:'d'
        ,optionText:'モルヒネを点滴静注する。'
        ,correctType:0);
    db.insertquestionoption(qo873);
    QuestionOption qo874 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,optionCd:'e'
        ,optionText:'モルヒネをNSAIDに変更する。'
        ,correctType:0);
    db.insertquestionoption(qo874);
    QuestionOption qo875 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,optionCd:'a'
        ,optionText:'子宮内避妊器具〈IUD〉'
        ,correctType:0);
    db.insertquestionoption(qo875);
    QuestionOption qo876 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,optionCd:'b'
        ,optionText:'低用量経口避妊薬'
        ,correctType:1);
    db.insertquestionoption(qo876);
    QuestionOption qo877 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,optionCd:'c'
        ,optionText:'基礎体温法'
        ,correctType:0);
    db.insertquestionoption(qo877);
    QuestionOption qo878 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,optionCd:'d'
        ,optionText:'殺精子薬'
        ,correctType:0);
    db.insertquestionoption(qo878);
    QuestionOption qo879 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,optionCd:'e'
        ,optionText:'オギノ式'
        ,correctType:0);
    db.insertquestionoption(qo879);
    QuestionOption qo880 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,optionCd:'a'
        ,optionText:'胃底腺ポリープが多発している。'
        ,correctType:0);
    db.insertquestionoption(qo880);
    QuestionOption qo881 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,optionCd:'b'
        ,optionText:'胃粘膜全体に点状発赤がある。'
        ,correctType:1);
    db.insertquestionoption(qo881);
    QuestionOption qo882 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,optionCd:'c'
        ,optionText:'胃角部小弯にニッシェがある。'
        ,correctType:0);
    db.insertquestionoption(qo882);
    QuestionOption qo883 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,optionCd:'d'
        ,optionText:'十二指腸に腫瘤性病変がある。'
        ,correctType:0);
    db.insertquestionoption(qo883);
    QuestionOption qo884 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,optionCd:'e'
        ,optionText:'十二指腸にポリープがある。'
        ,correctType:0);
    db.insertquestionoption(qo884);
    QuestionOption qo885 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,optionCd:'a'
        ,optionText:'通販サイトへのアクセス'
        ,correctType:0);
    db.insertquestionoption(qo885);
    QuestionOption qo886 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,optionCd:'b'
        ,optionText:'知人への電子メール'
        ,correctType:0);
    db.insertquestionoption(qo886);
    QuestionOption qo887 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,optionCd:'c'
        ,optionText:'弁護士への電話'
        ,correctType:1);
    db.insertquestionoption(qo887);
    QuestionOption qo888 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,optionCd:'d'
        ,optionText:'知人への手紙'
        ,correctType:1);
    db.insertquestionoption(qo888);
    QuestionOption qo889 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,optionCd:'e'
        ,optionText:'家族との面会'
        ,correctType:0);
    db.insertquestionoption(qo889);
    QuestionOption qo890 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,optionCd:'a'
        ,optionText:'身体症状が出たら業務を軽減するように伝える。'
        ,correctType:0);
    db.insertquestionoption(qo890);
    QuestionOption qo891 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,optionCd:'b'
        ,optionText:'事業主に業務軽減の必要性を伝える。'
        ,correctType:1);
    db.insertquestionoption(qo891);
    QuestionOption qo892 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,optionCd:'c'
        ,optionText:'心疾患のスクリーニング検査を行う。'
        ,correctType:0);
    db.insertquestionoption(qo892);
    QuestionOption qo893 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,optionCd:'d'
        ,optionText:'適切に年次休暇をとるように勧める。'
        ,correctType:1);
    db.insertquestionoption(qo893);
    QuestionOption qo894 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,optionCd:'e'
        ,optionText:'職場の配置転換を行う。'
        ,correctType:0);
    db.insertquestionoption(qo894);
    QuestionOption qo895 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,optionCd:'a'
        ,optionText:'非開放性の右大腿骨骨折の患者'
        ,correctType:0);
    db.insertquestionoption(qo895);
    QuestionOption qo896 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,optionCd:'b'
        ,optionText:'非開放性の橈骨遠位端骨折の患者'
        ,correctType:0);
    db.insertquestionoption(qo896);
    QuestionOption qo897 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,optionCd:'c'
        ,optionText:'転位の大きい非開放性の鎖骨骨折の患者'
        ,correctType:0);
    db.insertquestionoption(qo897);
    QuestionOption qo898 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,optionCd:'d'
        ,optionText:'厚さ2.5 cmの側頭部急性硬膜外血腫の患者'
        ,correctType:1);
    db.insertquestionoption(qo898);
    QuestionOption qo899 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,optionCd:'e'
        ,optionText:'CTで造影剤が腹腔内に漏出している患者'
        ,correctType:1);
    db.insertquestionoption(qo899);
    QuestionOption qo900 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,optionCd:'a'
        ,optionText:'市町村に通報する。'
        ,correctType:1);
    db.insertquestionoption(qo900);
    QuestionOption qo901 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,optionCd:'b'
        ,optionText:'肋骨固定帯を装着する。'
        ,correctType:0);
    db.insertquestionoption(qo901);
    QuestionOption qo902 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,optionCd:'c'
        ,optionText:'入院の上，精査を行う。'
        ,correctType:1);
    db.insertquestionoption(qo902);
    QuestionOption qo903 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,optionCd:'d'
        ,optionText:'養介護施設に入所させる。'
        ,correctType:0);
    db.insertquestionoption(qo903);
    QuestionOption qo904 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,optionCd:'e'
        ,optionText:'家族に虐待の有無を問いただす。'
        ,correctType:0);
    db.insertquestionoption(qo904);
    QuestionOption qo905 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,optionCd:'a'
        ,optionText:'骨髄炎'
        ,correctType:1);
    db.insertquestionoption(qo905);
    QuestionOption qo906 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,optionCd:'b'
        ,optionText:'外傷性刺青'
        ,correctType:0);
    db.insertquestionoption(qo906);
    QuestionOption qo907 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,optionCd:'c'
        ,optionText:'脂肪塞栓症'
        ,correctType:1);
    db.insertquestionoption(qo907);
    QuestionOption qo908 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,optionCd:'d'
        ,optionText:'慢性硬膜下血腫'
        ,correctType:0);
    db.insertquestionoption(qo908);
    QuestionOption qo909 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,optionCd:'e'
        ,optionText:'内頸動脈海綿静脈洞瘻'
        ,correctType:0);
    db.insertquestionoption(qo909);
    QuestionOption qo910 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,optionCd:'a'
        ,optionText:'ホスピス'
        ,correctType:0);
    db.insertquestionoption(qo910);
    QuestionOption qo911 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,optionCd:'b'
        ,optionText:'他の診療所'
        ,correctType:0);
    db.insertquestionoption(qo911);
    QuestionOption qo912 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,optionCd:'c'
        ,optionText:'特定機能病院'
        ,correctType:1);
    db.insertquestionoption(qo912);
    QuestionOption qo913 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,optionCd:'d'
        ,optionText:'地域医療支援病院'
        ,correctType:1);
    db.insertquestionoption(qo913);
    QuestionOption qo914 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,optionCd:'e'
        ,optionText:'高度救命救急センター'
        ,correctType:0);
    db.insertquestionoption(qo914);
    QuestionOption qo915 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,optionCd:'a'
        ,optionText:'傍食道胃血管郭清術〈Hassab手術〉'
        ,correctType:1);
    db.insertquestionoption(qo915);
    QuestionOption qo916 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,optionCd:'b'
        ,optionText:'副腎皮質ステロイド投与'
        ,correctType:0);
    db.insertquestionoption(qo916);
    QuestionOption qo917 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,optionCd:'c'
        ,optionText:'内視鏡的硬化療法'
        ,correctType:1);
    db.insertquestionoption(qo917);
    QuestionOption qo918 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,optionCd:'d'
        ,optionText:'リバビリン投与'
        ,correctType:0);
    db.insertquestionoption(qo918);
    QuestionOption qo919 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,optionCd:'e'
        ,optionText:'ヘパリン投与'
        ,correctType:0);
    db.insertquestionoption(qo919);
    QuestionOption qo920 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,optionCd:'a'
        ,optionText:'Auer小体'
        ,correctType:0);
    db.insertquestionoption(qo920);
    QuestionOption qo921 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,optionCd:'b'
        ,optionText:'環状鉄芽球'
        ,correctType:1);
    db.insertquestionoption(qo921);
    QuestionOption qo922 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,optionCd:'c'
        ,optionText:'Howell-Jolly小体'
        ,correctType:1);
    db.insertquestionoption(qo922);
    QuestionOption qo923 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,optionCd:'d'
        ,optionText:'花弁状核リンパ球'
        ,correctType:0);
    db.insertquestionoption(qo923);
    QuestionOption qo924 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,optionCd:'e'
        ,optionText:'Reed-Sternberg細胞'
        ,correctType:0);
    db.insertquestionoption(qo924);
    QuestionOption qo925 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,optionCd:'a'
        ,optionText:'無効造血'
        ,correctType:1);
    db.insertquestionoption(qo925);
    QuestionOption qo926 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,optionCd:'b'
        ,optionText:'骨髄線維化'
        ,correctType:0);
    db.insertquestionoption(qo926);
    QuestionOption qo927 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,optionCd:'c'
        ,optionText:'急性白血病'
        ,correctType:0);
    db.insertquestionoption(qo927);
    QuestionOption qo928 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,optionCd:'d'
        ,optionText:'溶血性貧血'
        ,correctType:0);
    db.insertquestionoption(qo928);
    QuestionOption qo929 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,optionCd:'e'
        ,optionText:'貯蔵鉄欠乏'
        ,correctType:0);
    db.insertquestionoption(qo929);
    QuestionOption qo930 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,optionCd:'a'
        ,optionText:'照射赤血球液輸血'
        ,correctType:1);
    db.insertquestionoption(qo930);
    QuestionOption qo931 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,optionCd:'b'
        ,optionText:'鉄キレート剤投与'
        ,correctType:0);
    db.insertquestionoption(qo931);
    QuestionOption qo932 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,optionCd:'c'
        ,optionText:'シクロスポリン投与'
        ,correctType:0);
    db.insertquestionoption(qo932);
    QuestionOption qo933 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,optionCd:'d'
        ,optionText:'副腎皮質ステロイド投与'
        ,correctType:0);
    db.insertquestionoption(qo933);
    QuestionOption qo934 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,optionCd:'e'
        ,optionText:'抗胸腺細胞グロブリン投与'
        ,correctType:0);
    db.insertquestionoption(qo934);
    QuestionOption qo935 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,optionCd:'a'
        ,optionText:'脳出血'
        ,correctType:0);
    db.insertquestionoption(qo935);
    QuestionOption qo936 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,optionCd:'b'
        ,optionText:'海馬硬化'
        ,correctType:0);
    db.insertquestionoption(qo936);
    QuestionOption qo937 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,optionCd:'c'
        ,optionText:'ラクナ梗塞'
        ,correctType:0);
    db.insertquestionoption(qo937);
    QuestionOption qo938 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,optionCd:'d'
        ,optionText:'尾状核の萎縮'
        ,correctType:0);
    db.insertquestionoption(qo938);
    QuestionOption qo939 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,optionCd:'e'
        ,optionText:'flow voidの増生'
        ,correctType:1);
    db.insertquestionoption(qo939);
    QuestionOption qo940 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,optionCd:'a'
        ,optionText:'PaO2上昇'
        ,correctType:0);
    db.insertquestionoption(qo940);
    QuestionOption qo941 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,optionCd:'b'
        ,optionText:'PaCO2低下'
        ,correctType:1);
    db.insertquestionoption(qo941);
    QuestionOption qo942 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,optionCd:'c'
        ,optionText:'精神的興奮'
        ,correctType:0);
    db.insertquestionoption(qo942);
    QuestionOption qo943 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,optionCd:'d'
        ,optionText:'インスリン分泌'
        ,correctType:0);
    db.insertquestionoption(qo943);
    QuestionOption qo944 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,optionCd:'e'
        ,optionText:'ケトアシドーシス'
        ,correctType:0);
    db.insertquestionoption(qo944);
    QuestionOption qo945 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,optionCd:'a'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo945);
    QuestionOption qo946 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,optionCd:'b'
        ,optionText:'血行再建術'
        ,correctType:1);
    db.insertquestionoption(qo946);
    QuestionOption qo947 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,optionCd:'c'
        ,optionText:'血栓溶解療法'
        ,correctType:0);
    db.insertquestionoption(qo947);
    QuestionOption qo948 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,optionCd:'d'
        ,optionText:'ワルファリン投与'
        ,correctType:0);
    db.insertquestionoption(qo948);
    QuestionOption qo949 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,optionCd:'e'
        ,optionText:'メチルフェニデート投与'
        ,correctType:0);
    db.insertquestionoption(qo949);
    QuestionOption qo950 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,optionCd:'a'
        ,optionText:'低電位'
        ,correctType:1);
    db.insertquestionoption(qo950);
    QuestionOption qo951 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,optionCd:'b'
        ,optionText:'デルタ波'
        ,correctType:0);
    db.insertquestionoption(qo951);
    QuestionOption qo952 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,optionCd:'c'
        ,optionText:'左室肥大'
        ,correctType:0);
    db.insertquestionoption(qo952);
    QuestionOption qo953 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,optionCd:'d'
        ,optionText:'QT時間短縮'
        ,correctType:0);
    db.insertquestionoption(qo953);
    QuestionOption qo954 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,optionCd:'e'
        ,optionText:'右脚ブロック'
        ,correctType:0);
    db.insertquestionoption(qo954);
    QuestionOption qo955 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,optionCd:'a'
        ,optionText:'プロラクチン'
        ,correctType:1);
    db.insertquestionoption(qo955);
    QuestionOption qo956 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,optionCd:'b'
        ,optionText:'カルシトニン'
        ,correctType:0);
    db.insertquestionoption(qo956);
    QuestionOption qo957 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,optionCd:'c'
        ,optionText:'ACTH'
        ,correctType:0);
    db.insertquestionoption(qo957);
    QuestionOption qo958 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,optionCd:'d'
        ,optionText:'TSH'
        ,correctType:1);
    db.insertquestionoption(qo958);
    QuestionOption qo959 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,optionCd:'e'
        ,optionText:'FT4'
        ,correctType:0);
    db.insertquestionoption(qo959);
    QuestionOption qo960 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,optionCd:'a'
        ,optionText:'開頭術'
        ,correctType:0);
    db.insertquestionoption(qo960);
    QuestionOption qo961 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,optionCd:'b'
        ,optionText:'生理食塩液輸液'
        ,correctType:0);
    db.insertquestionoption(qo961);
    QuestionOption qo962 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,optionCd:'c'
        ,optionText:'甲状腺ホルモン投与'
        ,correctType:1);
    db.insertquestionoption(qo962);
    QuestionOption qo963 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,optionCd:'d'
        ,optionText:'ドパミン受容体刺激薬投与'
        ,correctType:0);
    db.insertquestionoption(qo963);
    QuestionOption qo964 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,optionCd:'e'
        ,optionText:'コリンエステラーゼ阻害薬投与'
        ,correctType:0);
    db.insertquestionoption(qo964);
    QuestionOption qo965 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,optionCd:'a'
        ,optionText:'肝'
        ,correctType:1);
    db.insertquestionoption(qo965);
    QuestionOption qo966 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,optionCd:'b'
        ,optionText:'胃'
        ,correctType:0);
    db.insertquestionoption(qo966);
    QuestionOption qo967 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,optionCd:'c'
        ,optionText:'脾'
        ,correctType:0);
    db.insertquestionoption(qo967);
    QuestionOption qo968 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,optionCd:'d'
        ,optionText:'膵'
        ,correctType:1);
    db.insertquestionoption(qo968);
    QuestionOption qo969 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,optionCd:'e'
        ,optionText:'胆　囊'
        ,correctType:0);
    db.insertquestionoption(qo969);
    QuestionOption qo970 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,optionCd:'a'
        ,optionText:'輸　液'
        ,correctType:1);
    db.insertquestionoption(qo970);
    QuestionOption qo971 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,optionCd:'b'
        ,optionText:'創洗浄'
        ,correctType:1);
    db.insertquestionoption(qo971);
    QuestionOption qo972 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,optionCd:'c'
        ,optionText:'気管挿管'
        ,correctType:0);
    db.insertquestionoption(qo972);
    QuestionOption qo973 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,optionCd:'d'
        ,optionText:'降圧薬投与'
        ,correctType:0);
    db.insertquestionoption(qo973);
    QuestionOption qo974 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,optionCd:'e'
        ,optionText:'ジアゼパム投与'
        ,correctType:0);
    db.insertquestionoption(qo974);
    QuestionOption qo975 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,optionCd:'a'
        ,optionText:'腎摘出'
        ,correctType:0);
    db.insertquestionoption(qo975);
    QuestionOption qo976 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,optionCd:'b'
        ,optionText:'人工透析'
        ,correctType:0);
    db.insertquestionoption(qo976);
    QuestionOption qo977 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,optionCd:'c'
        ,optionText:'腎瘻造設'
        ,correctType:0);
    db.insertquestionoption(qo977);
    QuestionOption qo978 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,optionCd:'d'
        ,optionText:'保存的治療'
        ,correctType:1);
    db.insertquestionoption(qo978);
    QuestionOption qo979 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,optionCd:'e'
        ,optionText:'腎動脈塞栓術'
        ,correctType:0);
    db.insertquestionoption(qo979);
    QuestionOption qo980 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,optionCd:'a'
        ,optionText:'術後出血'
        ,correctType:0);
    db.insertquestionoption(qo980);
    QuestionOption qo981 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,optionCd:'b'
        ,optionText:'縫合不全'
        ,correctType:1);
    db.insertquestionoption(qo981);
    QuestionOption qo982 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,optionCd:'c'
        ,optionText:'リンパ漏'
        ,correctType:0);
    db.insertquestionoption(qo982);
    QuestionOption qo983 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,optionCd:'d'
        ,optionText:'肺血栓塞栓症'
        ,correctType:0);
    db.insertquestionoption(qo983);
    QuestionOption qo984 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,optionCd:'e'
        ,optionText:'直腸癌局所再発'
        ,correctType:0);
    db.insertquestionoption(qo984);
    QuestionOption qo985 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,optionCd:'a'
        ,optionText:'追加切除術'
        ,correctType:0);
    db.insertquestionoption(qo985);
    QuestionOption qo986 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,optionCd:'b'
        ,optionText:'絶飲食管理'
        ,correctType:1);
    db.insertquestionoption(qo986);
    QuestionOption qo987 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,optionCd:'c'
        ,optionText:'血管内治療'
        ,correctType:0);
    db.insertquestionoption(qo987);
    QuestionOption qo988 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,optionCd:'d'
        ,optionText:'抗凝固薬治療'
        ,correctType:0);
    db.insertquestionoption(qo988);
    QuestionOption qo989 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,optionCd:'e'
        ,optionText:'オクトレオチド製剤'
        ,correctType:0);
    db.insertquestionoption(qo989);
    QuestionOption qo990 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,optionCd:'a'
        ,optionText:'大腸全摘術'
        ,correctType:0);
    db.insertquestionoption(qo990);
    QuestionOption qo991 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,optionCd:'b'
        ,optionText:'抗菌薬変更'
        ,correctType:0);
    db.insertquestionoption(qo991);
    QuestionOption qo992 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,optionCd:'c'
        ,optionText:'現行加療継続'
        ,correctType:0);
    db.insertquestionoption(qo992);
    QuestionOption qo993 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,optionCd:'d'
        ,optionText:'人工肛門造設術'
        ,correctType:1);
    db.insertquestionoption(qo993);
    QuestionOption qo994 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,optionCd:'e'
        ,optionText:'CTガイド下ドレナージ'
        ,correctType:0);
    db.insertquestionoption(qo994);
    QuestionOption qo995 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,optionCd:'a'
        ,optionText:'アロプリノール'
        ,correctType:0);
    db.insertquestionoption(qo995);
    QuestionOption qo996 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,optionCd:'b'
        ,optionText:'セファゾリン'
        ,correctType:0);
    db.insertquestionoption(qo996);
    QuestionOption qo997 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,optionCd:'c'
        ,optionText:'フロセミド'
        ,correctType:1);
    db.insertquestionoption(qo997);
    QuestionOption qo998 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,optionCd:'d'
        ,optionText:'アスピリン'
        ,correctType:0);
    db.insertquestionoption(qo998);
    QuestionOption qo999 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,optionCd:'e'
        ,optionText:'スタチン'
        ,correctType:0);
    db.insertquestionoption(qo999);
    QuestionOption qo1000 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,optionCd:'a'
        ,optionText:'妊娠悪阻'
        ,correctType:0);
    db.insertquestionoption(qo1000);
    QuestionOption qo1001 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,optionCd:'b'
        ,optionText:'妊娠糖尿病'
        ,correctType:0);
    db.insertquestionoption(qo1001);
    QuestionOption qo1002 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,optionCd:'c'
        ,optionText:'絨毛膜羊膜炎'
        ,correctType:1);
    db.insertquestionoption(qo1002);
    QuestionOption qo1003 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,optionCd:'d'
        ,optionText:'胎児発育不全'
        ,correctType:0);
    db.insertquestionoption(qo1003);
    QuestionOption qo1004 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,optionCd:'e'
        ,optionText:'妊娠高血圧症候群'
        ,correctType:0);
    db.insertquestionoption(qo1004);
    QuestionOption qo1005 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,optionCd:'a'
        ,optionText:'Donath-Landsteiner抗体増加'
        ,correctType:0);
    db.insertquestionoption(qo1005);
    QuestionOption qo1006 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,optionCd:'b'
        ,optionText:'ADAMTS-13活性低下'
        ,correctType:0);
    db.insertquestionoption(qo1006);
    QuestionOption qo1007 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,optionCd:'c'
        ,optionText:'GPIアンカー蛋白欠損'
        ,correctType:1);
    db.insertquestionoption(qo1007);
    QuestionOption qo1008 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,optionCd:'d'
        ,optionText:'ヘモグロビン合成障害'
        ,correctType:0);
    db.insertquestionoption(qo1008);
    QuestionOption qo1009 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,optionCd:'e'
        ,optionText:'ヘプシジン過剰産生'
        ,correctType:0);
    db.insertquestionoption(qo1009);
    QuestionOption qo1010 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,optionCd:'a'
        ,optionText:'ビタミンD'
        ,correctType:0);
    db.insertquestionoption(qo1010);
    QuestionOption qo1011 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,optionCd:'b'
        ,optionText:'カルシウム'
        ,correctType:0);
    db.insertquestionoption(qo1011);
    QuestionOption qo1012 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,optionCd:'c'
        ,optionText:'人工乳栄養'
        ,correctType:1);
    db.insertquestionoption(qo1012);
    QuestionOption qo1013 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,optionCd:'d'
        ,optionText:'日　光'
        ,correctType:0);
    db.insertquestionoption(qo1013);
    QuestionOption qo1014 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,optionCd:'e'
        ,optionText:'リ　ン'
        ,correctType:0);
    db.insertquestionoption(qo1014);
    QuestionOption qo1015 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,optionCd:'a'
        ,optionText:'リウマトイド因子陽性'
        ,correctType:0);
    db.insertquestionoption(qo1015);
    QuestionOption qo1016 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,optionCd:'b'
        ,optionText:'フェリチン高値'
        ,correctType:1);
    db.insertquestionoption(qo1016);
    QuestionOption qo1017 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,optionCd:'c'
        ,optionText:'抗核抗体陽性'
        ,correctType:0);
    db.insertquestionoption(qo1017);
    QuestionOption qo1018 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,optionCd:'d'
        ,optionText:'白血球減少'
        ,correctType:0);
    db.insertquestionoption(qo1018);
    QuestionOption qo1019 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,optionCd:'e'
        ,optionText:'血小板減少'
        ,correctType:0);
    db.insertquestionoption(qo1019);
    QuestionOption qo1020 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,optionCd:'a'
        ,optionText:'LD'
        ,correctType:0);
    db.insertquestionoption(qo1020);
    QuestionOption qo1021 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,optionCd:'b'
        ,optionText:'CRP'
        ,correctType:0);
    db.insertquestionoption(qo1021);
    QuestionOption qo1022 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,optionCd:'c'
        ,optionText:'AST'
        ,correctType:0);
    db.insertquestionoption(qo1022);
    QuestionOption qo1023 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,optionCd:'d'
        ,optionText:'γ-GT'
        ,correctType:0);
    db.insertquestionoption(qo1023);
    QuestionOption qo1024 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,optionCd:'e'
        ,optionText:'コリンエステラーゼ'
        ,correctType:1);
    db.insertquestionoption(qo1024);
    QuestionOption qo1025 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,optionCd:'a'
        ,optionText:'加齢黄斑変性 ―――― 管状視野'
        ,correctType:0);
    db.insertquestionoption(qo1025);
    QuestionOption qo1026 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,optionCd:'b'
        ,optionText:'網膜色素変性症 ―――― らせん状視野'
        ,correctType:0);
    db.insertquestionoption(qo1026);
    QuestionOption qo1027 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,optionCd:'c'
        ,optionText:'裂孔原性網膜剝離 ―――― 傍中心暗点'
        ,correctType:0);
    db.insertquestionoption(qo1027);
    QuestionOption qo1028 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,optionCd:'d'
        ,optionText:'網膜中心動脈閉塞症 ―――― 中心暗点'
        ,correctType:1);
    db.insertquestionoption(qo1028);
    QuestionOption qo1029 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,optionCd:'e'
        ,optionText:'網膜静脈分枝閉塞症 ―――― 輪状暗点'
        ,correctType:0);
    db.insertquestionoption(qo1029);
    QuestionOption qo1030 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,optionCd:'a'
        ,optionText:'出血が主訴として多い。'
        ,correctType:0);
    db.insertquestionoption(qo1030);
    QuestionOption qo1031 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,optionCd:'b'
        ,optionText:'嵌頓痔核は腫脹をきたす。'
        ,correctType:0);
    db.insertquestionoption(qo1031);
    QuestionOption qo1032 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,optionCd:'c'
        ,optionText:'便秘，座業などが原因となる。'
        ,correctType:0);
    db.insertquestionoption(qo1032);
    QuestionOption qo1033 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,optionCd:'d'
        ,optionText:'1時，5時，9時方向に好発する。'
        ,correctType:1);
    db.insertquestionoption(qo1033);
    QuestionOption qo1034 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,optionCd:'e'
        ,optionText:'外科的手術としてはMilligan-Morgan法がある。'
        ,correctType:0);
    db.insertquestionoption(qo1034);
    QuestionOption qo1035 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,optionCd:'a'
        ,optionText:'神経学的症候が悪化している小脳出血である。'
        ,correctType:1);
    db.insertquestionoption(qo1035);
    QuestionOption qo1036 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,optionCd:'b'
        ,optionText:'急性水頭症をきたしている視床出血である。'
        ,correctType:0);
    db.insertquestionoption(qo1036);
    QuestionOption qo1037 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,optionCd:'c'
        ,optionText:'意識レベルが深昏睡（JCSⅢ-300）である。'
        ,correctType:0);
    db.insertquestionoption(qo1037);
    QuestionOption qo1038 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,optionCd:'d'
        ,optionText:'血腫量が10 mL未満である。'
        ,correctType:0);
    db.insertquestionoption(qo1038);
    QuestionOption qo1039 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,optionCd:'e'
        ,optionText:'急性期の脳幹出血である。'
        ,correctType:0);
    db.insertquestionoption(qo1039);
    QuestionOption qo1040 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,optionCd:'a'
        ,optionText:'終診後に喫煙を再開した場合は直ちに受診できる。'
        ,correctType:0);
    db.insertquestionoption(qo1040);
    QuestionOption qo1041 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,optionCd:'b'
        ,optionText:'ニコチン代替療法を施行できる。'
        ,correctType:1);
    db.insertquestionoption(qo1041);
    QuestionOption qo1042 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,optionCd:'c'
        ,optionText:'どんな医療機関でも設置できる。'
        ,correctType:0);
    db.insertquestionoption(qo1042);
    QuestionOption qo1043 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,optionCd:'d'
        ,optionText:'どんな受診者でも受療できる。'
        ,correctType:0);
    db.insertquestionoption(qo1043);
    QuestionOption qo1044 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,optionCd:'e'
        ,optionText:'受診回数に制限はない。'
        ,correctType:0);
    db.insertquestionoption(qo1044);
    QuestionOption qo1045 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,optionCd:'a'
        ,optionText:'子宮内膜症'
        ,correctType:1);
    db.insertquestionoption(qo1045);
    QuestionOption qo1046 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,optionCd:'b'
        ,optionText:'子宮形態異常'
        ,correctType:0);
    db.insertquestionoption(qo1046);
    QuestionOption qo1047 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,optionCd:'c'
        ,optionText:'甲状腺機能低下症'
        ,correctType:0);
    db.insertquestionoption(qo1047);
    QuestionOption qo1048 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,optionCd:'d'
        ,optionText:'プロテインS欠乏症'
        ,correctType:0);
    db.insertquestionoption(qo1048);
    QuestionOption qo1049 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,optionCd:'e'
        ,optionText:'抗リン脂質抗体症候群'
        ,correctType:0);
    db.insertquestionoption(qo1049);
    QuestionOption qo1050 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo1050);
    QuestionOption qo1051 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:0);
    db.insertquestionoption(qo1051);
    QuestionOption qo1052 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:0);
    db.insertquestionoption(qo1052);
    QuestionOption qo1053 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:1);
    db.insertquestionoption(qo1053);
    QuestionOption qo1054 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo1054);
    QuestionOption qo1055 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,optionCd:'a'
        ,optionText:'口唇の血痂'
        ,correctType:1);
    db.insertquestionoption(qo1055);
    QuestionOption qo1056 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,optionCd:'b'
        ,optionText:'結節性紅斑'
        ,correctType:0);
    db.insertquestionoption(qo1056);
    QuestionOption qo1057 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,optionCd:'c'
        ,optionText:'結膜炎'
        ,correctType:0);
    db.insertquestionoption(qo1057);
    QuestionOption qo1058 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,optionCd:'d'
        ,optionText:'低体温'
        ,correctType:0);
    db.insertquestionoption(qo1058);
    QuestionOption qo1059 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,optionCd:'e'
        ,optionText:'脱　毛'
        ,correctType:0);
    db.insertquestionoption(qo1059);
    QuestionOption qo1060 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,optionCd:'a'
        ,optionText:'頸　椎'
        ,correctType:0);
    db.insertquestionoption(qo1060);
    QuestionOption qo1061 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,optionCd:'b'
        ,optionText:'上腕骨近位部'
        ,correctType:1);
    db.insertquestionoption(qo1061);
    QuestionOption qo1062 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,optionCd:'c'
        ,optionText:'腰　椎'
        ,correctType:0);
    db.insertquestionoption(qo1062);
    QuestionOption qo1063 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,optionCd:'d'
        ,optionText:'骨　盤'
        ,correctType:0);
    db.insertquestionoption(qo1063);
    QuestionOption qo1064 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,optionCd:'e'
        ,optionText:'脛骨近位部'
        ,correctType:1);
    db.insertquestionoption(qo1064);
    QuestionOption qo1065 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,optionCd:'a'
        ,optionText:'保存的治療が第一選択である。'
        ,correctType:0);
    db.insertquestionoption(qo1065);
    QuestionOption qo1066 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,optionCd:'b'
        ,optionText:'呼吸器感染を繰り返しやすい。'
        ,correctType:1);
    db.insertquestionoption(qo1066);
    QuestionOption qo1067 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,optionCd:'c'
        ,optionText:'気管支動脈に栄養される。'
        ,correctType:0);
    db.insertquestionoption(qo1067);
    QuestionOption qo1068 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,optionCd:'d'
        ,optionText:'低出生体重児に好発する。'
        ,correctType:0);
    db.insertquestionoption(qo1068);
    QuestionOption qo1069 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,optionCd:'e'
        ,optionText:'下葉に好発する。'
        ,correctType:1);
    db.insertquestionoption(qo1069);
    QuestionOption qo1070 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,optionCd:'a'
        ,optionText:'レチノイン酸受容体'
        ,correctType:0);
    db.insertquestionoption(qo1070);
    QuestionOption qo1071 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,optionCd:'b'
        ,optionText:'チロシンキナーゼ'
        ,correctType:1);
    db.insertquestionoption(qo1071);
    QuestionOption qo1072 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,optionCd:'c'
        ,optionText:'プロテアソーム'
        ,correctType:0);
    db.insertquestionoption(qo1072);
    QuestionOption qo1073 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,optionCd:'d'
        ,optionText:'mTOR'
        ,correctType:0);
    db.insertquestionoption(qo1073);
    QuestionOption qo1074 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,optionCd:'e'
        ,optionText:'CD 20'
        ,correctType:0);
    db.insertquestionoption(qo1074);
    QuestionOption qo1075 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,optionCd:'a'
        ,optionText:'リン酸アンモニウムマグネシウム'
        ,correctType:0);
    db.insertquestionoption(qo1075);
    QuestionOption qo1076 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,optionCd:'b'
        ,optionText:'シュウ酸カルシウム'
        ,correctType:0);
    db.insertquestionoption(qo1076);
    QuestionOption qo1077 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,optionCd:'c'
        ,optionText:'リン酸カルシウム'
        ,correctType:0);
    db.insertquestionoption(qo1077);
    QuestionOption qo1078 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,optionCd:'d'
        ,optionText:'間接ビリルビン'
        ,correctType:0);
    db.insertquestionoption(qo1078);
    QuestionOption qo1079 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,optionCd:'e'
        ,optionText:'尿　酸'
        ,correctType:1);
    db.insertquestionoption(qo1079);
    QuestionOption qo1080 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,optionCd:'a'
        ,optionText:'肛門ポリープ'
        ,correctType:0);
    db.insertquestionoption(qo1080);
    QuestionOption qo1081 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,optionCd:'b'
        ,optionText:'直腸癌'
        ,correctType:0);
    db.insertquestionoption(qo1081);
    QuestionOption qo1082 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,optionCd:'c'
        ,optionText:'肛門癌'
        ,correctType:0);
    db.insertquestionoption(qo1082);
    QuestionOption qo1083 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,optionCd:'d'
        ,optionText:'直腸脱'
        ,correctType:1);
    db.insertquestionoption(qo1083);
    QuestionOption qo1084 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,optionCd:'e'
        ,optionText:'脱　肛'
        ,correctType:0);
    db.insertquestionoption(qo1084);
    QuestionOption qo1085 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,optionCd:'a'
        ,optionText:'粟粒結核'
        ,correctType:1);
    db.insertquestionoption(qo1085);
    QuestionOption qo1086 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,optionCd:'b'
        ,optionText:'レジオネラ肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1086);
    QuestionOption qo1087 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,optionCd:'c'
        ,optionText:'急性間質性肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1087);
    QuestionOption qo1088 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,optionCd:'d'
        ,optionText:'Goodpasture症候群'
        ,correctType:0);
    db.insertquestionoption(qo1088);
    QuestionOption qo1089 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,optionCd:'e'
        ,optionText:'多発血管炎性肉芽腫症〈Wegener肉芽腫症〉'
        ,correctType:0);
    db.insertquestionoption(qo1089);
    QuestionOption qo1090 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,optionCd:'a'
        ,optionText:'アミロイドアンギオパチー'
        ,correctType:0);
    db.insertquestionoption(qo1090);
    QuestionOption qo1091 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,optionCd:'b'
        ,optionText:'内頸動脈海綿静脈洞瘻'
        ,correctType:0);
    db.insertquestionoption(qo1091);
    QuestionOption qo1092 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,optionCd:'c'
        ,optionText:'Wallenberg症候群'
        ,correctType:0);
    db.insertquestionoption(qo1092);
    QuestionOption qo1093 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,optionCd:'d'
        ,optionText:'脳動静脈奇形'
        ,correctType:1);
    db.insertquestionoption(qo1093);
    QuestionOption qo1094 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,optionCd:'e'
        ,optionText:'もやもや病'
        ,correctType:0);
    db.insertquestionoption(qo1094);
    QuestionOption qo1095 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,optionCd:'a'
        ,optionText:'肝生検'
        ,correctType:0);
    db.insertquestionoption(qo1095);
    QuestionOption qo1096 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,optionCd:'b'
        ,optionText:'腹部単純CT'
        ,correctType:0);
    db.insertquestionoption(qo1096);
    QuestionOption qo1097 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,optionCd:'c'
        ,optionText:'頭部単純CT'
        ,correctType:0);
    db.insertquestionoption(qo1097);
    QuestionOption qo1098 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,optionCd:'d'
        ,optionText:'腹部超音波検査'
        ,correctType:0);
    db.insertquestionoption(qo1098);
    QuestionOption qo1099 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,optionCd:'e'
        ,optionText:'血清銅・セルロプラスミン値測定'
        ,correctType:1);
    db.insertquestionoption(qo1099);
    QuestionOption qo1100 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,optionCd:'a'
        ,optionText:'下肢伸展挙上試験陽性である。'
        ,correctType:0);
    db.insertquestionoption(qo1100);
    QuestionOption qo1101 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,optionCd:'b'
        ,optionText:'下肢筋力低下を伴う。'
        ,correctType:0);
    db.insertquestionoption(qo1101);
    QuestionOption qo1102 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,optionCd:'c'
        ,optionText:'安静で増悪する。'
        ,correctType:1);
    db.insertquestionoption(qo1102);
    QuestionOption qo1103 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,optionCd:'d'
        ,optionText:'急性発症である。'
        ,correctType:0);
    db.insertquestionoption(qo1103);
    QuestionOption qo1104 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,optionCd:'e'
        ,optionText:'高熱を伴う。'
        ,correctType:0);
    db.insertquestionoption(qo1104);
    QuestionOption qo1105 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,optionCd:'a'
        ,optionText:'rt-PA'
        ,correctType:1);
    db.insertquestionoption(qo1105);
    QuestionOption qo1106 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,optionCd:'b'
        ,optionText:'止血薬'
        ,correctType:0);
    db.insertquestionoption(qo1106);
    QuestionOption qo1107 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,optionCd:'c'
        ,optionText:'ヘパリン'
        ,correctType:0);
    db.insertquestionoption(qo1107);
    QuestionOption qo1108 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,optionCd:'d'
        ,optionText:'ワルファリン'
        ,correctType:0);
    db.insertquestionoption(qo1108);
    QuestionOption qo1109 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,optionCd:'e'
        ,optionText:'直接経口抗凝固薬'
        ,correctType:0);
    db.insertquestionoption(qo1109);
    QuestionOption qo1110 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,optionCd:'a'
        ,optionText:'厳格なカリウム摂取制限を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1110);
    QuestionOption qo1111 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,optionCd:'b'
        ,optionText:'塩分摂取は1日10 g程度とする。'
        ,correctType:0);
    db.insertquestionoption(qo1111);
    QuestionOption qo1112 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,optionCd:'c'
        ,optionText:'蛋白摂取は1日50 g程度とする。'
        ,correctType:1);
    db.insertquestionoption(qo1112);
    QuestionOption qo1113 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,optionCd:'d'
        ,optionText:'コレステロール摂取は1日200 mg以内とする。'
        ,correctType:0);
    db.insertquestionoption(qo1113);
    QuestionOption qo1114 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,optionCd:'e'
        ,optionText:'総エネルギー摂取は1日1,000 kcal以内に留める。'
        ,correctType:0);
    db.insertquestionoption(qo1114);
    QuestionOption qo1115 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,optionCd:'a'
        ,optionText:'下垂体前葉'
        ,correctType:0);
    db.insertquestionoption(qo1115);
    QuestionOption qo1116 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,optionCd:'b'
        ,optionText:'胃'
        ,correctType:0);
    db.insertquestionoption(qo1116);
    QuestionOption qo1117 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,optionCd:'c'
        ,optionText:'副腎皮質'
        ,correctType:1);
    db.insertquestionoption(qo1117);
    QuestionOption qo1118 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,optionCd:'d'
        ,optionText:'膵　臓'
        ,correctType:0);
    db.insertquestionoption(qo1118);
    QuestionOption qo1119 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,optionCd:'e'
        ,optionText:'骨　髄'
        ,correctType:0);
    db.insertquestionoption(qo1119);
    QuestionOption qo1120 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,optionCd:'a'
        ,optionText:'Helicobacter pylori除菌療法を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1120);
    QuestionOption qo1121 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,optionCd:'b'
        ,optionText:'上部消化管造影を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1121);
    QuestionOption qo1122 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,optionCd:'c'
        ,optionText:'精神科に転科を勧める。'
        ,correctType:0);
    db.insertquestionoption(qo1122);
    QuestionOption qo1123 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,optionCd:'d'
        ,optionText:'対症的に投薬する。'
        ,correctType:1);
    db.insertquestionoption(qo1123);
    QuestionOption qo1124 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,optionCd:'e'
        ,optionText:'手術を勧める。'
        ,correctType:0);
    db.insertquestionoption(qo1124);
    QuestionOption qo1125 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,optionCd:'a'
        ,optionText:'下部消化管内視鏡検査'
        ,correctType:0);
    db.insertquestionoption(qo1125);
    QuestionOption qo1126 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,optionCd:'b'
        ,optionText:'末梢血塗抹鏡検'
        ,correctType:1);
    db.insertquestionoption(qo1126);
    QuestionOption qo1127 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,optionCd:'c'
        ,optionText:'血液培養'
        ,correctType:0);
    db.insertquestionoption(qo1127);
    QuestionOption qo1128 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,optionCd:'d'
        ,optionText:'腎生検'
        ,correctType:0);
    db.insertquestionoption(qo1128);
    QuestionOption qo1129 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,optionCd:'e'
        ,optionText:'尿培養'
        ,correctType:0);
    db.insertquestionoption(qo1129);
    QuestionOption qo1130 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,optionCd:'a'
        ,optionText:'歯突起の頭蓋底陥入'
        ,correctType:0);
    db.insertquestionoption(qo1130);
    QuestionOption qo1131 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,optionCd:'b'
        ,optionText:'歯突起後方の偽腫瘍'
        ,correctType:0);
    db.insertquestionoption(qo1131);
    QuestionOption qo1132 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,optionCd:'c'
        ,optionText:'環軸関節亜脱臼'
        ,correctType:1);
    db.insertquestionoption(qo1132);
    QuestionOption qo1133 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,optionCd:'d'
        ,optionText:'軸椎下亜脱臼'
        ,correctType:0);
    db.insertquestionoption(qo1133);
    QuestionOption qo1134 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,optionCd:'e'
        ,optionText:'頸椎後弯変形'
        ,correctType:0);
    db.insertquestionoption(qo1134);
    QuestionOption qo1135 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,optionCd:'a'
        ,optionText:'ペニシリン系抗菌薬内服'
        ,correctType:1);
    db.insertquestionoption(qo1135);
    QuestionOption qo1136 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,optionCd:'b'
        ,optionText:'副腎皮質ステロイド内服'
        ,correctType:0);
    db.insertquestionoption(qo1136);
    QuestionOption qo1137 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,optionCd:'c'
        ,optionText:'抗アレルギー薬内服'
        ,correctType:0);
    db.insertquestionoption(qo1137);
    QuestionOption qo1138 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,optionCd:'d'
        ,optionText:'PUVA療法'
        ,correctType:0);
    db.insertquestionoption(qo1138);
    QuestionOption qo1139 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,optionCd:'e'
        ,optionText:'温熱療法'
        ,correctType:0);
    db.insertquestionoption(qo1139);
    QuestionOption qo1140 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,optionCd:'a'
        ,optionText:'イレウスチューブ留置'
        ,correctType:1);
    db.insertquestionoption(qo1140);
    QuestionOption qo1141 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,optionCd:'b'
        ,optionText:'ホルモン療法'
        ,correctType:0);
    db.insertquestionoption(qo1141);
    QuestionOption qo1142 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,optionCd:'c'
        ,optionText:'抗癌化学療法'
        ,correctType:0);
    db.insertquestionoption(qo1142);
    QuestionOption qo1143 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,optionCd:'d'
        ,optionText:'放射線療法'
        ,correctType:0);
    db.insertquestionoption(qo1143);
    QuestionOption qo1144 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,optionCd:'e'
        ,optionText:'開腹術'
        ,correctType:0);
    db.insertquestionoption(qo1144);
    QuestionOption qo1145 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,optionCd:'a'
        ,optionText:'クループ様咳嗽'
        ,correctType:0);
    db.insertquestionoption(qo1145);
    QuestionOption qo1146 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,optionCd:'b'
        ,optionText:'チアノーゼ'
        ,correctType:0);
    db.insertquestionoption(qo1146);
    QuestionOption qo1147 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,optionCd:'c'
        ,optionText:'嗄　声'
        ,correctType:0);
    db.insertquestionoption(qo1147);
    QuestionOption qo1148 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,optionCd:'d'
        ,optionText:'喘　鳴'
        ,correctType:1);
    db.insertquestionoption(qo1148);
    QuestionOption qo1149 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,optionCd:'e'
        ,optionText:'失　声'
        ,correctType:0);
    db.insertquestionoption(qo1149);
    QuestionOption qo1150 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,optionCd:'a'
        ,optionText:'ASO'
        ,correctType:0);
    db.insertquestionoption(qo1150);
    QuestionOption qo1151 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,optionCd:'b'
        ,optionText:'ANCA'
        ,correctType:0);
    db.insertquestionoption(qo1151);
    QuestionOption qo1152 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,optionCd:'c'
        ,optionText:'PT-INR'
        ,correctType:0);
    db.insertquestionoption(qo1152);
    QuestionOption qo1153 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,optionCd:'d'
        ,optionText:'血液培養'
        ,correctType:1);
    db.insertquestionoption(qo1153);
    QuestionOption qo1154 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,optionCd:'e'
        ,optionText:'抗核抗体'
        ,correctType:0);
    db.insertquestionoption(qo1154);
    QuestionOption qo1155 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,optionCd:'a'
        ,optionText:'血液透析'
        ,correctType:0);
    db.insertquestionoption(qo1155);
    QuestionOption qo1156 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,optionCd:'b'
        ,optionText:'利尿薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1156);
    QuestionOption qo1157 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,optionCd:'c'
        ,optionText:'前立腺生検'
        ,correctType:0);
    db.insertquestionoption(qo1157);
    QuestionOption qo1158 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,optionCd:'d'
        ,optionText:'膀胱カテーテル留置'
        ,correctType:1);
    db.insertquestionoption(qo1158);
    QuestionOption qo1159 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,optionCd:'e'
        ,optionText:'経尿道的前立腺切除術'
        ,correctType:0);
    db.insertquestionoption(qo1159);
    QuestionOption qo1160 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,optionCd:'a'
        ,optionText:'Jatene手術'
        ,correctType:0);
    db.insertquestionoption(qo1160);
    QuestionOption qo1161 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,optionCd:'b'
        ,optionText:'Fontan手術'
        ,correctType:0);
    db.insertquestionoption(qo1161);
    QuestionOption qo1162 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,optionCd:'c'
        ,optionText:'肺動脈絞扼手術'
        ,correctType:1);
    db.insertquestionoption(qo1162);
    QuestionOption qo1163 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,optionCd:'d'
        ,optionText:'Fallot四徴症根治手術'
        ,correctType:0);
    db.insertquestionoption(qo1163);
    QuestionOption qo1164 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,optionCd:'e'
        ,optionText:'Blalock-Taussig短絡手術'
        ,correctType:0);
    db.insertquestionoption(qo1164);
    QuestionOption qo1165 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,optionCd:'a'
        ,optionText:'「炎症反応が高値を示しており重症と考えられるので，集中治療室に入室しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1165);
    QuestionOption qo1166 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,optionCd:'b'
        ,optionText:'「肝機能障害があり重症と考えられるので，集中治療室に入室しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1166);
    QuestionOption qo1167 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,optionCd:'c'
        ,optionText:'「上気道炎なので，自宅で安静にして改善がなければ再診してください」'
        ,correctType:0);
    db.insertquestionoption(qo1167);
    QuestionOption qo1168 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,optionCd:'d'
        ,optionText:'「隔離が必要な状態なので，直ちに感染症病院への入院が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1168);
    QuestionOption qo1169 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,optionCd:'e'
        ,optionText:'「肺炎ですが重症ではないので外来で治療しましょう」'
        ,correctType:1);
    db.insertquestionoption(qo1169);
    QuestionOption qo1170 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,optionCd:'a'
        ,optionText:'経過観察する。'
        ,correctType:0);
    db.insertquestionoption(qo1170);
    QuestionOption qo1171 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,optionCd:'b'
        ,optionText:'聴力検査を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1171);
    QuestionOption qo1172 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,optionCd:'c'
        ,optionText:'鎮静薬を投与する。'
        ,correctType:0);
    db.insertquestionoption(qo1172);
    QuestionOption qo1173 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,optionCd:'d'
        ,optionText:'鼓膜換気チューブを留置する。'
        ,correctType:0);
    db.insertquestionoption(qo1173);
    QuestionOption qo1174 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,optionCd:'e'
        ,optionText:'キシロカインゼリーを外耳道内に注入する。'
        ,correctType:1);
    db.insertquestionoption(qo1174);
    QuestionOption qo1175 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,optionCd:'a'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo1175);
    QuestionOption qo1176 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,optionCd:'b'
        ,optionText:'内視鏡的処置'
        ,correctType:0);
    db.insertquestionoption(qo1176);
    QuestionOption qo1177 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,optionCd:'c'
        ,optionText:'腹腔鏡下大網充塡術'
        ,correctType:1);
    db.insertquestionoption(qo1177);
    QuestionOption qo1178 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,optionCd:'d'
        ,optionText:'プロトンポンプ阻害薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1178);
    QuestionOption qo1179 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,optionCd:'e'
        ,optionText:'ヒスタミンH2受容体拮抗薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1179);
    QuestionOption qo1180 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,optionCd:'a'
        ,optionText:'ドパミン作動薬'
        ,correctType:0);
    db.insertquestionoption(qo1180);
    QuestionOption qo1181 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,optionCd:'b'
        ,optionText:'バルビツレート系薬'
        ,correctType:0);
    db.insertquestionoption(qo1181);
    QuestionOption qo1182 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,optionCd:'c'
        ,optionText:'コリンエステラーゼ阻害薬'
        ,correctType:0);
    db.insertquestionoption(qo1182);
    QuestionOption qo1183 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,optionCd:'d'
        ,optionText:'メラトニン受容体アゴニスト薬'
        ,correctType:0);
    db.insertquestionoption(qo1183);
    QuestionOption qo1184 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,optionCd:'e'
        ,optionText:'選択的セロトニン再取込み阻害薬'
        ,correctType:1);
    db.insertquestionoption(qo1184);
    QuestionOption qo1185 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,optionCd:'a'
        ,optionText:'「手術後，眼鏡は必要ありません」'
        ,correctType:0);
    db.insertquestionoption(qo1185);
    QuestionOption qo1186 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,optionCd:'b'
        ,optionText:'「術後15年ほどで眼内レンズの入れ替え手術が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1186);
    QuestionOption qo1187 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,optionCd:'c'
        ,optionText:'「70歳になったので両眼の手術を行います」'
        ,correctType:0);
    db.insertquestionoption(qo1187);
    QuestionOption qo1188 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,optionCd:'d'
        ,optionText:'「手術後に後囊という部分が濁ってきた際は注射で治療します」'
        ,correctType:0);
    db.insertquestionoption(qo1188);
    QuestionOption qo1189 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,optionCd:'e'
        ,optionText:'「手術では前囊という部分を切除して眼内にレンズを入れます」'
        ,correctType:1);
    db.insertquestionoption(qo1189);
    QuestionOption qo1190 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,optionCd:'a'
        ,optionText:'大量殺細胞性抗腫瘍薬併用自家造血幹細胞移植'
        ,correctType:0);
    db.insertquestionoption(qo1190);
    QuestionOption qo1191 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,optionCd:'b'
        ,optionText:'分子標的薬と殺細胞性抗腫瘍薬の投与'
        ,correctType:1);
    db.insertquestionoption(qo1191);
    QuestionOption qo1192 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,optionCd:'c'
        ,optionText:'殺細胞性抗腫瘍薬の単独投与'
        ,correctType:0);
    db.insertquestionoption(qo1192);
    QuestionOption qo1193 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,optionCd:'d'
        ,optionText:'全身放射線療法'
        ,correctType:0);
    db.insertquestionoption(qo1193);
    QuestionOption qo1194 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,optionCd:'e'
        ,optionText:'局所放射線療法'
        ,correctType:0);
    db.insertquestionoption(qo1194);
    QuestionOption qo1195 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,optionCd:'a'
        ,optionText:'アンジオテンシン変換酵素〈ACE〉阻害薬'
        ,correctType:0);
    db.insertquestionoption(qo1195);
    QuestionOption qo1196 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,optionCd:'b'
        ,optionText:'ビスホスホネート'
        ,correctType:1);
    db.insertquestionoption(qo1196);
    QuestionOption qo1197 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,optionCd:'c'
        ,optionText:'カルシウム拮抗薬'
        ,correctType:0);
    db.insertquestionoption(qo1197);
    QuestionOption qo1198 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,optionCd:'d'
        ,optionText:'甲状腺ホルモン'
        ,correctType:0);
    db.insertquestionoption(qo1198);
    QuestionOption qo1199 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,optionCd:'e'
        ,optionText:'サイアザイド'
        ,correctType:0);
    db.insertquestionoption(qo1199);
    QuestionOption qo1200 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,optionCd:'a'
        ,optionText:'抗好中球細胞質抗体〈ANCA〉'
        ,correctType:0);
    db.insertquestionoption(qo1200);
    QuestionOption qo1201 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,optionCd:'b'
        ,optionText:'抗リン脂質抗体'
        ,correctType:0);
    db.insertquestionoption(qo1201);
    QuestionOption qo1202 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,optionCd:'c'
        ,optionText:'抗基底膜抗体'
        ,correctType:1);
    db.insertquestionoption(qo1202);
    QuestionOption qo1203 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,optionCd:'d'
        ,optionText:'抗Sm抗体'
        ,correctType:0);
    db.insertquestionoption(qo1203);
    QuestionOption qo1204 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,optionCd:'e'
        ,optionText:'抗核抗体'
        ,correctType:0);
    db.insertquestionoption(qo1204);
    QuestionOption qo1205 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,optionCd:'a'
        ,optionText:'う歯治療'
        ,correctType:0);
    db.insertquestionoption(qo1205);
    QuestionOption qo1206 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,optionCd:'b'
        ,optionText:'上顎部分切除術'
        ,correctType:0);
    db.insertquestionoption(qo1206);
    QuestionOption qo1207 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,optionCd:'c'
        ,optionText:'フルコナゾール内服'
        ,correctType:0);
    db.insertquestionoption(qo1207);
    QuestionOption qo1208 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,optionCd:'d'
        ,optionText:'アモキシシリン内服'
        ,correctType:0);
    db.insertquestionoption(qo1208);
    QuestionOption qo1209 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,optionCd:'e'
        ,optionText:'内視鏡下鼻副鼻腔手術'
        ,correctType:1);
    db.insertquestionoption(qo1209);
    QuestionOption qo1210 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,optionCd:'a'
        ,optionText:'GnRH負荷試験'
        ,correctType:1);
    db.insertquestionoption(qo1210);
    QuestionOption qo1211 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,optionCd:'b'
        ,optionText:'高張食塩水負荷試験'
        ,correctType:0);
    db.insertquestionoption(qo1211);
    QuestionOption qo1212 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,optionCd:'c'
        ,optionText:'甲状腺シンチグラフィ'
        ,correctType:0);
    db.insertquestionoption(qo1212);
    QuestionOption qo1213 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,optionCd:'d'
        ,optionText:'デキサメタゾン抑制試験'
        ,correctType:0);
    db.insertquestionoption(qo1213);
    QuestionOption qo1214 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,optionCd:'e'
        ,optionText:'ブロモクリプチン負荷試験'
        ,correctType:0);
    db.insertquestionoption(qo1214);
    QuestionOption qo1215 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,optionCd:'a'
        ,optionText:'基礎体温は2相性である。'
        ,correctType:1);
    db.insertquestionoption(qo1215);
    QuestionOption qo1216 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,optionCd:'b'
        ,optionText:'Wolff管の発生異常である。'
        ,correctType:0);
    db.insertquestionoption(qo1216);
    QuestionOption qo1217 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,optionCd:'c'
        ,optionText:'高プロラクチン血症がある。'
        ,correctType:0);
    db.insertquestionoption(qo1217);
    QuestionOption qo1218 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,optionCd:'d'
        ,optionText:'Kaufmann療法が有効である。'
        ,correctType:0);
    db.insertquestionoption(qo1218);
    QuestionOption qo1219 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,optionCd:'e'
        ,optionText:'GnRH負荷でLH・FSHは過剰反応を示す。'
        ,correctType:0);
    db.insertquestionoption(qo1219);
    QuestionOption qo1220 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,optionCd:'a'
        ,optionText:'気管挿管'
        ,correctType:0);
    db.insertquestionoption(qo1220);
    QuestionOption qo1221 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,optionCd:'b'
        ,optionText:'モルヒネ内服'
        ,correctType:0);
    db.insertquestionoption(qo1221);
    QuestionOption qo1222 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,optionCd:'c'
        ,optionText:'エダラボン静注'
        ,correctType:0);
    db.insertquestionoption(qo1222);
    QuestionOption qo1223 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,optionCd:'d'
        ,optionText:'非侵襲的陽圧換気'
        ,correctType:1);
    db.insertquestionoption(qo1223);
    QuestionOption qo1224 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,optionCd:'e'
        ,optionText:'積極的な理学療法'
        ,correctType:0);
    db.insertquestionoption(qo1224);
    QuestionOption qo1225 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,optionCd:'a'
        ,optionText:'安　静'
        ,correctType:1);
    db.insertquestionoption(qo1225);
    QuestionOption qo1226 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,optionCd:'b'
        ,optionText:'アシクロビル内服'
        ,correctType:0);
    db.insertquestionoption(qo1226);
    QuestionOption qo1227 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,optionCd:'c'
        ,optionText:'ペニシリン系抗菌薬内服'
        ,correctType:0);
    db.insertquestionoption(qo1227);
    QuestionOption qo1228 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,optionCd:'d'
        ,optionText:'副腎皮質ステロイド内服'
        ,correctType:0);
    db.insertquestionoption(qo1228);
    QuestionOption qo1229 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,optionCd:'e'
        ,optionText:'インターフェロン静脈注射'
        ,correctType:0);
    db.insertquestionoption(qo1229);
    QuestionOption qo1230 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,optionCd:'a'
        ,optionText:'アンジオテンシンⅡ受容体拮抗薬'
        ,correctType:0);
    db.insertquestionoption(qo1230);
    QuestionOption qo1231 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,optionCd:'b'
        ,optionText:'アルドステロン拮抗薬'
        ,correctType:0);
    db.insertquestionoption(qo1231);
    QuestionOption qo1232 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,optionCd:'c'
        ,optionText:'ループ利尿薬'
        ,correctType:1);
    db.insertquestionoption(qo1232);
    QuestionOption qo1233 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,optionCd:'d'
        ,optionText:'レニン阻害薬'
        ,correctType:0);
    db.insertquestionoption(qo1233);
    QuestionOption qo1234 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,optionCd:'e'
        ,optionText:'β遮断薬'
        ,correctType:0);
    db.insertquestionoption(qo1234);
    QuestionOption qo1235 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,optionCd:'a'
        ,optionText:'緊急帝王切開'
        ,correctType:0);
    db.insertquestionoption(qo1235);
    QuestionOption qo1236 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,optionCd:'b'
        ,optionText:'ベタメタゾン筋注'
        ,correctType:1);
    db.insertquestionoption(qo1236);
    QuestionOption qo1237 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,optionCd:'c'
        ,optionText:'減塩食（6 g/日）'
        ,correctType:0);
    db.insertquestionoption(qo1237);
    QuestionOption qo1238 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,optionCd:'d'
        ,optionText:'ニフェジピン持続静注'
        ,correctType:0);
    db.insertquestionoption(qo1238);
    QuestionOption qo1239 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,optionCd:'e'
        ,optionText:'硫酸マグネシウム持続静注'
        ,correctType:0);
    db.insertquestionoption(qo1239);
    QuestionOption qo1240 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,optionCd:'a'
        ,optionText:'血液透析'
        ,correctType:0);
    db.insertquestionoption(qo1240);
    QuestionOption qo1241 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,optionCd:'b'
        ,optionText:'シクロスポリン投与'
        ,correctType:0);
    db.insertquestionoption(qo1241);
    QuestionOption qo1242 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,optionCd:'c'
        ,optionText:'副腎皮質ステロイド投与'
        ,correctType:0);
    db.insertquestionoption(qo1242);
    QuestionOption qo1243 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,optionCd:'d'
        ,optionText:'シクロホスファミド投与'
        ,correctType:0);
    db.insertquestionoption(qo1243);
    QuestionOption qo1244 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,optionCd:'e'
        ,optionText:'抗レトロウイルス療法〈ART〉'
        ,correctType:1);
    db.insertquestionoption(qo1244);
    QuestionOption qo1245 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,optionCd:'a'
        ,optionText:'外科的切除'
        ,correctType:0);
    db.insertquestionoption(qo1245);
    QuestionOption qo1246 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,optionCd:'b'
        ,optionText:'放射線内用療法'
        ,correctType:1);
    db.insertquestionoption(qo1246);
    QuestionOption qo1247 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,optionCd:'c'
        ,optionText:'抗甲状腺薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1247);
    QuestionOption qo1248 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,optionCd:'d'
        ,optionText:'放射線外照射療法'
        ,correctType:0);
    db.insertquestionoption(qo1248);
    QuestionOption qo1249 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,optionCd:'e'
        ,optionText:'甲状腺ホルモン薬増量'
        ,correctType:0);
    db.insertquestionoption(qo1249);
    QuestionOption qo1250 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,optionCd:'a'
        ,optionText:'副腎皮質ステロイド点眼薬'
        ,correctType:0);
    db.insertquestionoption(qo1250);
    QuestionOption qo1251 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,optionCd:'b'
        ,optionText:'レボフロキサシン点眼薬'
        ,correctType:0);
    db.insertquestionoption(qo1251);
    QuestionOption qo1252 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,optionCd:'c'
        ,optionText:'イトラコナゾール点眼薬'
        ,correctType:0);
    db.insertquestionoption(qo1252);
    QuestionOption qo1253 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,optionCd:'d'
        ,optionText:'ピロカルピン点眼薬'
        ,correctType:0);
    db.insertquestionoption(qo1253);
    QuestionOption qo1254 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,optionCd:'e'
        ,optionText:'アシクロビル眼軟膏'
        ,correctType:1);
    db.insertquestionoption(qo1254);
    QuestionOption qo1255 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,optionCd:'a'
        ,optionText:'外陰部'
        ,correctType:0);
    db.insertquestionoption(qo1255);
    QuestionOption qo1256 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,optionCd:'b'
        ,optionText:'鼻腔粘膜'
        ,correctType:0);
    db.insertquestionoption(qo1256);
    QuestionOption qo1257 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,optionCd:'c'
        ,optionText:'口腔粘膜'
        ,correctType:1);
    db.insertquestionoption(qo1257);
    QuestionOption qo1258 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,optionCd:'d'
        ,optionText:'耳介・外耳道'
        ,correctType:0);
    db.insertquestionoption(qo1258);
    QuestionOption qo1259 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,optionCd:'e'
        ,optionText:'眼球・眼瞼結膜'
        ,correctType:0);
    db.insertquestionoption(qo1259);
    QuestionOption qo1260 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,optionCd:'a'
        ,optionText:'胎児母体間輸血症候群'
        ,correctType:1);
    db.insertquestionoption(qo1260);
    QuestionOption qo1261 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,optionCd:'b'
        ,optionText:'常位胎盤早期剝離'
        ,correctType:0);
    db.insertquestionoption(qo1261);
    QuestionOption qo1262 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,optionCd:'c'
        ,optionText:'妊娠高血圧腎症'
        ,correctType:0);
    db.insertquestionoption(qo1262);
    QuestionOption qo1263 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,optionCd:'d'
        ,optionText:'羊水塞栓症'
        ,correctType:0);
    db.insertquestionoption(qo1263);
    QuestionOption qo1264 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,optionCd:'e'
        ,optionText:'子宮破裂'
        ,correctType:0);
    db.insertquestionoption(qo1264);
    QuestionOption qo1265 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,optionCd:'a'
        ,optionText:'Ⅰ音の亢進'
        ,correctType:0);
    db.insertquestionoption(qo1265);
    QuestionOption qo1266 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,optionCd:'b'
        ,optionText:'Ⅱ音の固定性分裂'
        ,correctType:0);
    db.insertquestionoption(qo1266);
    QuestionOption qo1267 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,optionCd:'c'
        ,optionText:'Ⅲ　音'
        ,correctType:1);
    db.insertquestionoption(qo1267);
    QuestionOption qo1268 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,optionCd:'d'
        ,optionText:'opening snap'
        ,correctType:0);
    db.insertquestionoption(qo1268);
    QuestionOption qo1269 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,optionCd:'e'
        ,optionText:'拡張中期ランブル雑音'
        ,correctType:0);
    db.insertquestionoption(qo1269);
    QuestionOption qo1270 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,optionCd:'a'
        ,optionText:'良性発作性頭位めまい症'
        ,correctType:0);
    db.insertquestionoption(qo1270);
    QuestionOption qo1271 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,optionCd:'b'
        ,optionText:'慢性中耳炎'
        ,correctType:0);
    db.insertquestionoption(qo1271);
    QuestionOption qo1272 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,optionCd:'c'
        ,optionText:'前庭神経炎'
        ,correctType:0);
    db.insertquestionoption(qo1272);
    QuestionOption qo1273 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,optionCd:'d'
        ,optionText:'突発性難聴'
        ,correctType:1);
    db.insertquestionoption(qo1273);
    QuestionOption qo1274 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,optionCd:'e'
        ,optionText:'Ménière病'
        ,correctType:0);
    db.insertquestionoption(qo1274);
    QuestionOption qo1275 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,optionCd:'a'
        ,optionText:'腹部外傷'
        ,correctType:0);
    db.insertquestionoption(qo1275);
    QuestionOption qo1276 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,optionCd:'b'
        ,optionText:'結節性硬化症'
        ,correctType:0);
    db.insertquestionoption(qo1276);
    QuestionOption qo1277 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,optionCd:'c'
        ,optionText:'膵管胆道合流異常'
        ,correctType:1);
    db.insertquestionoption(qo1277);
    QuestionOption qo1278 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,optionCd:'d'
        ,optionText:'多発性内分泌腫瘍症'
        ,correctType:0);
    db.insertquestionoption(qo1278);
    QuestionOption qo1279 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,optionCd:'e'
        ,optionText:'遺伝性球状赤血球症'
        ,correctType:0);
    db.insertquestionoption(qo1279);
    QuestionOption qo1280 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,optionCd:'a'
        ,optionText:'欠神発作がある。'
        ,correctType:0);
    db.insertquestionoption(qo1280);
    QuestionOption qo1281 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,optionCd:'b'
        ,optionText:'上方視ができない。'
        ,correctType:0);
    db.insertquestionoption(qo1281);
    QuestionOption qo1282 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,optionCd:'c'
        ,optionText:'性格が変わってきた。'
        ,correctType:1);
    db.insertquestionoption(qo1282);
    QuestionOption qo1283 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,optionCd:'d'
        ,optionText:'言語了解や復唱ができない。'
        ,correctType:0);
    db.insertquestionoption(qo1283);
    QuestionOption qo1284 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,optionCd:'e'
        ,optionText:'視野の両耳側が欠損している。'
        ,correctType:0);
    db.insertquestionoption(qo1284);
    QuestionOption qo1285 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,optionCd:'a'
        ,optionText:'苛性カリ〈KOH〉直接鏡検法'
        ,correctType:0);
    db.insertquestionoption(qo1285);
    QuestionOption qo1286 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,optionCd:'b'
        ,optionText:'Tzanck試験'
        ,correctType:0);
    db.insertquestionoption(qo1286);
    QuestionOption qo1287 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,optionCd:'c'
        ,optionText:'パッチテスト'
        ,correctType:0);
    db.insertquestionoption(qo1287);
    QuestionOption qo1288 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,optionCd:'d'
        ,optionText:'光線テスト'
        ,correctType:0);
    db.insertquestionoption(qo1288);
    QuestionOption qo1289 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,optionCd:'e'
        ,optionText:'皮膚生検'
        ,correctType:1);
    db.insertquestionoption(qo1289);
    QuestionOption qo1290 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,optionCd:'a'
        ,optionText:'オウム病'
        ,correctType:0);
    db.insertquestionoption(qo1290);
    QuestionOption qo1291 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,optionCd:'b'
        ,optionText:'肺炎球菌性肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1291);
    QuestionOption qo1292 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,optionCd:'c'
        ,optionText:'レジオネラ肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1292);
    QuestionOption qo1293 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,optionCd:'d'
        ,optionText:'マイコプラズマ肺炎'
        ,correctType:1);
    db.insertquestionoption(qo1293);
    QuestionOption qo1294 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,optionCd:'e'
        ,optionText:'アレルギー性気管支肺アスペルギルス症'
        ,correctType:0);
    db.insertquestionoption(qo1294);
    QuestionOption qo1295 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,optionCd:'a'
        ,optionText:'幻　覚'
        ,correctType:0);
    db.insertquestionoption(qo1295);
    QuestionOption qo1296 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,optionCd:'b'
        ,optionText:'過覚醒'
        ,correctType:1);
    db.insertquestionoption(qo1296);
    QuestionOption qo1297 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,optionCd:'c'
        ,optionText:'体感症'
        ,correctType:0);
    db.insertquestionoption(qo1297);
    QuestionOption qo1298 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,optionCd:'d'
        ,optionText:'作為体験'
        ,correctType:0);
    db.insertquestionoption(qo1298);
    QuestionOption qo1299 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,optionCd:'e'
        ,optionText:'カタレプシー'
        ,correctType:0);
    db.insertquestionoption(qo1299);
    QuestionOption qo1300 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,optionCd:'a'
        ,optionText:'血小板輸血'
        ,correctType:0);
    db.insertquestionoption(qo1300);
    QuestionOption qo1301 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,optionCd:'b'
        ,optionText:'NSAID投与'
        ,correctType:0);
    db.insertquestionoption(qo1301);
    QuestionOption qo1302 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,optionCd:'c'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo1302);
    QuestionOption qo1303 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,optionCd:'d'
        ,optionText:'プレドニゾロン投与'
        ,correctType:1);
    db.insertquestionoption(qo1303);
    QuestionOption qo1304 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,optionCd:'e'
        ,optionText:'人工妊娠中絶'
        ,correctType:0);
    db.insertquestionoption(qo1304);
    QuestionOption qo1305 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,optionCd:'a'
        ,optionText:'悪性腫瘍の合併を検索する必要がある。'
        ,correctType:1);
    db.insertquestionoption(qo1305);
    QuestionOption qo1306 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,optionCd:'b'
        ,optionText:'副腎皮質ステロイドが著効を示す。'
        ,correctType:0);
    db.insertquestionoption(qo1306);
    QuestionOption qo1307 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,optionCd:'c'
        ,optionText:'急速に腎機能障害が進行する。'
        ,correctType:0);
    db.insertquestionoption(qo1307);
    QuestionOption qo1308 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,optionCd:'d'
        ,optionText:'自然寛解が高率にみられる。'
        ,correctType:0);
    db.insertquestionoption(qo1308);
    QuestionOption qo1309 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,optionCd:'e'
        ,optionText:'尿蛋白の選択性は高い。'
        ,correctType:0);
    db.insertquestionoption(qo1309);
    QuestionOption qo1310 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,optionCd:'a'
        ,optionText:'ジヒドロピリジン系カルシウム拮抗薬'
        ,correctType:0);
    db.insertquestionoption(qo1310);
    QuestionOption qo1311 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,optionCd:'b'
        ,optionText:'アンジオテンシン変換酵素阻害薬'
        ,correctType:0);
    db.insertquestionoption(qo1311);
    QuestionOption qo1312 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,optionCd:'c'
        ,optionText:'アンジオテンシン受容体拮抗薬'
        ,correctType:0);
    db.insertquestionoption(qo1312);
    QuestionOption qo1313 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,optionCd:'d'
        ,optionText:'サイアザイド系利尿薬'
        ,correctType:0);
    db.insertquestionoption(qo1313);
    QuestionOption qo1314 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,optionCd:'e'
        ,optionText:'β遮断薬'
        ,correctType:1);
    db.insertquestionoption(qo1314);
    QuestionOption qo1315 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,optionCd:'a'
        ,optionText:'ADH不適合分泌症候群〈SIADH〉'
        ,correctType:1);
    db.insertquestionoption(qo1315);
    QuestionOption qo1316 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,optionCd:'b'
        ,optionText:'播種性血管内凝固〈DIC〉'
        ,correctType:0);
    db.insertquestionoption(qo1316);
    QuestionOption qo1317 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,optionCd:'c'
        ,optionText:'急性腎不全'
        ,correctType:0);
    db.insertquestionoption(qo1317);
    QuestionOption qo1318 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,optionCd:'d'
        ,optionText:'ショック'
        ,correctType:0);
    db.insertquestionoption(qo1318);
    QuestionOption qo1319 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,optionCd:'e'
        ,optionText:'肺水腫'
        ,correctType:0);
    db.insertquestionoption(qo1319);
    QuestionOption qo1320 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,optionCd:'a'
        ,optionText:'切迫早産'
        ,correctType:1);
    db.insertquestionoption(qo1320);
    QuestionOption qo1321 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,optionCd:'b'
        ,optionText:'頸管無力症'
        ,correctType:0);
    db.insertquestionoption(qo1321);
    QuestionOption qo1322 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,optionCd:'c'
        ,optionText:'絨毛膜羊膜炎'
        ,correctType:1);
    db.insertquestionoption(qo1322);
    QuestionOption qo1323 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,optionCd:'d'
        ,optionText:'常位胎盤早期剝離'
        ,correctType:0);
    db.insertquestionoption(qo1323);
    QuestionOption qo1324 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,optionCd:'e'
        ,optionText:'子宮筋腫合併妊娠'
        ,correctType:0);
    db.insertquestionoption(qo1324);
    QuestionOption qo1325 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,optionCd:'a'
        ,optionText:'脳梗塞'
        ,correctType:1);
    db.insertquestionoption(qo1325);
    QuestionOption qo1326 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,optionCd:'b'
        ,optionText:'習慣流産'
        ,correctType:1);
    db.insertquestionoption(qo1326);
    QuestionOption qo1327 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,optionCd:'c'
        ,optionText:'筋肉内出血'
        ,correctType:0);
    db.insertquestionoption(qo1327);
    QuestionOption qo1328 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,optionCd:'d'
        ,optionText:'関節内出血'
        ,correctType:0);
    db.insertquestionoption(qo1328);
    QuestionOption qo1329 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,optionCd:'e'
        ,optionText:'ANCA関連血管炎'
        ,correctType:0);
    db.insertquestionoption(qo1329);
    QuestionOption qo1330 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,optionCd:'a'
        ,optionText:'中毒性巨大結腸症'
        ,correctType:1);
    db.insertquestionoption(qo1330);
    QuestionOption qo1331 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,optionCd:'b'
        ,optionText:'線維性狭窄'
        ,correctType:0);
    db.insertquestionoption(qo1331);
    QuestionOption qo1332 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,optionCd:'c'
        ,optionText:'腸瘻形成'
        ,correctType:0);
    db.insertquestionoption(qo1332);
    QuestionOption qo1333 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,optionCd:'d'
        ,optionText:'大腸癌'
        ,correctType:1);
    db.insertquestionoption(qo1333);
    QuestionOption qo1334 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,optionCd:'e'
        ,optionText:'肝膿瘍'
        ,correctType:0);
    db.insertquestionoption(qo1334);
    QuestionOption qo1335 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,optionCd:'a'
        ,optionText:'膝蓋腱反射亢進'
        ,correctType:0);
    db.insertquestionoption(qo1335);
    QuestionOption qo1336 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,optionCd:'b'
        ,optionText:'Babinski徴候陽性'
        ,correctType:0);
    db.insertquestionoption(qo1336);
    QuestionOption qo1337 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,optionCd:'c'
        ,optionText:'下腿後面の知覚障害'
        ,correctType:1);
    db.insertquestionoption(qo1337);
    QuestionOption qo1338 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,optionCd:'d'
        ,optionText:'アキレス腱反射低下'
        ,correctType:1);
    db.insertquestionoption(qo1338);
    QuestionOption qo1339 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,optionCd:'e'
        ,optionText:'大腿四頭筋の筋力障害'
        ,correctType:0);
    db.insertquestionoption(qo1339);
    QuestionOption qo1340 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,optionCd:'a'
        ,optionText:'副腎皮質ステロイド投与'
        ,correctType:1);
    db.insertquestionoption(qo1340);
    QuestionOption qo1341 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,optionCd:'b'
        ,optionText:'メサラジン投与'
        ,correctType:1);
    db.insertquestionoption(qo1341);
    QuestionOption qo1342 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,optionCd:'c'
        ,optionText:'抗結核薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1342);
    QuestionOption qo1343 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,optionCd:'d'
        ,optionText:'高脂肪食'
        ,correctType:0);
    db.insertquestionoption(qo1343);
    QuestionOption qo1344 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,optionCd:'e'
        ,optionText:'開腹術'
        ,correctType:0);
    db.insertquestionoption(qo1344);
    QuestionOption qo1345 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,optionCd:'a'
        ,optionText:'血清梅毒反応'
        ,correctType:0);
    db.insertquestionoption(qo1345);
    QuestionOption qo1346 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,optionCd:'b'
        ,optionText:'脳血流SPECT'
        ,correctType:1);
    db.insertquestionoption(qo1346);
    QuestionOption qo1347 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,optionCd:'c'
        ,optionText:'神経伝導速度測定'
        ,correctType:0);
    db.insertquestionoption(qo1347);
    QuestionOption qo1348 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,optionCd:'d'
        ,optionText:'血清アンモニア測定'
        ,correctType:0);
    db.insertquestionoption(qo1348);
    QuestionOption qo1349 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,optionCd:'e'
        ,optionText:'MIBG心筋シンチグラフィ'
        ,correctType:1);
    db.insertquestionoption(qo1349);
    QuestionOption qo1350 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,optionCd:'a'
        ,optionText:'網膜電図〈ERG〉'
        ,correctType:1);
    db.insertquestionoption(qo1350);
    QuestionOption qo1351 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,optionCd:'b'
        ,optionText:'眼部MRI'
        ,correctType:0);
    db.insertquestionoption(qo1351);
    QuestionOption qo1352 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,optionCd:'c'
        ,optionText:'眼圧測定'
        ,correctType:0);
    db.insertquestionoption(qo1352);
    QuestionOption qo1353 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,optionCd:'d'
        ,optionText:'視力検査'
        ,correctType:0);
    db.insertquestionoption(qo1353);
    QuestionOption qo1354 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,optionCd:'e'
        ,optionText:'視野検査'
        ,correctType:1);
    db.insertquestionoption(qo1354);
    QuestionOption qo1355 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,optionCd:'a'
        ,optionText:'先天性十二指腸閉鎖症'
        ,correctType:1);
    db.insertquestionoption(qo1355);
    QuestionOption qo1356 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,optionCd:'b'
        ,optionText:'肥厚性幽門狭窄症'
        ,correctType:0);
    db.insertquestionoption(qo1356);
    QuestionOption qo1357 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,optionCd:'c'
        ,optionText:'先天性食道閉鎖症'
        ,correctType:0);
    db.insertquestionoption(qo1357);
    QuestionOption qo1358 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,optionCd:'d'
        ,optionText:'腸回転異常症'
        ,correctType:1);
    db.insertquestionoption(qo1358);
    QuestionOption qo1359 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,optionCd:'e'
        ,optionText:'新生児胃破裂'
        ,correctType:0);
    db.insertquestionoption(qo1359);
    QuestionOption qo1360 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,optionCd:'a'
        ,optionText:'ヘパリン'
        ,correctType:1);
    db.insertquestionoption(qo1360);
    QuestionOption qo1361 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,optionCd:'b'
        ,optionText:'ビタミンK'
        ,correctType:0);
    db.insertquestionoption(qo1361);
    QuestionOption qo1362 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,optionCd:'c'
        ,optionText:'新鮮凍結血漿'
        ,correctType:0);
    db.insertquestionoption(qo1362);
    QuestionOption qo1363 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,optionCd:'d'
        ,optionText:'ウロキナーゼ'
        ,correctType:1);
    db.insertquestionoption(qo1363);
    QuestionOption qo1364 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,optionCd:'e'
        ,optionText:'t-PA〈tissue plasminogen activator〉'
        ,correctType:1);
    db.insertquestionoption(qo1364);
    QuestionOption qo1365 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'a'
        ,optionText:'50％ブドウ糖液の急速静注を開始する。'
        ,correctType:0);
    db.insertquestionoption(qo1365);
    QuestionOption qo1366 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'b'
        ,optionText:'10％ブドウ糖液の点滴静注を開始する。'
        ,correctType:0);
    db.insertquestionoption(qo1366);
    QuestionOption qo1367 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'c'
        ,optionText:'5％ブドウ糖液の点滴静注を開始する。'
        ,correctType:0);
    db.insertquestionoption(qo1367);
    QuestionOption qo1368 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'d'
        ,optionText:'生理食塩液の点滴静注を開始する。'
        ,correctType:1);
    db.insertquestionoption(qo1368);
    QuestionOption qo1369 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'e'
        ,optionText:'NaClの経口摂取を促す。'
        ,correctType:0);
    db.insertquestionoption(qo1369);
    QuestionOption qo1370 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,optionCd:'f'
        ,optionText:'水の経口摂取を促す。'
        ,correctType:0);
    db.insertquestionoption(qo1370);
    QuestionOption qo1371 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,optionCd:'a'
        ,optionText:'内頸静脈'
        ,correctType:1);
    db.insertquestionoption(qo1371);
    QuestionOption qo1372 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,optionCd:'b'
        ,optionText:'外頸静脈'
        ,correctType:0);
    db.insertquestionoption(qo1372);
    QuestionOption qo1373 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,optionCd:'c'
        ,optionText:'総腸骨動脈'
        ,correctType:0);
    db.insertquestionoption(qo1373);
    QuestionOption qo1374 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,optionCd:'d'
        ,optionText:'橈側皮静脈'
        ,correctType:0);
    db.insertquestionoption(qo1374);
    QuestionOption qo1375 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,optionCd:'e'
        ,optionText:'大伏在静脈'
        ,correctType:0);
    db.insertquestionoption(qo1375);
    QuestionOption qo1376 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,optionCd:'a'
        ,optionText:'インフォームド・コンセントの確保'
        ,correctType:0);
    db.insertquestionoption(qo1376);
    QuestionOption qo1377 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,optionCd:'b'
        ,optionText:'医療コストの削減'
        ,correctType:0);
    db.insertquestionoption(qo1377);
    QuestionOption qo1378 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,optionCd:'c'
        ,optionText:'入院日数の短縮'
        ,correctType:0);
    db.insertquestionoption(qo1378);
    QuestionOption qo1379 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,optionCd:'d'
        ,optionText:'医療訴訟の回避'
        ,correctType:0);
    db.insertquestionoption(qo1379);
    QuestionOption qo1380 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,optionCd:'e'
        ,optionText:'医療水準の確保'
        ,correctType:1);
    db.insertquestionoption(qo1380);
    QuestionOption qo1381 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,optionCd:'a'
        ,optionText:'末梢血管抵抗'
        ,correctType:1);
    db.insertquestionoption(qo1381);
    QuestionOption qo1382 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,optionCd:'b'
        ,optionText:'ヘモグロビン'
        ,correctType:0);
    db.insertquestionoption(qo1382);
    QuestionOption qo1383 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,optionCd:'c'
        ,optionText:'血中乳酸値'
        ,correctType:0);
    db.insertquestionoption(qo1383);
    QuestionOption qo1384 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,optionCd:'d'
        ,optionText:'心拍数'
        ,correctType:0);
    db.insertquestionoption(qo1384);
    QuestionOption qo1385 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,optionCd:'e'
        ,optionText:'呼吸数'
        ,correctType:0);
    db.insertquestionoption(qo1385);
    QuestionOption qo1386 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,optionCd:'a'
        ,optionText:'抗菌薬投与前に各種培養検査を行う。'
        ,correctType:1);
    db.insertquestionoption(qo1386);
    QuestionOption qo1387 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,optionCd:'b'
        ,optionText:'CRP値に応じて抗菌薬の投与量を決める。'
        ,correctType:0);
    db.insertquestionoption(qo1387);
    QuestionOption qo1388 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,optionCd:'c'
        ,optionText:'抗菌薬の投与期間はCRPが陰性化するまでである。'
        ,correctType:0);
    db.insertquestionoption(qo1388);
    QuestionOption qo1389 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,optionCd:'d'
        ,optionText:'初期（経験的）治療は必ず経口抗菌薬である。'
        ,correctType:0);
    db.insertquestionoption(qo1389);
    QuestionOption qo1390 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,optionCd:'e'
        ,optionText:'効果良好な場合は培養結果にかかわらず初めの抗菌薬を継続する。'
        ,correctType:0);
    db.insertquestionoption(qo1390);
    QuestionOption qo1391 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,optionCd:'a'
        ,optionText:'表皮の浮腫が主体である。'
        ,correctType:0);
    db.insertquestionoption(qo1391);
    QuestionOption qo1392 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,optionCd:'b'
        ,optionText:'消退後に色素沈着を残す。'
        ,correctType:0);
    db.insertquestionoption(qo1392);
    QuestionOption qo1393 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,optionCd:'c'
        ,optionText:'24時間以内に消退する。'
        ,correctType:1);
    db.insertquestionoption(qo1393);
    QuestionOption qo1394 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,optionCd:'d'
        ,optionText:'湿疹の特徴的皮疹である。'
        ,correctType:0);
    db.insertquestionoption(qo1394);
    QuestionOption qo1395 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,optionCd:'e'
        ,optionText:'疼痛を伴う。'
        ,correctType:0);
    db.insertquestionoption(qo1395);
    QuestionOption qo1396 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,optionCd:'a'
        ,optionText:'症状に対する患者の主観評価'
        ,correctType:0);
    db.insertquestionoption(qo1396);
    QuestionOption qo1397 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,optionCd:'b'
        ,optionText:'明日予定している検査内容'
        ,correctType:0);
    db.insertquestionoption(qo1397);
    QuestionOption qo1398 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,optionCd:'c'
        ,optionText:'嚥下機能の評価'
        ,correctType:1);
    db.insertquestionoption(qo1398);
    QuestionOption qo1399 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,optionCd:'d'
        ,optionText:'胸部CT所見'
        ,correctType:0);
    db.insertquestionoption(qo1399);
    QuestionOption qo1400 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,optionCd:'e'
        ,optionText:'現在の処方'
        ,correctType:0);
    db.insertquestionoption(qo1400);
    QuestionOption qo1401 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo1401);
    QuestionOption qo1402 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:0);
    db.insertquestionoption(qo1402);
    QuestionOption qo1403 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:0);
    db.insertquestionoption(qo1403);
    QuestionOption qo1404 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:1);
    db.insertquestionoption(qo1404);
    QuestionOption qo1405 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo1405);
    QuestionOption qo1406 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,optionCd:'a'
        ,optionText:'直腸温が31℃'
        ,correctType:0);
    db.insertquestionoption(qo1406);
    QuestionOption qo1407 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,optionCd:'b'
        ,optionText:'脳幹反射が消失'
        ,correctType:1);
    db.insertquestionoption(qo1407);
    QuestionOption qo1408 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,optionCd:'c'
        ,optionText:'自発呼吸が残存'
        ,correctType:0);
    db.insertquestionoption(qo1408);
    QuestionOption qo1409 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,optionCd:'d'
        ,optionText:'瞳孔が1 mmで固定'
        ,correctType:0);
    db.insertquestionoption(qo1409);
    QuestionOption qo1410 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,optionCd:'e'
        ,optionText:'急性薬物中毒による深昏睡'
        ,correctType:0);
    db.insertquestionoption(qo1410);
    QuestionOption qo1411 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,optionCd:'a'
        ,optionText:'まず輸血を準備する。'
        ,correctType:0);
    db.insertquestionoption(qo1411);
    QuestionOption qo1412 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,optionCd:'b'
        ,optionText:'抗炎症薬で経過を観察する。'
        ,correctType:0);
    db.insertquestionoption(qo1412);
    QuestionOption qo1413 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,optionCd:'c'
        ,optionText:'診断には直腸指診が有効である。'
        ,correctType:1);
    db.insertquestionoption(qo1413);
    QuestionOption qo1414 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,optionCd:'d'
        ,optionText:'血便排泄は上部消化管出血時に生じる。'
        ,correctType:0);
    db.insertquestionoption(qo1414);
    QuestionOption qo1415 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,optionCd:'e'
        ,optionText:'タール便の出血源は大腸であることが多い。'
        ,correctType:0);
    db.insertquestionoption(qo1415);
    QuestionOption qo1416 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,optionCd:'a'
        ,optionText:'尿蛋白0.5 g/gCr以上'
        ,correctType:0);
    db.insertquestionoption(qo1416);
    QuestionOption qo1417 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,optionCd:'b'
        ,optionText:'尿蛋白陰性，尿潜血2＋'
        ,correctType:0);
    db.insertquestionoption(qo1417);
    QuestionOption qo1418 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,optionCd:'c'
        ,optionText:'尿蛋白2＋，尿潜血陰性'
        ,correctType:0);
    db.insertquestionoption(qo1418);
    QuestionOption qo1419 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,optionCd:'d'
        ,optionText:'尿素窒素20 mg/dL以上'
        ,correctType:1);
    db.insertquestionoption(qo1419);
    QuestionOption qo1420 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,optionCd:'e'
        ,optionText:'eGFR 45 mL/分/1.73 m2未満'
        ,correctType:0);
    db.insertquestionoption(qo1420);
    QuestionOption qo1421 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,optionCd:'a'
        ,optionText:'頻　尿'
        ,correctType:0);
    db.insertquestionoption(qo1421);
    QuestionOption qo1422 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,optionCd:'b'
        ,optionText:'排尿時痛'
        ,correctType:0);
    db.insertquestionoption(qo1422);
    QuestionOption qo1423 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,optionCd:'c'
        ,optionText:'残尿感'
        ,correctType:0);
    db.insertquestionoption(qo1423);
    QuestionOption qo1424 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,optionCd:'d'
        ,optionText:'尿道分泌物'
        ,correctType:1);
    db.insertquestionoption(qo1424);
    QuestionOption qo1425 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,optionCd:'e'
        ,optionText:'尿意切迫感'
        ,correctType:0);
    db.insertquestionoption(qo1425);
    QuestionOption qo1426 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,optionCd:'a'
        ,optionText:'二次予防に相当する。'
        ,correctType:0);
    db.insertquestionoption(qo1426);
    QuestionOption qo1427 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,optionCd:'b'
        ,optionText:'昏睡状態の患者は適応外である。'
        ,correctType:0);
    db.insertquestionoption(qo1427);
    QuestionOption qo1428 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,optionCd:'c'
        ,optionText:'時間をかければ機能は完全回復する。'
        ,correctType:0);
    db.insertquestionoption(qo1428);
    QuestionOption qo1429 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,optionCd:'d'
        ,optionText:'病院への通院または入院が必要である。'
        ,correctType:0);
    db.insertquestionoption(qo1429);
    QuestionOption qo1430 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,optionCd:'e'
        ,optionText:'疾病の治癒よりも障害の軽減を主眼とする。'
        ,correctType:1);
    db.insertquestionoption(qo1430);
    QuestionOption qo1431 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,optionCd:'a'
        ,optionText:'失調歩行'
        ,correctType:0);
    db.insertquestionoption(qo1431);
    QuestionOption qo1432 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,optionCd:'b'
        ,optionText:'小刻み歩行'
        ,correctType:0);
    db.insertquestionoption(qo1432);
    QuestionOption qo1433 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,optionCd:'c'
        ,optionText:'はさみ脚歩行'
        ,correctType:0);
    db.insertquestionoption(qo1433);
    QuestionOption qo1434 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,optionCd:'d'
        ,optionText:'ぶん回し歩行'
        ,correctType:1);
    db.insertquestionoption(qo1434);
    QuestionOption qo1435 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,optionCd:'e'
        ,optionText:'Trendelenburg歩行'
        ,correctType:0);
    db.insertquestionoption(qo1435);
    QuestionOption qo1436 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,optionCd:'a'
        ,optionText:'既往歴をすべて述べる。'
        ,correctType:0);
    db.insertquestionoption(qo1436);
    QuestionOption qo1437 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,optionCd:'b'
        ,optionText:'以前の入院歴をすべて述べる。'
        ,correctType:0);
    db.insertquestionoption(qo1437);
    QuestionOption qo1438 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,optionCd:'c'
        ,optionText:'簡潔に要点を押さえた発表をする。'
        ,correctType:1);
    db.insertquestionoption(qo1438);
    QuestionOption qo1439 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,optionCd:'d'
        ,optionText:'まず今後の退院予定を，次に現在の治療内容を述べる。'
        ,correctType:0);
    db.insertquestionoption(qo1439);
    QuestionOption qo1440 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,optionCd:'e'
        ,optionText:'原則として専門用語は使用しない。'
        ,correctType:0);
    db.insertquestionoption(qo1440);
    QuestionOption qo1441 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,optionCd:'a'
        ,optionText:'酸素投与'
        ,correctType:1);
    db.insertquestionoption(qo1441);
    QuestionOption qo1442 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,optionCd:'b'
        ,optionText:'強心薬の投与'
        ,correctType:0);
    db.insertquestionoption(qo1442);
    QuestionOption qo1443 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,optionCd:'c'
        ,optionText:'生理食塩液の急速輸液'
        ,correctType:0);
    db.insertquestionoption(qo1443);
    QuestionOption qo1444 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,optionCd:'d'
        ,optionText:'アルブミン製剤の投与'
        ,correctType:0);
    db.insertquestionoption(qo1444);
    QuestionOption qo1445 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,optionCd:'e'
        ,optionText:'硫酸アトロピンの投与'
        ,correctType:0);
    db.insertquestionoption(qo1445);
    QuestionOption qo1446 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,optionCd:'a'
        ,optionText:'全身けいれん発作'
        ,correctType:0);
    db.insertquestionoption(qo1446);
    QuestionOption qo1447 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,optionCd:'b'
        ,optionText:'重症急性膵炎'
        ,correctType:0);
    db.insertquestionoption(qo1447);
    QuestionOption qo1448 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,optionCd:'c'
        ,optionText:'食道静脈瘤'
        ,correctType:0);
    db.insertquestionoption(qo1448);
    QuestionOption qo1449 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,optionCd:'d'
        ,optionText:'低尿酸血症'
        ,correctType:1);
    db.insertquestionoption(qo1449);
    QuestionOption qo1450 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,optionCd:'e'
        ,optionText:'突然死'
        ,correctType:0);
    db.insertquestionoption(qo1450);
    QuestionOption qo1451 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,optionCd:'a'
        ,optionText:'複　視'
        ,correctType:0);
    db.insertquestionoption(qo1451);
    QuestionOption qo1452 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,optionCd:'b'
        ,optionText:'片麻痺'
        ,correctType:1);
    db.insertquestionoption(qo1452);
    QuestionOption qo1453 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,optionCd:'c'
        ,optionText:'嚥下障害'
        ,correctType:0);
    db.insertquestionoption(qo1453);
    QuestionOption qo1454 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,optionCd:'d'
        ,optionText:'両耳側半盲'
        ,correctType:0);
    db.insertquestionoption(qo1454);
    QuestionOption qo1455 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,optionCd:'e'
        ,optionText:'回転性めまい'
        ,correctType:0);
    db.insertquestionoption(qo1455);
    QuestionOption qo1456 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,optionCd:'a'
        ,optionText:'一過性脳虚血発作'
        ,correctType:1);
    db.insertquestionoption(qo1456);
    QuestionOption qo1457 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,optionCd:'b'
        ,optionText:'過敏性腸症候群'
        ,correctType:0);
    db.insertquestionoption(qo1457);
    QuestionOption qo1458 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,optionCd:'c'
        ,optionText:'鉄欠乏性貧血'
        ,correctType:0);
    db.insertquestionoption(qo1458);
    QuestionOption qo1459 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,optionCd:'d'
        ,optionText:'緊張型頭痛'
        ,correctType:0);
    db.insertquestionoption(qo1459);
    QuestionOption qo1460 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,optionCd:'e'
        ,optionText:'不安障害'
        ,correctType:0);
    db.insertquestionoption(qo1460);
    QuestionOption qo1461 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,optionCd:'a'
        ,optionText:'耳閉塞感'
        ,correctType:0);
    db.insertquestionoption(qo1461);
    QuestionOption qo1462 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,optionCd:'b'
        ,optionText:'難聴の無自覚'
        ,correctType:0);
    db.insertquestionoption(qo1462);
    QuestionOption qo1463 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,optionCd:'c'
        ,optionText:'夜間の耳鳴り'
        ,correctType:0);
    db.insertquestionoption(qo1463);
    QuestionOption qo1464 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,optionCd:'d'
        ,optionText:'音の方向感覚欠如'
        ,correctType:0);
    db.insertquestionoption(qo1464);
    QuestionOption qo1465 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,optionCd:'e'
        ,optionText:'言語発達遅滞'
        ,correctType:1);
    db.insertquestionoption(qo1465);
    QuestionOption qo1466 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,optionCd:'a'
        ,optionText:'胆石症'
        ,correctType:0);
    db.insertquestionoption(qo1466);
    QuestionOption qo1467 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,optionCd:'b'
        ,optionText:'急性肝炎'
        ,correctType:1);
    db.insertquestionoption(qo1467);
    QuestionOption qo1468 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,optionCd:'c'
        ,optionText:'膵頭部癌'
        ,correctType:0);
    db.insertquestionoption(qo1468);
    QuestionOption qo1469 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,optionCd:'d'
        ,optionText:'溶血性貧血'
        ,correctType:0);
    db.insertquestionoption(qo1469);
    QuestionOption qo1470 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,optionCd:'e'
        ,optionText:'Crigler-Najjar症候群'
        ,correctType:0);
    db.insertquestionoption(qo1470);
    QuestionOption qo1471 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,optionCd:'a'
        ,optionText:'カテーテル血栓症'
        ,correctType:0);
    db.insertquestionoption(qo1471);
    QuestionOption qo1472 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,optionCd:'b'
        ,optionText:'カテーテル感染'
        ,correctType:0);
    db.insertquestionoption(qo1472);
    QuestionOption qo1473 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,optionCd:'c'
        ,optionText:'カテーテル断裂'
        ,correctType:0);
    db.insertquestionoption(qo1473);
    QuestionOption qo1474 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,optionCd:'d'
        ,optionText:'出　血'
        ,correctType:0);
    db.insertquestionoption(qo1474);
    QuestionOption qo1475 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,optionCd:'e'
        ,optionText:'気　胸'
        ,correctType:1);
    db.insertquestionoption(qo1475);
    QuestionOption qo1476 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,optionCd:'a'
        ,optionText:'応召義務'
        ,correctType:0);
    db.insertquestionoption(qo1476);
    QuestionOption qo1477 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,optionCd:'b'
        ,optionText:'守秘義務'
        ,correctType:1);
    db.insertquestionoption(qo1477);
    QuestionOption qo1478 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,optionCd:'c'
        ,optionText:'処方箋交付の義務'
        ,correctType:0);
    db.insertquestionoption(qo1478);
    QuestionOption qo1479 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,optionCd:'d'
        ,optionText:'異状死体等の届出義務'
        ,correctType:0);
    db.insertquestionoption(qo1479);
    QuestionOption qo1480 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,optionCd:'e'
        ,optionText:'診療録の記載・保存の義務'
        ,correctType:0);
    db.insertquestionoption(qo1480);
    QuestionOption qo1481 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,optionCd:'a'
        ,optionText:'副腎皮質ステロイド使用'
        ,correctType:0);
    db.insertquestionoption(qo1481);
    QuestionOption qo1482 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,optionCd:'b'
        ,optionText:'既存骨折'
        ,correctType:0);
    db.insertquestionoption(qo1482);
    QuestionOption qo1483 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,optionCd:'c'
        ,optionText:'運　動'
        ,correctType:1);
    db.insertquestionoption(qo1483);
    QuestionOption qo1484 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,optionCd:'d'
        ,optionText:'喫　煙'
        ,correctType:0);
    db.insertquestionoption(qo1484);
    QuestionOption qo1485 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,optionCd:'e'
        ,optionText:'飲　酒'
        ,correctType:0);
    db.insertquestionoption(qo1485);
    QuestionOption qo1486 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,optionCd:'a'
        ,optionText:'α2β2'
        ,correctType:1);
    db.insertquestionoption(qo1486);
    QuestionOption qo1487 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,optionCd:'b'
        ,optionText:'α2δ2'
        ,correctType:0);
    db.insertquestionoption(qo1487);
    QuestionOption qo1488 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,optionCd:'c'
        ,optionText:'α2γ2'
        ,correctType:0);
    db.insertquestionoption(qo1488);
    QuestionOption qo1489 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,optionCd:'d'
        ,optionText:'β2γ2'
        ,correctType:0);
    db.insertquestionoption(qo1489);
    QuestionOption qo1490 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,optionCd:'e'
        ,optionText:'β4'
        ,correctType:0);
    db.insertquestionoption(qo1490);
    QuestionOption qo1491 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,optionCd:'a'
        ,optionText:'自分の行動を批判する声が聞こえる。'
        ,correctType:0);
    db.insertquestionoption(qo1491);
    QuestionOption qo1492 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,optionCd:'b'
        ,optionText:'自分の考えが他の人に知れ渡っていると考える。'
        ,correctType:0);
    db.insertquestionoption(qo1492);
    QuestionOption qo1493 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,optionCd:'c'
        ,optionText:'周りの風景が新しい意味を帯びて何か不気味に感じる。'
        ,correctType:0);
    db.insertquestionoption(qo1493);
    QuestionOption qo1494 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,optionCd:'d'
        ,optionText:'自分の体が自分の意思ではなく他人によって動かされていると感じる。'
        ,correctType:0);
    db.insertquestionoption(qo1494);
    QuestionOption qo1495 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,optionCd:'e'
        ,optionText:'隣に座っている人の些細な身振りをみて，自分に向けられたいやがらせと考える。'
        ,correctType:1);
    db.insertquestionoption(qo1495);
    QuestionOption qo1496 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,optionCd:'a'
        ,optionText:'「入院して点滴しましょう」'
        ,correctType:1);
    db.insertquestionoption(qo1496);
    QuestionOption qo1497 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,optionCd:'b'
        ,optionText:'「中絶した方が安全だと思います」'
        ,correctType:0);
    db.insertquestionoption(qo1497);
    QuestionOption qo1498 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,optionCd:'c'
        ,optionText:'「外来でビタミン剤を注射しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1498);
    QuestionOption qo1499 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,optionCd:'d'
        ,optionText:'「食事療法とインスリン注射が必要になります」'
        ,correctType:0);
    db.insertquestionoption(qo1499);
    QuestionOption qo1500 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,optionCd:'e'
        ,optionText:'「通常の妊娠の経過ですから心配はいりません」'
        ,correctType:0);
    db.insertquestionoption(qo1500);
    QuestionOption qo1501 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,optionCd:'a'
        ,optionText:'骨盤内炎症性疾患'
        ,correctType:0);
    db.insertquestionoption(qo1501);
    QuestionOption qo1502 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,optionCd:'b'
        ,optionText:'子宮腺筋症'
        ,correctType:0);
    db.insertquestionoption(qo1502);
    QuestionOption qo1503 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,optionCd:'c'
        ,optionText:'子宮体癌'
        ,correctType:1);
    db.insertquestionoption(qo1503);
    QuestionOption qo1504 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,optionCd:'d'
        ,optionText:'子宮筋腫'
        ,correctType:0);
    db.insertquestionoption(qo1504);
    QuestionOption qo1505 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,optionCd:'e'
        ,optionText:'卵巣癌'
        ,correctType:0);
    db.insertquestionoption(qo1505);
    QuestionOption qo1506 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,optionCd:'a'
        ,optionText:'呼吸数'
        ,correctType:0);
    db.insertquestionoption(qo1506);
    QuestionOption qo1507 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,optionCd:'b'
        ,optionText:'酸素飽和度'
        ,correctType:0);
    db.insertquestionoption(qo1507);
    QuestionOption qo1508 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,optionCd:'c'
        ,optionText:'心拍数'
        ,correctType:0);
    db.insertquestionoption(qo1508);
    QuestionOption qo1509 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,optionCd:'d'
        ,optionText:'血　圧'
        ,correctType:1);
    db.insertquestionoption(qo1509);
    QuestionOption qo1510 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,optionCd:'e'
        ,optionText:'体　温'
        ,correctType:0);
    db.insertquestionoption(qo1510);
    QuestionOption qo1511 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,optionCd:'a'
        ,optionText:'ST合剤'
        ,correctType:1);
    db.insertquestionoption(qo1511);
    QuestionOption qo1512 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,optionCd:'b'
        ,optionText:'クラリスロマイシン'
        ,correctType:0);
    db.insertquestionoption(qo1512);
    QuestionOption qo1513 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,optionCd:'c'
        ,optionText:'メトロニダゾール'
        ,correctType:0);
    db.insertquestionoption(qo1513);
    QuestionOption qo1514 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,optionCd:'d'
        ,optionText:'リファンピシン'
        ,correctType:0);
    db.insertquestionoption(qo1514);
    QuestionOption qo1515 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,optionCd:'e'
        ,optionText:'レムデシビル'
        ,correctType:0);
    db.insertquestionoption(qo1515);
    QuestionOption qo1516 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,optionCd:'a'
        ,optionText:'バッグバルブマスク換気'
        ,correctType:0);
    db.insertquestionoption(qo1516);
    QuestionOption qo1517 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,optionCd:'b'
        ,optionText:'アドレナリン投与'
        ,correctType:0);
    db.insertquestionoption(qo1517);
    QuestionOption qo1518 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,optionCd:'c'
        ,optionText:'胸骨圧迫'
        ,correctType:0);
    db.insertquestionoption(qo1518);
    QuestionOption qo1519 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,optionCd:'d'
        ,optionText:'気管挿管'
        ,correctType:0);
    db.insertquestionoption(qo1519);
    QuestionOption qo1520 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,optionCd:'e'
        ,optionText:'保　湿'
        ,correctType:1);
    db.insertquestionoption(qo1520);
    QuestionOption qo1521 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,optionCd:'a'
        ,optionText:'直ちに退院手続きをとる。'
        ,correctType:0);
    db.insertquestionoption(qo1521);
    QuestionOption qo1522 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,optionCd:'b'
        ,optionText:'家族を交えて面談する。'
        ,correctType:1);
    db.insertquestionoption(qo1522);
    QuestionOption qo1523 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,optionCd:'c'
        ,optionText:'入院継続を強く勧める。'
        ,correctType:0);
    db.insertquestionoption(qo1523);
    QuestionOption qo1524 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,optionCd:'d'
        ,optionText:'ケアプランを作成する。'
        ,correctType:0);
    db.insertquestionoption(qo1524);
    QuestionOption qo1525 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,optionCd:'e'
        ,optionText:'介護保険の申請を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1525);
    QuestionOption qo1526 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,optionCd:'a'
        ,optionText:'ニトログリセリン舌下錠投与'
        ,correctType:0);
    db.insertquestionoption(qo1526);
    QuestionOption qo1527 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,optionCd:'b'
        ,optionText:'胸腔ドレーン挿入'
        ,correctType:1);
    db.insertquestionoption(qo1527);
    QuestionOption qo1528 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,optionCd:'c'
        ,optionText:'持続的陽圧呼吸'
        ,correctType:0);
    db.insertquestionoption(qo1528);
    QuestionOption qo1529 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,optionCd:'d'
        ,optionText:'緊急開胸手術'
        ,correctType:0);
    db.insertquestionoption(qo1529);
    QuestionOption qo1530 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,optionCd:'e'
        ,optionText:'経過観察'
        ,correctType:0);
    db.insertquestionoption(qo1530);
    QuestionOption qo1531 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,optionCd:'a'
        ,optionText:'「拒絶反応はすぐに出現するものと忘れたころに出現するものがあります」'
        ,correctType:1);
    db.insertquestionoption(qo1531);
    QuestionOption qo1532 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,optionCd:'b'
        ,optionText:'「移植後3か月以内の死亡原因として最も頻度が高いのは拒絶反応です」'
        ,correctType:0);
    db.insertquestionoption(qo1532);
    QuestionOption qo1533 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,optionCd:'c'
        ,optionText:'「免疫抑制薬は移植後1年程度服用することが予想されます」'
        ,correctType:0);
    db.insertquestionoption(qo1533);
    QuestionOption qo1534 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,optionCd:'d'
        ,optionText:'「順調でも移植後1年は入院することが予想されます」'
        ,correctType:0);
    db.insertquestionoption(qo1534);
    QuestionOption qo1535 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,optionCd:'e'
        ,optionText:'「移植後にC型肝炎が再発することはありません」'
        ,correctType:0);
    db.insertquestionoption(qo1535);
    QuestionOption qo1536 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,optionCd:'a'
        ,optionText:'膀胱鏡'
        ,correctType:0);
    db.insertquestionoption(qo1536);
    QuestionOption qo1537 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,optionCd:'b'
        ,optionText:'腎生検'
        ,correctType:1);
    db.insertquestionoption(qo1537);
    QuestionOption qo1538 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,optionCd:'c'
        ,optionText:'造影CT'
        ,correctType:0);
    db.insertquestionoption(qo1538);
    QuestionOption qo1539 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,optionCd:'d'
        ,optionText:'抗菌薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1539);
    QuestionOption qo1540 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,optionCd:'e'
        ,optionText:'ビグアナイド増量'
        ,correctType:0);
    db.insertquestionoption(qo1540);
    QuestionOption qo1541 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,optionCd:'a'
        ,optionText:'ニトログリセリン静注'
        ,correctType:0);
    db.insertquestionoption(qo1541);
    QuestionOption qo1542 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,optionCd:'b'
        ,optionText:'ベラパミル静注'
        ,correctType:0);
    db.insertquestionoption(qo1542);
    QuestionOption qo1543 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,optionCd:'c'
        ,optionText:'電気ショック'
        ,correctType:0);
    db.insertquestionoption(qo1543);
    QuestionOption qo1544 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,optionCd:'d'
        ,optionText:'胸骨圧迫'
        ,correctType:1);
    db.insertquestionoption(qo1544);
    QuestionOption qo1545 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,optionCd:'e'
        ,optionText:'気管挿管'
        ,correctType:0);
    db.insertquestionoption(qo1545);
    QuestionOption qo1546 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,optionCd:'a'
        ,optionText:'a'
        ,correctType:0);
    db.insertquestionoption(qo1546);
    QuestionOption qo1547 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,optionCd:'b'
        ,optionText:'b'
        ,correctType:0);
    db.insertquestionoption(qo1547);
    QuestionOption qo1548 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,optionCd:'c'
        ,optionText:'c'
        ,correctType:0);
    db.insertquestionoption(qo1548);
    QuestionOption qo1549 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,optionCd:'d'
        ,optionText:'d'
        ,correctType:1);
    db.insertquestionoption(qo1549);
    QuestionOption qo1550 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,optionCd:'e'
        ,optionText:'e'
        ,correctType:0);
    db.insertquestionoption(qo1550);

    QuestionOption qo1551 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,optionCd:'a'
        ,optionText:'肺腺癌'
        ,correctType:0);
    db.insertquestionoption(qo1551);
    QuestionOption qo1552 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,optionCd:'b'
        ,optionText:'緊張性気胸'
        ,correctType:0);
    db.insertquestionoption(qo1552);
    QuestionOption qo1553 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,optionCd:'c'
        ,optionText:'心原性肺水腫'
        ,correctType:0);
    db.insertquestionoption(qo1553);
    QuestionOption qo1554 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,optionCd:'d'
        ,optionText:'急性心筋梗塞'
        ,correctType:0);
    db.insertquestionoption(qo1554);
    QuestionOption qo1555 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,optionCd:'e'
        ,optionText:'急性呼吸窮迫症候群〈ARDS〉'
        ,correctType:1);
    db.insertquestionoption(qo1555);
    QuestionOption qo1556 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,optionCd:'a'
        ,optionText:'硝子体手術'
        ,correctType:0);
    db.insertquestionoption(qo1556);
    QuestionOption qo1557 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,optionCd:'b'
        ,optionText:'網膜光凝固術'
        ,correctType:0);
    db.insertquestionoption(qo1557);
    QuestionOption qo1558 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,optionCd:'c'
        ,optionText:'副腎皮質ステロイド点眼'
        ,correctType:0);
    db.insertquestionoption(qo1558);
    QuestionOption qo1559 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,optionCd:'d'
        ,optionText:'プロスタグランディン点眼'
        ,correctType:1);
    db.insertquestionoption(qo1559);
    QuestionOption qo1560 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,optionCd:'e'
        ,optionText:'抗VEGF抗体硝子体内注射'
        ,correctType:0);
    db.insertquestionoption(qo1560);
    QuestionOption qo1561 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,optionCd:'a'
        ,optionText:'主訴の確認'
        ,correctType:0);
    db.insertquestionoption(qo1561);
    QuestionOption qo1562 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,optionCd:'b'
        ,optionText:'現病歴の聴取'
        ,correctType:0);
    db.insertquestionoption(qo1562);
    QuestionOption qo1563 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,optionCd:'c'
        ,optionText:'家族歴の聴取'
        ,correctType:0);
    db.insertquestionoption(qo1563);
    QuestionOption qo1564 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,optionCd:'d'
        ,optionText:'システムレビュー'
        ,correctType:1);
    db.insertquestionoption(qo1564);
    QuestionOption qo1565 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,optionCd:'e'
        ,optionText:'プロブレムリストの作成'
        ,correctType:0);
    db.insertquestionoption(qo1565);
    QuestionOption qo1566 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,optionCd:'a'
        ,optionText:'アセチルシステイン'
        ,correctType:0);
    db.insertquestionoption(qo1566);
    QuestionOption qo1567 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,optionCd:'b'
        ,optionText:'フルマゼニル'
        ,correctType:0);
    db.insertquestionoption(qo1567);
    QuestionOption qo1568 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,optionCd:'c'
        ,optionText:'アトロピン'
        ,correctType:0);
    db.insertquestionoption(qo1568);
    QuestionOption qo1569 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,optionCd:'d'
        ,optionText:'ナロキソン'
        ,correctType:0);
    db.insertquestionoption(qo1569);
    QuestionOption qo1570 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,optionCd:'e'
        ,optionText:'酸　素'
        ,correctType:1);
    db.insertquestionoption(qo1570);
    QuestionOption qo1571 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,optionCd:'a'
        ,optionText:'ビリルビン'
        ,correctType:0);
    db.insertquestionoption(qo1571);
    QuestionOption qo1572 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,optionCd:'b'
        ,optionText:'ミオグロビン'
        ,correctType:1);
    db.insertquestionoption(qo1572);
    QuestionOption qo1573 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,optionCd:'c'
        ,optionText:'ポルフィリン'
        ,correctType:0);
    db.insertquestionoption(qo1573);
    QuestionOption qo1574 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,optionCd:'d'
        ,optionText:'ウロビリノゲン'
        ,correctType:0);
    db.insertquestionoption(qo1574);
    QuestionOption qo1575 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,optionCd:'e'
        ,optionText:'メトヘモグロビン'
        ,correctType:0);
    db.insertquestionoption(qo1575);
    QuestionOption qo1576 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,optionCd:'a'
        ,optionText:'カリウム含有低張液'
        ,correctType:0);
    db.insertquestionoption(qo1576);
    QuestionOption qo1577 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,optionCd:'b'
        ,optionText:'アミノ酸栄養液'
        ,correctType:0);
    db.insertquestionoption(qo1577);
    QuestionOption qo1578 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,optionCd:'c'
        ,optionText:'5％ブドウ糖液'
        ,correctType:0);
    db.insertquestionoption(qo1578);
    QuestionOption qo1579 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,optionCd:'d'
        ,optionText:'生理食塩液'
        ,correctType:1);
    db.insertquestionoption(qo1579);
    QuestionOption qo1580 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,optionCd:'e'
        ,optionText:'脂肪栄養液'
        ,correctType:0);
    db.insertquestionoption(qo1580);
    QuestionOption qo1581 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,optionCd:'a'
        ,optionText:'喫　煙'
        ,correctType:0);
    db.insertquestionoption(qo1581);
    QuestionOption qo1582 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,optionCd:'b'
        ,optionText:'ストレス'
        ,correctType:0);
    db.insertquestionoption(qo1582);
    QuestionOption qo1583 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,optionCd:'c'
        ,optionText:'NSAID投与'
        ,correctType:0);
    db.insertquestionoption(qo1583);
    QuestionOption qo1584 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,optionCd:'d'
        ,optionText:'アルコール多飲'
        ,correctType:0);
    db.insertquestionoption(qo1584);
    QuestionOption qo1585 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,optionCd:'e'
        ,optionText:'Helicobacter pylori除菌'
        ,correctType:1);
    db.insertquestionoption(qo1585);
    QuestionOption qo1586 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,optionCd:'a'
        ,optionText:'尿中ウロビリノゲン定性反応'
        ,correctType:0);
    db.insertquestionoption(qo1586);
    QuestionOption qo1587 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,optionCd:'b'
        ,optionText:'血清ビタミンB12測定'
        ,correctType:0);
    db.insertquestionoption(qo1587);
    QuestionOption qo1588 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,optionCd:'c'
        ,optionText:'血清フェリチン測定'
        ,correctType:1);
    db.insertquestionoption(qo1588);
    QuestionOption qo1589 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,optionCd:'d'
        ,optionText:'血液型検査'
        ,correctType:0);
    db.insertquestionoption(qo1589);
    QuestionOption qo1590 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,optionCd:'e'
        ,optionText:'骨髄穿刺'
        ,correctType:0);
    db.insertquestionoption(qo1590);
    QuestionOption qo1591 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,optionCd:'a'
        ,optionText:'反射性尿失禁'
        ,correctType:0);
    db.insertquestionoption(qo1591);
    QuestionOption qo1592 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,optionCd:'b'
        ,optionText:'切迫性尿失禁'
        ,correctType:0);
    db.insertquestionoption(qo1592);
    QuestionOption qo1593 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,optionCd:'c'
        ,optionText:'溢流性尿失禁'
        ,correctType:1);
    db.insertquestionoption(qo1593);
    QuestionOption qo1594 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,optionCd:'d'
        ,optionText:'腹圧性尿失禁'
        ,correctType:0);
    db.insertquestionoption(qo1594);
    QuestionOption qo1595 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,optionCd:'e'
        ,optionText:'持続性尿失禁'
        ,correctType:0);
    db.insertquestionoption(qo1595);
    QuestionOption qo1596 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,optionCd:'a'
        ,optionText:'血液透析'
        ,correctType:0);
    db.insertquestionoption(qo1596);
    QuestionOption qo1597 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,optionCd:'b'
        ,optionText:'膀胱切石術'
        ,correctType:0);
    db.insertquestionoption(qo1597);
    QuestionOption qo1598 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,optionCd:'c'
        ,optionText:'α遮断薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1598);
    QuestionOption qo1599 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,optionCd:'d'
        ,optionText:'抗コリン作動薬投与'
        ,correctType:0);
    db.insertquestionoption(qo1599);
    QuestionOption qo1600 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,optionCd:'e'
        ,optionText:'尿道バルーンカテーテル留置'
        ,correctType:1);
    db.insertquestionoption(qo1600);
    QuestionOption qo1601 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,optionCd:'a'
        ,optionText:'10/分'
        ,correctType:0);
    db.insertquestionoption(qo1601);
    QuestionOption qo1602 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,optionCd:'b'
        ,optionText:'25/分'
        ,correctType:0);
    db.insertquestionoption(qo1602);
    QuestionOption qo1603 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,optionCd:'c'
        ,optionText:'40/分'
        ,correctType:1);
    db.insertquestionoption(qo1603);
    QuestionOption qo1604 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,optionCd:'d'
        ,optionText:'55/分'
        ,correctType:0);
    db.insertquestionoption(qo1604);
    QuestionOption qo1605 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,optionCd:'e'
        ,optionText:'70/分'
        ,correctType:0);
    db.insertquestionoption(qo1605);
    QuestionOption qo1606 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,optionCd:'a'
        ,optionText:'アドレナリン'
        ,correctType:0);
    db.insertquestionoption(qo1606);
    QuestionOption qo1607 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,optionCd:'b'
        ,optionText:'グリセロール'
        ,correctType:0);
    db.insertquestionoption(qo1607);
    QuestionOption qo1608 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,optionCd:'c'
        ,optionText:'リドカイン'
        ,correctType:0);
    db.insertquestionoption(qo1608);
    QuestionOption qo1609 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,optionCd:'d'
        ,optionText:'アトロピン'
        ,correctType:1);
    db.insertquestionoption(qo1609);
    QuestionOption qo1610 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,optionCd:'e'
        ,optionText:'ベラパミル'
        ,correctType:0);
    db.insertquestionoption(qo1610);
    QuestionOption qo1611 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,optionCd:'a'
        ,optionText:'IgA'
        ,correctType:0);
    db.insertquestionoption(qo1611);
    QuestionOption qo1612 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,optionCd:'b'
        ,optionText:'IgD'
        ,correctType:0);
    db.insertquestionoption(qo1612);
    QuestionOption qo1613 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,optionCd:'c'
        ,optionText:'IgE'
        ,correctType:1);
    db.insertquestionoption(qo1613);
    QuestionOption qo1614 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,optionCd:'d'
        ,optionText:'IgG'
        ,correctType:0);
    db.insertquestionoption(qo1614);
    QuestionOption qo1615 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,optionCd:'e'
        ,optionText:'IgM'
        ,correctType:0);
    db.insertquestionoption(qo1615);
    QuestionOption qo1616 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,optionCd:'a'
        ,optionText:'β遮断薬静注'
        ,correctType:0);
    db.insertquestionoption(qo1616);
    QuestionOption qo1617 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,optionCd:'b'
        ,optionText:'アドレナリン筋注'
        ,correctType:1);
    db.insertquestionoption(qo1617);
    QuestionOption qo1618 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,optionCd:'c'
        ,optionText:'フルマゼニル静注'
        ,correctType:0);
    db.insertquestionoption(qo1618);
    QuestionOption qo1619 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,optionCd:'d'
        ,optionText:'副腎皮質ステロイド点滴静注'
        ,correctType:0);
    db.insertquestionoption(qo1619);
    QuestionOption qo1620 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,optionCd:'e'
        ,optionText:'免疫グロブリン製剤点滴静注'
        ,correctType:0);
    db.insertquestionoption(qo1620);
    QuestionOption qo1621 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,optionCd:'a'
        ,optionText:'生命保険'
        ,correctType:1);
    db.insertquestionoption(qo1621);
    QuestionOption qo1622 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,optionCd:'b'
        ,optionText:'生活保護'
        ,correctType:0);
    db.insertquestionoption(qo1622);
    QuestionOption qo1623 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,optionCd:'c'
        ,optionText:'国民年金'
        ,correctType:0);
    db.insertquestionoption(qo1623);
    QuestionOption qo1624 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,optionCd:'d'
        ,optionText:'定期予防接種'
        ,correctType:0);
    db.insertquestionoption(qo1624);
    QuestionOption qo1625 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,optionCd:'e'
        ,optionText:'自立支援医療'
        ,correctType:0);
    db.insertquestionoption(qo1625);
    QuestionOption qo1626 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,optionCd:'a'
        ,optionText:'白内障手術'
        ,correctType:0);
    db.insertquestionoption(qo1626);
    QuestionOption qo1627 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,optionCd:'b'
        ,optionText:'硝子体手術'
        ,correctType:0);
    db.insertquestionoption(qo1627);
    QuestionOption qo1628 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,optionCd:'c'
        ,optionText:'翼状片手術'
        ,correctType:0);
    db.insertquestionoption(qo1628);
    QuestionOption qo1629 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,optionCd:'d'
        ,optionText:'角膜移植手術'
        ,correctType:1);
    db.insertquestionoption(qo1629);
    QuestionOption qo1630 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,optionCd:'e'
        ,optionText:'緑内障（線維柱帯切除術）手術'
        ,correctType:0);
    db.insertquestionoption(qo1630);
    QuestionOption qo1631 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,optionCd:'a'
        ,optionText:'少子高齢化による世界全体の将来人口の減少が懸念されている。'
        ,correctType:0);
    db.insertquestionoption(qo1631);
    QuestionOption qo1632 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,optionCd:'b'
        ,optionText:'発展途上国では医療を受けられないために死亡する児が多い。'
        ,correctType:1);
    db.insertquestionoption(qo1632);
    QuestionOption qo1633 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,optionCd:'c'
        ,optionText:'発展途上国では慢性疾患は問題となっていない。'
        ,correctType:0);
    db.insertquestionoption(qo1633);
    QuestionOption qo1634 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,optionCd:'d'
        ,optionText:'先進国において自殺は死因の上位を占める。'
        ,correctType:0);
    db.insertquestionoption(qo1634);
    QuestionOption qo1635 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,optionCd:'e'
        ,optionText:'ポリオは根絶した。'
        ,correctType:0);
    db.insertquestionoption(qo1635);
    QuestionOption qo1636 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,optionCd:'a'
        ,optionText:'Moro反射 ―――― 手を伸ばして物をつかむ'
        ,correctType:0);
    db.insertquestionoption(qo1636);
    QuestionOption qo1637 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,optionCd:'b'
        ,optionText:'足把握反射 ―――― はいはいができる'
        ,correctType:0);
    db.insertquestionoption(qo1637);
    QuestionOption qo1638 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,optionCd:'c'
        ,optionText:'手掌把握反射 ―――― 伝い歩きができる'
        ,correctType:0);
    db.insertquestionoption(qo1638);
    QuestionOption qo1639 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,optionCd:'d'
        ,optionText:'緊張性頸反射 ―――― 寝返りができる'
        ,correctType:1);
    db.insertquestionoption(qo1639);
    QuestionOption qo1640 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,optionCd:'e'
        ,optionText:'パラシュート反射 ―――― 首がすわる'
        ,correctType:0);
    db.insertquestionoption(qo1640);
    QuestionOption qo1641 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,optionCd:'a'
        ,optionText:'麻　疹 ―――― 発疹が消えるまで'
        ,correctType:0);
    db.insertquestionoption(qo1641);
    QuestionOption qo1642 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,optionCd:'b'
        ,optionText:'風　疹 ―――― すべての発疹が痂皮化するまで'
        ,correctType:0);
    db.insertquestionoption(qo1642);
    QuestionOption qo1643 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,optionCd:'c'
        ,optionText:'百日咳 ―――― 特有の咳が消失するまで，または5日間の適正な抗菌性物質製剤による治療が終了するまで'
        ,correctType:1);
    db.insertquestionoption(qo1643);
    QuestionOption qo1644 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,optionCd:'d'
        ,optionText:'流行性耳下腺炎 ―――― 主症状が消退した後2日を経過するまで'
        ,correctType:0);
    db.insertquestionoption(qo1644);
    QuestionOption qo1645 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,optionCd:'e'
        ,optionText:'インフルエンザ ―――― 発症後3日を経過するまで，または解熱した後2日を経過するまで'
        ,correctType:0);
    db.insertquestionoption(qo1645);
    QuestionOption qo1646 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,optionCd:'a'
        ,optionText:'「妊娠初期のお酒は必ず赤ちゃんに影響があります」'
        ,correctType:0);
    db.insertquestionoption(qo1646);
    QuestionOption qo1647 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,optionCd:'b'
        ,optionText:'「赤ちゃんに奇形が起こる可能性があります」'
        ,correctType:1);
    db.insertquestionoption(qo1647);
    QuestionOption qo1648 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,optionCd:'c'
        ,optionText:'「妊娠後期までお酒は控えましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1648);
    QuestionOption qo1649 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,optionCd:'d'
        ,optionText:'「休肝日を週2日設けましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1649);
    QuestionOption qo1650 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,optionCd:'e'
        ,optionText:'「ビールは1杯にしてください」'
        ,correctType:0);
    db.insertquestionoption(qo1650);
    QuestionOption qo1651 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,optionCd:'a'
        ,optionText:'ジフテリアトキソイド'
        ,correctType:0);
    db.insertquestionoption(qo1651);
    QuestionOption qo1652 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,optionCd:'b'
        ,optionText:'破傷風トキソイド'
        ,correctType:0);
    db.insertquestionoption(qo1652);
    QuestionOption qo1653 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,optionCd:'c'
        ,optionText:'インフルエンザ'
        ,correctType:0);
    db.insertquestionoption(qo1653);
    QuestionOption qo1654 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,optionCd:'d'
        ,optionText:'A型肝炎'
        ,correctType:0);
    db.insertquestionoption(qo1654);
    QuestionOption qo1655 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,optionCd:'e'
        ,optionText:'風　疹'
        ,correctType:1);
    db.insertquestionoption(qo1655);
    QuestionOption qo1656 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,optionCd:'a'
        ,optionText:'IgA'
        ,correctType:0);
    db.insertquestionoption(qo1656);
    QuestionOption qo1657 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,optionCd:'b'
        ,optionText:'IgD'
        ,correctType:0);
    db.insertquestionoption(qo1657);
    QuestionOption qo1658 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,optionCd:'c'
        ,optionText:'IgE'
        ,correctType:0);
    db.insertquestionoption(qo1658);
    QuestionOption qo1659 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,optionCd:'d'
        ,optionText:'IgG'
        ,correctType:1);
    db.insertquestionoption(qo1659);
    QuestionOption qo1660 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,optionCd:'e'
        ,optionText:'IgM'
        ,correctType:0);
    db.insertquestionoption(qo1660);
    QuestionOption qo1661 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,optionCd:'a'
        ,optionText:'ヒトT細胞白血病ウイルス'
        ,correctType:0);
    db.insertquestionoption(qo1661);
    QuestionOption qo1662 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,optionCd:'b'
        ,optionText:'ヒト免疫不全ウイルス'
        ,correctType:1);
    db.insertquestionoption(qo1662);
    QuestionOption qo1663 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,optionCd:'c'
        ,optionText:'単純ヘルペスウイルス'
        ,correctType:0);
    db.insertquestionoption(qo1663);
    QuestionOption qo1664 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,optionCd:'d'
        ,optionText:'B型肝炎ウイルス'
        ,correctType:0);
    db.insertquestionoption(qo1664);
    QuestionOption qo1665 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,optionCd:'e'
        ,optionText:'風疹ウイルス'
        ,correctType:0);
    db.insertquestionoption(qo1665);
    QuestionOption qo1666 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,optionCd:'a'
        ,optionText:'頸部囊胞状リンパ管腫'
        ,correctType:0);
    db.insertquestionoption(qo1666);
    QuestionOption qo1667 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,optionCd:'b'
        ,optionText:'Hirschsprung病'
        ,correctType:1);
    db.insertquestionoption(qo1667);
    QuestionOption qo1668 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,optionCd:'c'
        ,optionText:'横隔膜ヘルニア'
        ,correctType:0);
    db.insertquestionoption(qo1668);
    QuestionOption qo1669 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,optionCd:'d'
        ,optionText:'十二指腸閉鎖'
        ,correctType:0);
    db.insertquestionoption(qo1669);
    QuestionOption qo1670 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,optionCd:'e'
        ,optionText:'小腸閉鎖'
        ,correctType:0);
    db.insertquestionoption(qo1670);
    QuestionOption qo1671 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,optionCd:'a'
        ,optionText:'所長は医師でなければならない。'
        ,correctType:1);
    db.insertquestionoption(qo1671);
    QuestionOption qo1672 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,optionCd:'b'
        ,optionText:'児童福祉法に基づいて設置される。'
        ,correctType:0);
    db.insertquestionoption(qo1672);
    QuestionOption qo1673 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,optionCd:'c'
        ,optionText:'発達障害による育児困難の相談も行う。'
        ,correctType:0);
    db.insertquestionoption(qo1673);
    QuestionOption qo1674 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,optionCd:'d'
        ,optionText:'各都道府県，政令指定都市に設置義務がある。'
        ,correctType:0);
    db.insertquestionoption(qo1674);
    QuestionOption qo1675 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,optionCd:'e'
        ,optionText:'医師，児童心理司，児童福祉司などの専門職員が配置される。'
        ,correctType:0);
    db.insertquestionoption(qo1675);
    QuestionOption qo1676 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,optionCd:'a'
        ,optionText:'前頭葉機能検査〈FAB〉'
        ,correctType:0);
    db.insertquestionoption(qo1676);
    QuestionOption qo1677 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,optionCd:'b'
        ,optionText:'Minnesota多面人格検査〈MMPI〉'
        ,correctType:0);
    db.insertquestionoption(qo1677);
    QuestionOption qo1678 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,optionCd:'c'
        ,optionText:'Hamiltonうつ病評価尺度'
        ,correctType:0);
    db.insertquestionoption(qo1678);
    QuestionOption qo1679 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,optionCd:'d'
        ,optionText:'状態特性不安検査〈STAI〉'
        ,correctType:0);
    db.insertquestionoption(qo1679);
    QuestionOption qo1680 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,optionCd:'e'
        ,optionText:'Rorschachテスト'
        ,correctType:1);
    db.insertquestionoption(qo1680);
    QuestionOption qo1681 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,optionCd:'a'
        ,optionText:'水　銀'
        ,correctType:0);
    db.insertquestionoption(qo1681);
    QuestionOption qo1682 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,optionCd:'b'
        ,optionText:'大腸菌'
        ,correctType:1);
    db.insertquestionoption(qo1682);
    QuestionOption qo1683 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,optionCd:'c'
        ,optionText:'界面活性剤'
        ,correctType:0);
    db.insertquestionoption(qo1683);
    QuestionOption qo1684 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,optionCd:'d'
        ,optionText:'放射性セシウム'
        ,correctType:0);
    db.insertquestionoption(qo1684);
    QuestionOption qo1685 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,optionCd:'e'
        ,optionText:'クリプトスポリジウム'
        ,correctType:0);
    db.insertquestionoption(qo1685);
    QuestionOption qo1686 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,optionCd:'a'
        ,optionText:'検査前の一食は禁食とする。'
        ,correctType:0);
    db.insertquestionoption(qo1686);
    QuestionOption qo1687 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,optionCd:'b'
        ,optionText:'検査直前に局所麻酔を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1687);
    QuestionOption qo1688 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,optionCd:'c'
        ,optionText:'検査終了直後から飲水を許可する。'
        ,correctType:1);
    db.insertquestionoption(qo1688);
    QuestionOption qo1689 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,optionCd:'d'
        ,optionText:'検査時にはパルスオキシメーターを装着する。'
        ,correctType:0);
    db.insertquestionoption(qo1689);
    QuestionOption qo1690 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,optionCd:'e'
        ,optionText:'検査前に文書でインフォームド・コンセントを得る。'
        ,correctType:0);
    db.insertquestionoption(qo1690);
    QuestionOption qo1691 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,optionCd:'a'
        ,optionText:'裸眼視力1.0未満'
        ,correctType:1);
    db.insertquestionoption(qo1691);
    QuestionOption qo1692 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,optionCd:'b'
        ,optionText:'鼻・副鼻腔疾患'
        ,correctType:0);
    db.insertquestionoption(qo1692);
    QuestionOption qo1693 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,optionCd:'c'
        ,optionText:'尿蛋白検出'
        ,correctType:0);
    db.insertquestionoption(qo1693);
    QuestionOption qo1694 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,optionCd:'d'
        ,optionText:'心電図異常'
        ,correctType:0);
    db.insertquestionoption(qo1694);
    QuestionOption qo1695 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,optionCd:'e'
        ,optionText:'耳疾患'
        ,correctType:0);
    db.insertquestionoption(qo1695);
    QuestionOption qo1696 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,optionCd:'a'
        ,optionText:'インスリンは摂食行動を促進する。'
        ,correctType:0);
    db.insertquestionoption(qo1696);
    QuestionOption qo1697 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,optionCd:'b'
        ,optionText:'飢餓は性周期の異常の原因となる。'
        ,correctType:1);
    db.insertquestionoption(qo1697);
    QuestionOption qo1698 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,optionCd:'c'
        ,optionText:'異化反応はエネルギーを必要とする。'
        ,correctType:0);
    db.insertquestionoption(qo1698);
    QuestionOption qo1699 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,optionCd:'d'
        ,optionText:'コレシストキニンは摂食行動を促進する。'
        ,correctType:0);
    db.insertquestionoption(qo1699);
    QuestionOption qo1700 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,optionCd:'e'
        ,optionText:'食物繊維はエネルギー源の1つである。'
        ,correctType:0);
    db.insertquestionoption(qo1700);
    QuestionOption qo1701 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,optionCd:'a'
        ,optionText:'発光ダイオードを用いた信号機'
        ,correctType:0);
    db.insertquestionoption(qo1701);
    QuestionOption qo1702 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,optionCd:'b'
        ,optionText:'プラスチックレジ袋の有料化'
        ,correctType:0);
    db.insertquestionoption(qo1702);
    QuestionOption qo1703 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,optionCd:'c'
        ,optionText:'幅の広い自動改札機'
        ,correctType:1);
    db.insertquestionoption(qo1703);
    QuestionOption qo1704 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,optionCd:'d'
        ,optionText:'点字ブロック'
        ,correctType:0);
    db.insertquestionoption(qo1704);
    QuestionOption qo1705 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,optionCd:'e'
        ,optionText:'補助犬'
        ,correctType:0);
    db.insertquestionoption(qo1705);
    QuestionOption qo1706 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,optionCd:'a'
        ,optionText:'ビタミンA ―――― 頭蓋内圧亢進'
        ,correctType:1);
    db.insertquestionoption(qo1706);
    QuestionOption qo1707 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,optionCd:'b'
        ,optionText:'ビタミンB6 ―――― 多発神経炎'
        ,correctType:0);
    db.insertquestionoption(qo1707);
    QuestionOption qo1708 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,optionCd:'c'
        ,optionText:'ビタミンC ―――― 壊血病'
        ,correctType:0);
    db.insertquestionoption(qo1708);
    QuestionOption qo1709 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,optionCd:'d'
        ,optionText:'ビタミンD ―――― くる病'
        ,correctType:0);
    db.insertquestionoption(qo1709);
    QuestionOption qo1710 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,optionCd:'e'
        ,optionText:'ニコチン酸 ―――― ペラグラ'
        ,correctType:0);
    db.insertquestionoption(qo1710);
    QuestionOption qo1711 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,optionCd:'a'
        ,optionText:'身体活動量の低下'
        ,correctType:0);
    db.insertquestionoption(qo1711);
    QuestionOption qo1712 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,optionCd:'b'
        ,optionText:'歩行速度の低下'
        ,correctType:0);
    db.insertquestionoption(qo1712);
    QuestionOption qo1713 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,optionCd:'c'
        ,optionText:'熟睡感の欠如'
        ,correctType:1);
    db.insertquestionoption(qo1713);
    QuestionOption qo1714 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,optionCd:'d'
        ,optionText:'疲れやすさ'
        ,correctType:0);
    db.insertquestionoption(qo1714);
    QuestionOption qo1715 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,optionCd:'e'
        ,optionText:'体重減少'
        ,correctType:0);
    db.insertquestionoption(qo1715);
    QuestionOption qo1716 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,optionCd:'a'
        ,optionText:'①'
        ,correctType:0);
    db.insertquestionoption(qo1716);
    QuestionOption qo1717 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,optionCd:'b'
        ,optionText:'②'
        ,correctType:0);
    db.insertquestionoption(qo1717);
    QuestionOption qo1718 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,optionCd:'c'
        ,optionText:'③'
        ,correctType:0);
    db.insertquestionoption(qo1718);
    QuestionOption qo1719 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,optionCd:'d'
        ,optionText:'④'
        ,correctType:1);
    db.insertquestionoption(qo1719);
    QuestionOption qo1720 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,optionCd:'e'
        ,optionText:'⑤'
        ,correctType:0);
    db.insertquestionoption(qo1720);
    QuestionOption qo1721 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,optionCd:'a'
        ,optionText:'5 mSv／3か月'
        ,correctType:1);
    db.insertquestionoption(qo1721);
    QuestionOption qo1722 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,optionCd:'b'
        ,optionText:'20 mSv／1年'
        ,correctType:0);
    db.insertquestionoption(qo1722);
    QuestionOption qo1723 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,optionCd:'c'
        ,optionText:'50 mSv／1年'
        ,correctType:0);
    db.insertquestionoption(qo1723);
    QuestionOption qo1724 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,optionCd:'d'
        ,optionText:'100 mSv／5年'
        ,correctType:0);
    db.insertquestionoption(qo1724);
    QuestionOption qo1725 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,optionCd:'e'
        ,optionText:'100 mSv／回'
        ,correctType:0);
    db.insertquestionoption(qo1725);
    QuestionOption qo1726 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,optionCd:'a'
        ,optionText:'アリピプラゾール ―――― アカシジア'
        ,correctType:0);
    db.insertquestionoption(qo1726);
    QuestionOption qo1727 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,optionCd:'b'
        ,optionText:'ラモトリギン ―――― 薬　疹'
        ,correctType:0);
    db.insertquestionoption(qo1727);
    QuestionOption qo1728 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,optionCd:'c'
        ,optionText:'炭酸リチウム ―――― 傾　眠'
        ,correctType:0);
    db.insertquestionoption(qo1728);
    QuestionOption qo1729 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,optionCd:'d'
        ,optionText:'オランザピン ―――― 低血糖'
        ,correctType:1);
    db.insertquestionoption(qo1729);
    QuestionOption qo1730 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,optionCd:'e'
        ,optionText:'バルプロ酸 ―――― 催奇形性'
        ,correctType:0);
    db.insertquestionoption(qo1730);
    QuestionOption qo1731 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,optionCd:'a'
        ,optionText:'全身性エリテマトーデス〈SLE〉 ―――― 抗Sm抗体'
        ,correctType:1);
    db.insertquestionoption(qo1731);
    QuestionOption qo1732 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,optionCd:'b'
        ,optionText:'混合性結合組織病 ―――― 抗SS-B抗体'
        ,correctType:0);
    db.insertquestionoption(qo1732);
    QuestionOption qo1733 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,optionCd:'c'
        ,optionText:'Sjögren症候群 ―――― 抗ARS抗体'
        ,correctType:0);
    db.insertquestionoption(qo1733);
    QuestionOption qo1734 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,optionCd:'d'
        ,optionText:'全身性強皮症 ―――― 抗Mi-2抗体'
        ,correctType:0);
    db.insertquestionoption(qo1734);
    QuestionOption qo1735 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,optionCd:'e'
        ,optionText:'皮膚筋炎 ―――― 抗Scl-70抗体'
        ,correctType:0);
    db.insertquestionoption(qo1735);
    QuestionOption qo1736 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,optionCd:'a'
        ,optionText:'精祖細胞から精子への分化は精巣上体内で起こる。'
        ,correctType:1);
    db.insertquestionoption(qo1736);
    QuestionOption qo1737 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,optionCd:'b'
        ,optionText:'Sertoli細胞は濾胞刺激ホルモンの支配を受ける。'
        ,correctType:0);
    db.insertquestionoption(qo1737);
    QuestionOption qo1738 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,optionCd:'c'
        ,optionText:'勃起は副交感神経の興奮によって起こる。'
        ,correctType:0);
    db.insertquestionoption(qo1738);
    QuestionOption qo1739 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,optionCd:'d'
        ,optionText:'Leydig細胞は男性ホルモンを分泌する。'
        ,correctType:0);
    db.insertquestionoption(qo1739);
    QuestionOption qo1740 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,optionCd:'e'
        ,optionText:'射精は交感神経の興奮によって起こる。'
        ,correctType:0);
    db.insertquestionoption(qo1740);
    QuestionOption qo1741 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,optionCd:'a'
        ,optionText:'4週'
        ,correctType:0);
    db.insertquestionoption(qo1741);
    QuestionOption qo1742 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,optionCd:'b'
        ,optionText:'6週'
        ,correctType:0);
    db.insertquestionoption(qo1742);
    QuestionOption qo1743 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,optionCd:'c'
        ,optionText:'8週'
        ,correctType:0);
    db.insertquestionoption(qo1743);
    QuestionOption qo1744 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,optionCd:'d'
        ,optionText:'10週'
        ,correctType:1);
    db.insertquestionoption(qo1744);
    QuestionOption qo1745 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,optionCd:'e'
        ,optionText:'12週'
        ,correctType:0);
    db.insertquestionoption(qo1745);
    QuestionOption qo1746 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,optionCd:'a'
        ,optionText:'障害者に対する医療'
        ,correctType:0);
    db.insertquestionoption(qo1746);
    QuestionOption qo1747 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,optionCd:'b'
        ,optionText:'災害時における医療'
        ,correctType:1);
    db.insertquestionoption(qo1747);
    QuestionOption qo1748 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,optionCd:'c'
        ,optionText:'在日外国人への医療'
        ,correctType:0);
    db.insertquestionoption(qo1748);
    QuestionOption qo1749 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,optionCd:'d'
        ,optionText:'移植医療の推進'
        ,correctType:0);
    db.insertquestionoption(qo1749);
    QuestionOption qo1750 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,optionCd:'e'
        ,optionText:'へき地の医療'
        ,correctType:1);
    db.insertquestionoption(qo1750);
    QuestionOption qo1751 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,optionCd:'a'
        ,optionText:'徒手筋力テスト'
        ,correctType:0);
    db.insertquestionoption(qo1751);
    QuestionOption qo1752 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,optionCd:'b'
        ,optionText:'Romberg徴候'
        ,correctType:0);
    db.insertquestionoption(qo1752);
    QuestionOption qo1753 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,optionCd:'c'
        ,optionText:'Babinski徴候'
        ,correctType:1);
    db.insertquestionoption(qo1753);
    QuestionOption qo1754 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,optionCd:'d'
        ,optionText:'深部腱反射'
        ,correctType:1);
    db.insertquestionoption(qo1754);
    QuestionOption qo1755 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,optionCd:'e'
        ,optionText:'踵-膝試験'
        ,correctType:0);
    db.insertquestionoption(qo1755);
    QuestionOption qo1756 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,optionCd:'a'
        ,optionText:'三叉神経'
        ,correctType:0);
    db.insertquestionoption(qo1756);
    QuestionOption qo1757 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,optionCd:'b'
        ,optionText:'舌咽神経'
        ,correctType:1);
    db.insertquestionoption(qo1757);
    QuestionOption qo1758 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,optionCd:'c'
        ,optionText:'顔面神経'
        ,correctType:1);
    db.insertquestionoption(qo1758);
    QuestionOption qo1759 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,optionCd:'d'
        ,optionText:'舌下神経'
        ,correctType:0);
    db.insertquestionoption(qo1759);
    QuestionOption qo1760 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,optionCd:'e'
        ,optionText:'迷走神経'
        ,correctType:0);
    db.insertquestionoption(qo1760);
    QuestionOption qo1761 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,optionCd:'a'
        ,optionText:'老化した赤血球はマクロファージによって貪食される。'
        ,correctType:1);
    db.insertquestionoption(qo1761);
    QuestionOption qo1762 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,optionCd:'b'
        ,optionText:'網赤血球は骨髄造血能の指標となる。'
        ,correctType:1);
    db.insertquestionoption(qo1762);
    QuestionOption qo1763 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,optionCd:'c'
        ,optionText:'核を有する細胞である。'
        ,correctType:0);
    db.insertquestionoption(qo1763);
    QuestionOption qo1764 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,optionCd:'d'
        ,optionText:'寿命は90日である。'
        ,correctType:0);
    db.insertquestionoption(qo1764);
    QuestionOption qo1765 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,optionCd:'e'
        ,optionText:'球状を呈する。'
        ,correctType:0);
    db.insertquestionoption(qo1765);
    QuestionOption qo1766 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,optionCd:'a'
        ,optionText:'出産育児一時金の支給'
        ,correctType:0);
    db.insertquestionoption(qo1766);
    QuestionOption qo1767 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,optionCd:'b'
        ,optionText:'乳幼児の定期予防接種'
        ,correctType:0);
    db.insertquestionoption(qo1767);
    QuestionOption qo1768 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,optionCd:'c'
        ,optionText:'母子保健手帳の交付'
        ,correctType:1);
    db.insertquestionoption(qo1768);
    QuestionOption qo1769 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,optionCd:'d'
        ,optionText:'産前産後の休業'
        ,correctType:0);
    db.insertquestionoption(qo1769);
    QuestionOption qo1770 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,optionCd:'e'
        ,optionText:'新生児訪問事業'
        ,correctType:1);
    db.insertquestionoption(qo1770);
    QuestionOption qo1771 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,optionCd:'a'
        ,optionText:'在宅医療を提供している診療所と連携して入院を受け入れる。'
        ,correctType:0);
    db.insertquestionoption(qo1771);
    QuestionOption qo1772 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,optionCd:'b'
        ,optionText:'MRIなど画像診断装置の共同利用を実施する。'
        ,correctType:1);
    db.insertquestionoption(qo1772);
    QuestionOption qo1773 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,optionCd:'c'
        ,optionText:'地域の医療従事者に対する研修を行う。'
        ,correctType:1);
    db.insertquestionoption(qo1773);
    QuestionOption qo1774 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,optionCd:'d'
        ,optionText:'400床以上の病床が必要である。'
        ,correctType:0);
    db.insertquestionoption(qo1774);
    QuestionOption qo1775 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,optionCd:'e'
        ,optionText:'高度先進医療を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1775);
    QuestionOption qo1776 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,optionCd:'a'
        ,optionText:'医療保険に加入する40歳以上65歳未満の介護保険料は医療保険者に徴収する義務がある。'
        ,correctType:1);
    db.insertquestionoption(qo1776);
    QuestionOption qo1777 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,optionCd:'b'
        ,optionText:'自己負担割合は所得にかからわず3割である。'
        ,correctType:0);
    db.insertquestionoption(qo1777);
    QuestionOption qo1778 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,optionCd:'c'
        ,optionText:'福祉用具のレンタルや購入に利用できる。'
        ,correctType:1);
    db.insertquestionoption(qo1778);
    QuestionOption qo1779 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,optionCd:'d'
        ,optionText:'主治医に認定を申請する。'
        ,correctType:0);
    db.insertquestionoption(qo1779);
    QuestionOption qo1780 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,optionCd:'e'
        ,optionText:'保険者は都道府県である。'
        ,correctType:0);
    db.insertquestionoption(qo1780);
    QuestionOption qo1781 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,optionCd:'a'
        ,optionText:'侵襲性髄膜炎菌感染症'
        ,correctType:1);
    db.insertquestionoption(qo1781);
    QuestionOption qo1782 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,optionCd:'b'
        ,optionText:'マイコプラズマ肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1782);
    QuestionOption qo1783 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,optionCd:'c'
        ,optionText:'ノカルジア症'
        ,correctType:0);
    db.insertquestionoption(qo1783);
    QuestionOption qo1784 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,optionCd:'d'
        ,optionText:'破傷風'
        ,correctType:1);
    db.insertquestionoption(qo1784);
    QuestionOption qo1785 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,optionCd:'e'
        ,optionText:'風　疹'
        ,correctType:1);
    db.insertquestionoption(qo1785);
    QuestionOption qo1786 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,optionCd:'a'
        ,optionText:'立ち上がりテスト'
        ,correctType:1);
    db.insertquestionoption(qo1786);
    QuestionOption qo1787 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,optionCd:'b'
        ,optionText:'椎体骨折が2か所以上'
        ,correctType:0);
    db.insertquestionoption(qo1787);
    QuestionOption qo1788 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,optionCd:'c'
        ,optionText:'下肢の2ステップテスト'
        ,correctType:1);
    db.insertquestionoption(qo1788);
    QuestionOption qo1789 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,optionCd:'d'
        ,optionText:'骨密度がYAM値の60％'
        ,correctType:0);
    db.insertquestionoption(qo1789);
    QuestionOption qo1790 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,optionCd:'e'
        ,optionText:'ズボンやパンツを着脱する際の困難度合い'
        ,correctType:1);
    db.insertquestionoption(qo1790);
    QuestionOption qo1791 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,optionCd:'a'
        ,optionText:'ジャガイモなどの芋類'
        ,correctType:0);
    db.insertquestionoption(qo1791);
    QuestionOption qo1792 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,optionCd:'b'
        ,optionText:'柑橘系の果物'
        ,correctType:0);
    db.insertquestionoption(qo1792);
    QuestionOption qo1793 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,optionCd:'c'
        ,optionText:'緑黄色野菜'
        ,correctType:0);
    db.insertquestionoption(qo1793);
    QuestionOption qo1794 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,optionCd:'d'
        ,optionText:'キノコ類'
        ,correctType:1);
    db.insertquestionoption(qo1794);
    QuestionOption qo1795 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,optionCd:'e'
        ,optionText:'海藻類'
        ,correctType:0);
    db.insertquestionoption(qo1795);
    QuestionOption qo1796 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,optionCd:'a'
        ,optionText:'「成長ホルモンの薬を使いましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1796);
    QuestionOption qo1797 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,optionCd:'b'
        ,optionText:'「体質的なものの可能性が高いので経過を観察しましょう」'
        ,correctType:1);
    db.insertquestionoption(qo1797);
    QuestionOption qo1798 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,optionCd:'c'
        ,optionText:'「甲状腺ホルモンに関する検査を行いましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1798);
    QuestionOption qo1799 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,optionCd:'d'
        ,optionText:'「手首のエックス線写真撮影を行いましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1799);
    QuestionOption qo1800 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,optionCd:'e'
        ,optionText:'「成長に関わるホルモンの分泌状態を評価しましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1800);
    QuestionOption qo1801 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,optionCd:'a'
        ,optionText:'離乳食は3回/日として良い。'
        ,correctType:0);
    db.insertquestionoption(qo1801);
    QuestionOption qo1802 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,optionCd:'b'
        ,optionText:'ハチミツを与えてはならない。'
        ,correctType:1);
    db.insertquestionoption(qo1802);
    QuestionOption qo1803 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,optionCd:'c'
        ,optionText:'入浴後に果汁や麦茶を飲ませる。'
        ,correctType:0);
    db.insertquestionoption(qo1803);
    QuestionOption qo1804 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,optionCd:'d'
        ,optionText:'歯ぐきで噛める程度のものが良い。'
        ,correctType:0);
    db.insertquestionoption(qo1804);
    QuestionOption qo1805 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,optionCd:'e'
        ,optionText:'牛乳は200 mL/日くらいならそのまま飲ませても良い。'
        ,correctType:0);
    db.insertquestionoption(qo1805);
    QuestionOption qo1806 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,optionCd:'a'
        ,optionText:'「外来での経過を観察しましょう。けいれんの反復があれば再受診してください」'
        ,correctType:1);
    db.insertquestionoption(qo1806);
    QuestionOption qo1807 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,optionCd:'b'
        ,optionText:'「けいれんの再発がないかを確認するために入院が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1807);
    QuestionOption qo1808 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,optionCd:'c'
        ,optionText:'「頭部CT検査が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1808);
    QuestionOption qo1809 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,optionCd:'d'
        ,optionText:'「血液検査が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1809);
    QuestionOption qo1810 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,optionCd:'e'
        ,optionText:'「抗菌薬を処方します」'
        ,correctType:0);
    db.insertquestionoption(qo1810);
    QuestionOption qo1811 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,optionCd:'a'
        ,optionText:'イソプロテレノール'
        ,correctType:0);
    db.insertquestionoption(qo1811);
    QuestionOption qo1812 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,optionCd:'b'
        ,optionText:'ノルアドレナリン'
        ,correctType:1);
    db.insertquestionoption(qo1812);
    QuestionOption qo1813 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,optionCd:'c'
        ,optionText:'プロプラノロール'
        ,correctType:0);
    db.insertquestionoption(qo1813);
    QuestionOption qo1814 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,optionCd:'d'
        ,optionText:'硫酸アトロピン'
        ,correctType:0);
    db.insertquestionoption(qo1814);
    QuestionOption qo1815 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,optionCd:'e'
        ,optionText:'L-dopa'
        ,correctType:0);
    db.insertquestionoption(qo1815);
    QuestionOption qo1816 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,optionCd:'a'
        ,optionText:'副交感神経遮断薬点眼'
        ,correctType:0);
    db.insertquestionoption(qo1816);
    QuestionOption qo1817 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,optionCd:'b'
        ,optionText:'ビタミンB12内服'
        ,correctType:0);
    db.insertquestionoption(qo1817);
    QuestionOption qo1818 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,optionCd:'c'
        ,optionText:'近方注視訓練'
        ,correctType:0);
    db.insertquestionoption(qo1818);
    QuestionOption qo1819 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,optionCd:'d'
        ,optionText:'眼鏡装着'
        ,correctType:1);
    db.insertquestionoption(qo1819);
    QuestionOption qo1820 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,optionCd:'e'
        ,optionText:'手　術'
        ,correctType:0);
    db.insertquestionoption(qo1820);
    QuestionOption qo1821 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,optionCd:'a'
        ,optionText:'内分泌性浮腫'
        ,correctType:0);
    db.insertquestionoption(qo1821);
    QuestionOption qo1822 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,optionCd:'b'
        ,optionText:'静脈性浮腫'
        ,correctType:1);
    db.insertquestionoption(qo1822);
    QuestionOption qo1823 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,optionCd:'c'
        ,optionText:'特発性浮腫'
        ,correctType:0);
    db.insertquestionoption(qo1823);
    QuestionOption qo1824 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,optionCd:'d'
        ,optionText:'腎性浮腫'
        ,correctType:0);
    db.insertquestionoption(qo1824);
    QuestionOption qo1825 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,optionCd:'e'
        ,optionText:'心性浮腫'
        ,correctType:0);
    db.insertquestionoption(qo1825);
    QuestionOption qo1826 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,optionCd:'a'
        ,optionText:'内視鏡的粘膜切除術'
        ,correctType:0);
    db.insertquestionoption(qo1826);
    QuestionOption qo1827 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,optionCd:'b'
        ,optionText:'動脈塞栓術〈TAE〉'
        ,correctType:0);
    db.insertquestionoption(qo1827);
    QuestionOption qo1828 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,optionCd:'c'
        ,optionText:'内視鏡的硬化療法'
        ,correctType:0);
    db.insertquestionoption(qo1828);
    QuestionOption qo1829 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,optionCd:'d'
        ,optionText:'内視鏡的止血法'
        ,correctType:1);
    db.insertquestionoption(qo1829);
    QuestionOption qo1830 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,optionCd:'e'
        ,optionText:'緊急開腹手術'
        ,correctType:0);
    db.insertquestionoption(qo1830);
    QuestionOption qo1831 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,optionCd:'a'
        ,optionText:'「ご夫婦の染色体検査を行えば，次のお子さんについてある程度予想できます」'
        ,correctType:1);
    db.insertquestionoption(qo1831);
    QuestionOption qo1832 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,optionCd:'b'
        ,optionText:'「妊娠前から葉酸を補充することである程度は予防できます」'
        ,correctType:0);
    db.insertquestionoption(qo1832);
    QuestionOption qo1833 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,optionCd:'c'
        ,optionText:'「次のお子さんに発症することはありません」'
        ,correctType:0);
    db.insertquestionoption(qo1833);
    QuestionOption qo1834 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,optionCd:'d'
        ,optionText:'「奥様の血液中の抗体を測定してみましょう」'
        ,correctType:0);
    db.insertquestionoption(qo1834);
    QuestionOption qo1835 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,optionCd:'e'
        ,optionText:'「次のお子さんにも発症すると思います」'
        ,correctType:0);
    db.insertquestionoption(qo1835);
    QuestionOption qo1836 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,optionCd:'a'
        ,optionText:'pH 7.26　 PaCO2 11.5	　PaO2 94.5　　HCO3－4.9'
        ,correctType:0);
    db.insertquestionoption(qo1836);
    QuestionOption qo1837 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,optionCd:'b'
        ,optionText:'pH 7.52 　PaCO2 22.8　PaO2 99.0　　HCO3－18.2'
        ,correctType:0);
    db.insertquestionoption(qo1837);
    QuestionOption qo1838 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,optionCd:'c'
        ,optionText:'pH 7.40　 PaCO2 39.0	　PaO2 95.8　　HCO3－23.9'
        ,correctType:0);
    db.insertquestionoption(qo1838);
    QuestionOption qo1839 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,optionCd:'d'
        ,optionText:'pH 7.48　 PaCO2 45.2　PaO2	86.1　　HCO3－29.0'
        ,correctType:0);
    db.insertquestionoption(qo1839);
    QuestionOption qo1840 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,optionCd:'e'
        ,optionText:'pH 7.30　 PaCO2 88.0	　PaO2 54.0　　HCO3－39.9'
        ,correctType:1);
    db.insertquestionoption(qo1840);
    QuestionOption qo1841 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,optionCd:'a'
        ,optionText:'結核の既往・家族歴'
        ,correctType:0);
    db.insertquestionoption(qo1841);
    QuestionOption qo1842 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,optionCd:'b'
        ,optionText:'妊娠・出産の予定'
        ,correctType:0);
    db.insertquestionoption(qo1842);
    QuestionOption qo1843 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,optionCd:'c'
        ,optionText:'授乳の有無'
        ,correctType:0);
    db.insertquestionoption(qo1843);
    QuestionOption qo1844 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,optionCd:'d'
        ,optionText:'流産の既往'
        ,correctType:1);
    db.insertquestionoption(qo1844);
    QuestionOption qo1845 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,optionCd:'e'
        ,optionText:'肺病変の有無'
        ,correctType:0);
    db.insertquestionoption(qo1845);
    QuestionOption qo1846 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,optionCd:'a'
        ,optionText:'「予防しないと新生児に難聴などが発生しやすいです」'
        ,correctType:1);
    db.insertquestionoption(qo1846);
    QuestionOption qo1847 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,optionCd:'b'
        ,optionText:'「胎児の心奇形として完全大血管転位が多いです」'
        ,correctType:0);
    db.insertquestionoption(qo1847);
    QuestionOption qo1848 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,optionCd:'c'
        ,optionText:'「風疹ワクチン接種直後から避妊する必要はありません」'
        ,correctType:0);
    db.insertquestionoption(qo1848);
    QuestionOption qo1849 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,optionCd:'d'
        ,optionText:'「妊娠24週以降に風疹にかかると発生しやすいです」'
        ,correctType:0);
    db.insertquestionoption(qo1849);
    QuestionOption qo1850 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,optionCd:'e'
        ,optionText:'「現時点では風疹ワクチンを接種する必要はありません」'
        ,correctType:0);
    db.insertquestionoption(qo1850);
    QuestionOption qo1851 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,optionCd:'a'
        ,optionText:'「今回の痛みはコンタクトレンズとは無関係です」'
        ,correctType:0);
    db.insertquestionoption(qo1851);
    QuestionOption qo1852 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,optionCd:'b'
        ,optionText:'「今回の痛みは虹彩炎という炎症疾患が原因です」'
        ,correctType:0);
    db.insertquestionoption(qo1852);
    QuestionOption qo1853 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,optionCd:'c'
        ,optionText:'「コンタクトレンズ装用は中止して点眼治療を行いましょう」'
        ,correctType:1);
    db.insertquestionoption(qo1853);
    QuestionOption qo1854 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,optionCd:'d'
        ,optionText:'「抗菌薬を点眼しながらコンタクトレンズを装用してください」'
        ,correctType:0);
    db.insertquestionoption(qo1854);
    QuestionOption qo1855 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,optionCd:'e'
        ,optionText:'「角膜に高度の炎症があるため副腎皮質ステロイド点眼による治療が必要です」'
        ,correctType:0);
    db.insertquestionoption(qo1855);
    QuestionOption qo1856 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,optionCd:'a'
        ,optionText:'基本的日常生活動作'
        ,correctType:0);
    db.insertquestionoption(qo1856);
    QuestionOption qo1857 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,optionCd:'b'
        ,optionText:'手段的日常生活動作'
        ,correctType:0);
    db.insertquestionoption(qo1857);
    QuestionOption qo1858 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,optionCd:'c'
        ,optionText:'認知機能'
        ,correctType:0);
    db.insertquestionoption(qo1858);
    QuestionOption qo1859 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,optionCd:'d'
        ,optionText:'介護者'
        ,correctType:0);
    db.insertquestionoption(qo1859);
    QuestionOption qo1860 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,optionCd:'e'
        ,optionText:'気　分'
        ,correctType:1);
    db.insertquestionoption(qo1860);
    QuestionOption qo1861 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,optionCd:'a'
        ,optionText:'Tzanck試験'
        ,correctType:0);
    db.insertquestionoption(qo1861);
    QuestionOption qo1862 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,optionCd:'b'
        ,optionText:'パッチテスト'
        ,correctType:0);
    db.insertquestionoption(qo1862);
    QuestionOption qo1863 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,optionCd:'c'
        ,optionText:'抗ウイルス薬の投与'
        ,correctType:0);
    db.insertquestionoption(qo1863);
    QuestionOption qo1864 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,optionCd:'d'
        ,optionText:'抗アレルギー薬の投与'
        ,correctType:0);
    db.insertquestionoption(qo1864);
    QuestionOption qo1865 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,optionCd:'e'
        ,optionText:'投与中の抗菌薬の中止'
        ,correctType:1);
    db.insertquestionoption(qo1865);
    QuestionOption qo1866 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,optionCd:'a'
        ,optionText:'3時間'
        ,correctType:0);
    db.insertquestionoption(qo1866);
    QuestionOption qo1867 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,optionCd:'b'
        ,optionText:'6時間'
        ,correctType:0);
    db.insertquestionoption(qo1867);
    QuestionOption qo1868 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,optionCd:'c'
        ,optionText:'1　日'
        ,correctType:1);
    db.insertquestionoption(qo1868);
    QuestionOption qo1869 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,optionCd:'d'
        ,optionText:'3　日'
        ,correctType:0);
    db.insertquestionoption(qo1869);
    QuestionOption qo1870 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,optionCd:'e'
        ,optionText:'5　日'
        ,correctType:0);
    db.insertquestionoption(qo1870);
    QuestionOption qo1871 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,optionCd:'a'
        ,optionText:'無菌性膿疱'
        ,correctType:1);
    db.insertquestionoption(qo1871);
    QuestionOption qo1872 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,optionCd:'b'
        ,optionText:'細菌性膿疱'
        ,correctType:0);
    db.insertquestionoption(qo1872);
    QuestionOption qo1873 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,optionCd:'c'
        ,optionText:'膿痂疹'
        ,correctType:0);
    db.insertquestionoption(qo1873);
    QuestionOption qo1874 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,optionCd:'d'
        ,optionText:'囊　腫'
        ,correctType:0);
    db.insertquestionoption(qo1874);
    QuestionOption qo1875 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,optionCd:'e'
        ,optionText:'膿　瘍'
        ,correctType:0);
    db.insertquestionoption(qo1875);
    QuestionOption qo1876 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,optionCd:'a'
        ,optionText:'薬剤師 ―――― 退院後の栄養管理の計画を共有する。'
        ,correctType:0);
    db.insertquestionoption(qo1876);
    QuestionOption qo1877 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,optionCd:'b'
        ,optionText:'看護師 ―――― 必要な呼吸器リハビリテーションの計画を共有する。'
        ,correctType:0);
    db.insertquestionoption(qo1877);
    QuestionOption qo1878 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,optionCd:'c'
        ,optionText:'栄養士 ―――― これまでの日常生活動作〈ADL〉変化の経過を共有する。'
        ,correctType:0);
    db.insertquestionoption(qo1878);
    QuestionOption qo1879 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,optionCd:'d'
        ,optionText:'理学療法士 ―――― 手術・化学療法の内容について確認する。'
        ,correctType:0);
    db.insertquestionoption(qo1879);
    QuestionOption qo1880 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,optionCd:'e'
        ,optionText:'ソーシャルワーカー ―――― 自宅でのサポート体制，介護の状況を確認する。'
        ,correctType:1);
    db.insertquestionoption(qo1880);
    QuestionOption qo1881 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,optionCd:'a'
        ,optionText:'子宮内膜ポリープ'
        ,correctType:0);
    db.insertquestionoption(qo1881);
    QuestionOption qo1882 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,optionCd:'b'
        ,optionText:'子宮腺筋症'
        ,correctType:1);
    db.insertquestionoption(qo1882);
    QuestionOption qo1883 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,optionCd:'c'
        ,optionText:'漿膜下筋腫'
        ,correctType:0);
    db.insertquestionoption(qo1883);
    QuestionOption qo1884 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,optionCd:'d'
        ,optionText:'筋層内筋腫'
        ,correctType:0);
    db.insertquestionoption(qo1884);
    QuestionOption qo1885 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,optionCd:'e'
        ,optionText:'卵巣癌'
        ,correctType:0);
    db.insertquestionoption(qo1885);
    QuestionOption qo1886 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,optionCd:'a'
        ,optionText:'上部消化管内視鏡検査'
        ,correctType:0);
    db.insertquestionoption(qo1886);
    QuestionOption qo1887 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,optionCd:'b'
        ,optionText:'腹部造影CT検査'
        ,correctType:1);
    db.insertquestionoption(qo1887);
    QuestionOption qo1888 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,optionCd:'c'
        ,optionText:'腹部MRI検査'
        ,correctType:0);
    db.insertquestionoption(qo1888);
    QuestionOption qo1889 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,optionCd:'d'
        ,optionText:'試験開腹術'
        ,correctType:0);
    db.insertquestionoption(qo1889);
    QuestionOption qo1890 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,optionCd:'e'
        ,optionText:'腹水穿刺'
        ,correctType:0);
    db.insertquestionoption(qo1890);
    QuestionOption qo1891 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,optionCd:'a'
        ,optionText:'保健所'
        ,correctType:1);
    db.insertquestionoption(qo1891);
    QuestionOption qo1892 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,optionCd:'b'
        ,optionText:'児童相談所'
        ,correctType:0);
    db.insertquestionoption(qo1892);
    QuestionOption qo1893 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,optionCd:'c'
        ,optionText:'教育委員会'
        ,correctType:0);
    db.insertquestionoption(qo1893);
    QuestionOption qo1894 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,optionCd:'d'
        ,optionText:'精神保健福祉センター'
        ,correctType:1);
    db.insertquestionoption(qo1894);
    QuestionOption qo1895 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,optionCd:'e'
        ,optionText:'精神障害者地域活動支援センター'
        ,correctType:0);
    db.insertquestionoption(qo1895);
    QuestionOption qo1896 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,optionCd:'a'
        ,optionText:'精神科の介入を依頼する。'
        ,correctType:1);
    db.insertquestionoption(qo1896);
    QuestionOption qo1897 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,optionCd:'b'
        ,optionText:'経過観察入院とする。'
        ,correctType:1);
    db.insertquestionoption(qo1897);
    QuestionOption qo1898 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,optionCd:'c'
        ,optionText:'血液透析を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1898);
    QuestionOption qo1899 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,optionCd:'d'
        ,optionText:'牛乳を飲ませる。'
        ,correctType:0);
    db.insertquestionoption(qo1899);
    QuestionOption qo1900 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,optionCd:'e'
        ,optionText:'胃洗浄を行う。'
        ,correctType:0);
    db.insertquestionoption(qo1900);
    QuestionOption qo1901 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,optionCd:'a'
        ,optionText:'軽費老人ホームへの入居'
        ,correctType:0);
    db.insertquestionoption(qo1901);
    QuestionOption qo1902 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,optionCd:'b'
        ,optionText:'歩行時における杖の使用'
        ,correctType:1);
    db.insertquestionoption(qo1902);
    QuestionOption qo1903 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,optionCd:'c'
        ,optionText:'筋力トレーニングの実施'
        ,correctType:1);
    db.insertquestionoption(qo1903);
    QuestionOption qo1904 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,optionCd:'d'
        ,optionText:'ヒッププロテクターの使用'
        ,correctType:0);
    db.insertquestionoption(qo1904);
    QuestionOption qo1905 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,optionCd:'e'
        ,optionText:'抗Parkinson病薬の定期内服'
        ,correctType:0);
    db.insertquestionoption(qo1905);
    QuestionOption qo1906 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,optionCd:'a'
        ,optionText:'末梢血管抵抗の低下'
        ,correctType:0);
    db.insertquestionoption(qo1906);
    QuestionOption qo1907 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,optionCd:'b'
        ,optionText:'血液粘稠度の上昇'
        ,correctType:1);
    db.insertquestionoption(qo1907);
    QuestionOption qo1908 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,optionCd:'c'
        ,optionText:'中心静脈圧の低下'
        ,correctType:1);
    db.insertquestionoption(qo1908);
    QuestionOption qo1909 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,optionCd:'d'
        ,optionText:'脳血流量の低下'
        ,correctType:0);
    db.insertquestionoption(qo1909);
    QuestionOption qo1910 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,optionCd:'e'
        ,optionText:'尿比重の上昇'
        ,correctType:1);
    db.insertquestionoption(qo1910);
    QuestionOption qo1911 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,optionCd:'a'
        ,optionText:'自宅の改築計画を立案する。'
        ,correctType:1);
    db.insertquestionoption(qo1911);
    QuestionOption qo1912 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,optionCd:'b'
        ,optionText:'身体障害者認定手続きを進める。'
        ,correctType:1);
    db.insertquestionoption(qo1912);
    QuestionOption qo1913 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,optionCd:'c'
        ,optionText:'リハビリテーションを終了する。'
        ,correctType:0);
    db.insertquestionoption(qo1913);
    QuestionOption qo1914 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,optionCd:'d'
        ,optionText:'独歩可能を目標に入院を継続する。'
        ,correctType:0);
    db.insertquestionoption(qo1914);
    QuestionOption qo1915 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,optionCd:'e'
        ,optionText:'職場復帰に向けて勤務先と調整を図る。'
        ,correctType:1);
    db.insertquestionoption(qo1915);
    QuestionOption qo1916 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,optionCd:'a'
        ,optionText:'1'
        ,correctType:0);
    db.insertquestionoption(qo1916);
    QuestionOption qo1917 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,optionCd:'b'
        ,optionText:'2'
        ,correctType:0);
    db.insertquestionoption(qo1917);
    QuestionOption qo1918 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,optionCd:'c'
        ,optionText:'3'
        ,correctType:0);
    db.insertquestionoption(qo1918);
    QuestionOption qo1919 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,optionCd:'d'
        ,optionText:'4'
        ,correctType:1);
    db.insertquestionoption(qo1919);
    QuestionOption qo1920 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,optionCd:'e'
        ,optionText:'5'
        ,correctType:0);
    db.insertquestionoption(qo1920);
    QuestionOption qo1921 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,optionCd:'a'
        ,optionText:'びまん性軸索損傷'
        ,correctType:0);
    db.insertquestionoption(qo1921);
    QuestionOption qo1922 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,optionCd:'b'
        ,optionText:'急性硬膜下血腫'
        ,correctType:0);
    db.insertquestionoption(qo1922);
    QuestionOption qo1923 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,optionCd:'c'
        ,optionText:'急性硬膜外血腫'
        ,correctType:1);
    db.insertquestionoption(qo1923);
    QuestionOption qo1924 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,optionCd:'d'
        ,optionText:'頭蓋骨骨折'
        ,correctType:1);
    db.insertquestionoption(qo1924);
    QuestionOption qo1925 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,optionCd:'e'
        ,optionText:'気脳症'
        ,correctType:1);
    db.insertquestionoption(qo1925);
    QuestionOption qo1926 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,optionCd:'a'
        ,optionText:'穿頭ドレナージ術'
        ,correctType:0);
    db.insertquestionoption(qo1926);
    QuestionOption qo1927 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,optionCd:'b'
        ,optionText:'マンニトール静注'
        ,correctType:0);
    db.insertquestionoption(qo1927);
    QuestionOption qo1928 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,optionCd:'c'
        ,optionText:'アドレナリン筋注'
        ,correctType:0);
    db.insertquestionoption(qo1928);
    QuestionOption qo1929 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,optionCd:'d'
        ,optionText:'気管挿管'
        ,correctType:1);
    db.insertquestionoption(qo1929);
    QuestionOption qo1930 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,optionCd:'e'
        ,optionText:'胸腔穿刺'
        ,correctType:0);
    db.insertquestionoption(qo1930);
    QuestionOption qo1931 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,optionCd:'a'
        ,optionText:'敗血症ではない。'
        ,correctType:0);
    db.insertquestionoption(qo1931);
    QuestionOption qo1932 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,optionCd:'b'
        ,optionText:'敗血症が疑われる。'
        ,correctType:1);
    db.insertquestionoption(qo1932);
    QuestionOption qo1933 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,optionCd:'c'
        ,optionText:'重症敗血症が疑われる。'
        ,correctType:0);
    db.insertquestionoption(qo1933);
    QuestionOption qo1934 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,optionCd:'d'
        ,optionText:'敗血症性ショックである。'
        ,correctType:0);
    db.insertquestionoption(qo1934);
    QuestionOption qo1935 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,optionCd:'e'
        ,optionText:'敗血症性ショックが疑われる。'
        ,correctType:0);
    db.insertquestionoption(qo1935);
    QuestionOption qo1936 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,optionCd:'a'
        ,optionText:'ペニシリンG'
        ,correctType:0);
    db.insertquestionoption(qo1936);
    QuestionOption qo1937 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,optionCd:'b'
        ,optionText:'アシクロビル'
        ,correctType:0);
    db.insertquestionoption(qo1937);
    QuestionOption qo1938 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,optionCd:'c'
        ,optionText:'フルコナゾール'
        ,correctType:0);
    db.insertquestionoption(qo1938);
    QuestionOption qo1939 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,optionCd:'d'
        ,optionText:'メトロニダゾール'
        ,correctType:0);
    db.insertquestionoption(qo1939);
    QuestionOption qo1940 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,optionCd:'e'
        ,optionText:'クリンダマイシン'
        ,correctType:1);
    db.insertquestionoption(qo1940);
    QuestionOption qo1941 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,optionCd:'a'
        ,optionText:'便秘になる。'
        ,correctType:0);
    db.insertquestionoption(qo1941);
    QuestionOption qo1942 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,optionCd:'b'
        ,optionText:'足趾に潰瘍が出現する。'
        ,correctType:0);
    db.insertquestionoption(qo1942);
    QuestionOption qo1943 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,optionCd:'c'
        ,optionText:'開口障害が出現する。'
        ,correctType:0);
    db.insertquestionoption(qo1943);
    QuestionOption qo1944 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,optionCd:'d'
        ,optionText:'意識障害が出現する。'
        ,correctType:0);
    db.insertquestionoption(qo1944);
    QuestionOption qo1945 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,optionCd:'e'
        ,optionText:'手掌に落屑が出現する。'
        ,correctType:1);
    db.insertquestionoption(qo1945);
    QuestionOption qo1946 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,optionCd:'a'
        ,optionText:'頻　尿'
        ,correctType:1);
    db.insertquestionoption(qo1946);
    QuestionOption qo1947 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,optionCd:'b'
        ,optionText:'発　熱'
        ,correctType:0);
    db.insertquestionoption(qo1947);
    QuestionOption qo1948 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,optionCd:'c'
        ,optionText:'便　秘'
        ,correctType:0);
    db.insertquestionoption(qo1948);
    QuestionOption qo1949 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,optionCd:'d'
        ,optionText:'排尿痛'
        ,correctType:1);
    db.insertquestionoption(qo1949);
    QuestionOption qo1950 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,optionCd:'e'
        ,optionText:'下腿浮腫'
        ,correctType:0);
    db.insertquestionoption(qo1950);
    QuestionOption qo1951 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,optionCd:'a'
        ,optionText:'PSA高値'
        ,correctType:0);
    db.insertquestionoption(qo1951);
    QuestionOption qo1952 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,optionCd:'b'
        ,optionText:'骨転移陽性'
        ,correctType:0);
    db.insertquestionoption(qo1952);
    QuestionOption qo1953 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,optionCd:'c'
        ,optionText:'尿細胞診陽性'
        ,correctType:1);
    db.insertquestionoption(qo1953);
    QuestionOption qo1954 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,optionCd:'d'
        ,optionText:'血清クレアチニン上昇'
        ,correctType:0);
    db.insertquestionoption(qo1954);
    QuestionOption qo1955 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,optionCd:'e'
        ,optionText:'造影CTでの病変の描出'
        ,correctType:0);
    db.insertquestionoption(qo1955);
    QuestionOption qo1956 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,optionCd:'a'
        ,optionText:'膀胱全摘術'
        ,correctType:0);
    db.insertquestionoption(qo1956);
    QuestionOption qo1957 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,optionCd:'b'
        ,optionText:'放射線療法'
        ,correctType:0);
    db.insertquestionoption(qo1957);
    QuestionOption qo1958 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,optionCd:'c'
        ,optionText:'抗癌化学療法'
        ,correctType:0);
    db.insertquestionoption(qo1958);
    QuestionOption qo1959 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,optionCd:'d'
        ,optionText:'無治療経過観察'
        ,correctType:0);
    db.insertquestionoption(qo1959);
    QuestionOption qo1960 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,optionCd:'e'
        ,optionText:'膀胱内BCG注入療法'
        ,correctType:1);
    db.insertquestionoption(qo1960);
    QuestionOption qo1961 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,optionCd:'a'
        ,optionText:'GVHD'
        ,correctType:0);
    db.insertquestionoption(qo1961);
    QuestionOption qo1962 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,optionCd:'b'
        ,optionText:'低体温'
        ,correctType:1);
    db.insertquestionoption(qo1962);
    QuestionOption qo1963 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,optionCd:'c'
        ,optionText:'嚥下性肺炎'
        ,correctType:0);
    db.insertquestionoption(qo1963);
    QuestionOption qo1964 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,optionCd:'d'
        ,optionText:'CO2ナルコーシス'
        ,correctType:0);
    db.insertquestionoption(qo1964);
    QuestionOption qo1965 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,optionCd:'e'
        ,optionText:'代謝性アルカローシス'
        ,correctType:0);
    db.insertquestionoption(qo1965);
    QuestionOption qo1966 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,optionCd:'a'
        ,optionText:'Na＋130　 K＋4　 Cl－109　 Lactate－28　ブドウ糖0'
        ,correctType:1);
    db.insertquestionoption(qo1966);
    QuestionOption qo1967 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,optionCd:'b'
        ,optionText:'Na＋84　　K＋20　Cl－66	Lactate－20　ブドウ糖3.2'
        ,correctType:0);
    db.insertquestionoption(qo1967);
    QuestionOption qo1968 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,optionCd:'c'
        ,optionText:'Na＋35　　K＋20　Cl－35	Lactate－20　ブドウ糖4.3'
        ,correctType:0);
    db.insertquestionoption(qo1968);
    QuestionOption qo1969 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,optionCd:'d'
        ,optionText:'Na＋30　  K＋0　 Cl－20　　Lactate－10　ブドウ糖4.3'
        ,correctType:0);
    db.insertquestionoption(qo1969);
    QuestionOption qo1970 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,optionCd:'e'
        ,optionText:'Na＋0　　 K＋0　 Cl－0　　 Lactate－0　　ブドウ糖5'
        ,correctType:0);
    db.insertquestionoption(qo1970);
    QuestionOption qo1971 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,optionCd:'a'
        ,optionText:'上部消化管内視鏡検査'
        ,correctType:0);
    db.insertquestionoption(qo1971);
    QuestionOption qo1972 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,optionCd:'b'
        ,optionText:'腹部血管造影'
        ,correctType:1);
    db.insertquestionoption(qo1972);
    QuestionOption qo1973 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,optionCd:'c'
        ,optionText:'腹部MRI'
        ,correctType:0);
    db.insertquestionoption(qo1973);
    QuestionOption qo1974 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,optionCd:'d'
        ,optionText:'腹腔穿刺'
        ,correctType:0);
    db.insertquestionoption(qo1974);
    QuestionOption qo1975 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,optionCd:'e'
        ,optionText:'注腸造影'
        ,correctType:0);
    db.insertquestionoption(qo1975);
    QuestionOption qo1976 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,optionCd:'a'
        ,optionText:'胸腔ドレナージ'
        ,correctType:0);
    db.insertquestionoption(qo1976);
    QuestionOption qo1977 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,optionCd:'b'
        ,optionText:'人工血管置換術'
        ,correctType:1);
    db.insertquestionoption(qo1977);
    QuestionOption qo1978 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,optionCd:'c'
        ,optionText:'肺動脈血栓除去術'
        ,correctType:0);
    db.insertquestionoption(qo1978);
    QuestionOption qo1979 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,optionCd:'d'
        ,optionText:'冠動脈バイパス術'
        ,correctType:0);
    db.insertquestionoption(qo1979);
    QuestionOption qo1980 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,optionCd:'e'
        ,optionText:'カテーテルアブレーション'
        ,correctType:0);
    db.insertquestionoption(qo1980);
    QuestionOption qo1981 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,optionCd:'a'
        ,optionText:'心筋梗塞'
        ,correctType:0);
    db.insertquestionoption(qo1981);
    QuestionOption qo1982 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,optionCd:'b'
        ,optionText:'左房内血栓'
        ,correctType:1);
    db.insertquestionoption(qo1982);
    QuestionOption qo1983 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,optionCd:'c'
        ,optionText:'出血性ショック'
        ,correctType:0);
    db.insertquestionoption(qo1983);
    QuestionOption qo1984 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,optionCd:'d'
        ,optionText:'心タンポナーデ'
        ,correctType:0);
    db.insertquestionoption(qo1984);
    QuestionOption qo1985 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,optionCd:'e'
        ,optionText:'大動脈弁閉鎖不全症'
        ,correctType:0);
    db.insertquestionoption(qo1985);
    QuestionOption qo1986 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,optionCd:'a'
        ,optionText:'von Hippel-Lindau病'
        ,correctType:0);
    db.insertquestionoption(qo1986);
    QuestionOption qo1987 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,optionCd:'b'
        ,optionText:'Cushing症候群'
        ,correctType:0);
    db.insertquestionoption(qo1987);
    QuestionOption qo1988 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,optionCd:'c'
        ,optionText:'Marfan症候群'
        ,correctType:1);
    db.insertquestionoption(qo1988);
    QuestionOption qo1989 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,optionCd:'d'
        ,optionText:'Down症候群'
        ,correctType:0);
    db.insertquestionoption(qo1989);
    QuestionOption qo1990 = QuestionOption(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,optionCd:'e'
        ,optionText:'Mondor病'
        ,correctType:0);
    db.insertquestionoption(qo1990);


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
        ,questionNo:'A16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf31);
    QuestionFile qf32 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf32);
    QuestionFile qf33 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf33);
    QuestionFile qf34 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf34);
    QuestionFile qf35 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf35);
    QuestionFile qf36 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf36);
    QuestionFile qf37 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf37);
    QuestionFile qf38 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A19_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf38);
    QuestionFile qf39 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf39);
    QuestionFile qf40 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf40);
    QuestionFile qf41 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A20_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf41);
    QuestionFile qf42 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf42);
    QuestionFile qf43 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf43);
    QuestionFile qf44 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf44);
    QuestionFile qf45 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf45);
    QuestionFile qf46 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A22_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf46);
    QuestionFile qf47 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf47);
    QuestionFile qf48 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf48);
    QuestionFile qf49 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf49);
    QuestionFile qf50 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf50);
    QuestionFile qf51 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A24_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf51);
    QuestionFile qf52 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A24_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf52);
    QuestionFile qf53 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_A24_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf53);
    QuestionFile qf54 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf54);
    QuestionFile qf55 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf55);
    QuestionFile qf56 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A25_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf56);
    QuestionFile qf57 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf57);
    QuestionFile qf58 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf58);
    QuestionFile qf59 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A26_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf59);
    QuestionFile qf60 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf60);
    QuestionFile qf61 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf61);
    QuestionFile qf62 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf62);
    QuestionFile qf63 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf63);
    QuestionFile qf64 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf64);
    QuestionFile qf65 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf65);
    QuestionFile qf66 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf66);
    QuestionFile qf67 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf67);
    QuestionFile qf68 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf68);
    QuestionFile qf69 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf69);
    QuestionFile qf70 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A31_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf70);
    QuestionFile qf71 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf71);
    QuestionFile qf72 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf72);
    QuestionFile qf73 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A32_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf73);
    QuestionFile qf74 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf74);
    QuestionFile qf75 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf75);
    QuestionFile qf76 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A33_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf76);
    QuestionFile qf77 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A33_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf77);
    QuestionFile qf78 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf78);
    QuestionFile qf79 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf79);
    QuestionFile qf80 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf80);
    QuestionFile qf81 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf81);
    QuestionFile qf82 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A35_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf82);
    QuestionFile qf83 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf83);
    QuestionFile qf84 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf84);
    QuestionFile qf85 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A36_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf85);
    QuestionFile qf86 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf86);
    QuestionFile qf87 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf87);
    QuestionFile qf88 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A37_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf88);
    QuestionFile qf89 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf89);
    QuestionFile qf90 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf90);
    QuestionFile qf91 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A38_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf91);
    QuestionFile qf92 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A38_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf92);
    QuestionFile qf93 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_A38_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf93);
    QuestionFile qf94 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf94);
    QuestionFile qf95 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf95);
    QuestionFile qf96 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A39_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf96);
    QuestionFile qf97 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf97);
    QuestionFile qf98 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf98);
    QuestionFile qf99 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A40_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf99);
    QuestionFile qf100 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf100);
    QuestionFile qf101 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf101);
    QuestionFile qf102 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf102);
    QuestionFile qf103 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf103);
    QuestionFile qf104 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A42_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf104);
    QuestionFile qf105 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf105);
    QuestionFile qf106 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf106);
    QuestionFile qf107 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A43_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf107);
    QuestionFile qf108 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf108);
    QuestionFile qf109 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf109);
    QuestionFile qf110 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf110);
    QuestionFile qf111 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf111);
    QuestionFile qf112 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf112);
    QuestionFile qf113 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf113);
    QuestionFile qf114 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf114);
    QuestionFile qf115 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf115);
    QuestionFile qf116 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A47_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf116);
    QuestionFile qf117 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf117);
    QuestionFile qf118 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf118);
    QuestionFile qf119 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A48_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf119);
    QuestionFile qf120 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A48_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf120);
    QuestionFile qf121 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf121);
    QuestionFile qf122 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf122);
    QuestionFile qf123 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf123);
    QuestionFile qf124 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf124);
    QuestionFile qf125 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A50_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf125);
    QuestionFile qf126 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf126);
    QuestionFile qf127 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A51_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf127);
    QuestionFile qf128 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A51_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf128);
    QuestionFile qf129 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A51_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf129);
    QuestionFile qf130 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A51'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A51_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf130);
    QuestionFile qf131 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A52_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf131);
    QuestionFile qf132 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A52'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A52_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf132);
    QuestionFile qf133 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A53_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf133);
    QuestionFile qf134 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A53_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf134);
    QuestionFile qf135 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A53_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf135);
    QuestionFile qf136 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A53'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A53_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf136);
    QuestionFile qf137 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A54_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf137);
    QuestionFile qf138 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A54'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A54_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf138);
    QuestionFile qf139 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A55_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf139);
    QuestionFile qf140 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A55'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A55_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf140);
    QuestionFile qf141 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A56_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf141);
    QuestionFile qf142 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A56'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A56_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf142);
    QuestionFile qf143 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A57_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf143);
    QuestionFile qf144 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A57_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf144);
    QuestionFile qf145 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A57'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A57_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf145);
    QuestionFile qf146 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A58_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf146);
    QuestionFile qf147 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A58_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf147);
    QuestionFile qf148 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A58_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf148);
    QuestionFile qf149 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A58'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A58_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf149);
    QuestionFile qf150 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A59_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf150);
    QuestionFile qf151 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A59_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf151);
    QuestionFile qf152 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A59_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf152);
    QuestionFile qf153 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A59'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A59_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf153);
    QuestionFile qf154 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A60_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf154);
    QuestionFile qf155 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A60'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A60_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf155);
    QuestionFile qf156 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A61_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf156);
    QuestionFile qf157 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A61_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf157);
    QuestionFile qf158 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A61_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf158);
    QuestionFile qf159 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_A61_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf159);
    QuestionFile qf160 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:1
        ,fileNo:4
        ,filePath:'1162_A61_question_4.jpg'
        ,fileType:2);
    db.insertquestionfile(qf160);
    QuestionFile qf161 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A61'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A61_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf161);
    QuestionFile qf162 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A62_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf162);
    QuestionFile qf163 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A62'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A62_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf163);
    QuestionFile qf164 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A63_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf164);
    QuestionFile qf165 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A63_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf165);
    QuestionFile qf166 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A63_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf166);
    QuestionFile qf167 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_A63_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf167);
    QuestionFile qf168 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A63'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A63_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf168);
    QuestionFile qf169 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A64_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf169);
    QuestionFile qf170 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A64_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf170);
    QuestionFile qf171 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A64_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf171);
    QuestionFile qf172 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A64'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A64_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf172);
    QuestionFile qf173 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A65_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf173);
    QuestionFile qf174 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A65_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf174);
    QuestionFile qf175 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A65_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf175);
    QuestionFile qf176 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A65'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A65_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf176);
    QuestionFile qf177 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A66_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf177);
    QuestionFile qf178 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A66_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf178);
    QuestionFile qf179 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A66'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A66_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf179);
    QuestionFile qf180 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A67_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf180);
    QuestionFile qf181 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A67_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf181);
    QuestionFile qf182 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A67_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf182);
    QuestionFile qf183 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A67'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A67_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf183);
    QuestionFile qf184 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A68_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf184);
    QuestionFile qf185 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A68'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A68_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf185);
    QuestionFile qf186 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A69_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf186);
    QuestionFile qf187 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A69'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A69_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf187);
    QuestionFile qf188 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A70_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf188);
    QuestionFile qf189 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A70_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf189);
    QuestionFile qf190 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A70_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf190);
    QuestionFile qf191 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A70'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A70_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf191);
    QuestionFile qf192 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A71_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf192);
    QuestionFile qf193 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A71'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A71_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf193);
    QuestionFile qf194 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A72_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf194);
    QuestionFile qf195 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A72_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf195);
    QuestionFile qf196 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A72'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A72_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf196);
    QuestionFile qf197 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A73_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf197);
    QuestionFile qf198 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A73_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf198);
    QuestionFile qf199 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A73_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf199);
    QuestionFile qf200 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A73'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A73_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf200);
    QuestionFile qf201 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A74_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf201);
    QuestionFile qf202 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A74_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf202);
    QuestionFile qf203 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_A74_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf203);
    QuestionFile qf204 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A74'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A74_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf204);
    QuestionFile qf205 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_A75_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf205);
    QuestionFile qf206 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'A75'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_A75_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf206);
    QuestionFile qf207 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf207);
    QuestionFile qf208 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B01_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf208);
    QuestionFile qf209 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf209);
    QuestionFile qf210 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf210);
    QuestionFile qf211 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf211);
    QuestionFile qf212 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf212);
    QuestionFile qf213 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf213);
    QuestionFile qf214 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf214);
    QuestionFile qf215 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf215);
    QuestionFile qf216 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf216);
    QuestionFile qf217 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf217);
    QuestionFile qf218 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf218);
    QuestionFile qf219 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf219);
    QuestionFile qf220 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf220);
    QuestionFile qf221 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf221);
    QuestionFile qf222 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf222);
    QuestionFile qf223 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf223);
    QuestionFile qf224 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf224);
    QuestionFile qf225 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf225);
    QuestionFile qf226 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf226);
    QuestionFile qf227 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf227);
    QuestionFile qf228 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf228);
    QuestionFile qf229 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf229);
    QuestionFile qf230 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf230);
    QuestionFile qf231 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf231);
    QuestionFile qf232 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf232);
    QuestionFile qf233 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf233);
    QuestionFile qf234 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf234);
    QuestionFile qf235 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf235);
    QuestionFile qf236 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf236);
    QuestionFile qf237 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf237);
    QuestionFile qf238 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf238);
    QuestionFile qf239 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf239);
    QuestionFile qf240 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf240);
    QuestionFile qf241 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf241);
    QuestionFile qf242 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf242);
    QuestionFile qf243 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf243);
    QuestionFile qf244 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf244);
    QuestionFile qf245 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B19_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf245);
    QuestionFile qf246 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf246);
    QuestionFile qf247 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf247);
    QuestionFile qf248 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf248);
    QuestionFile qf249 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf249);
    QuestionFile qf250 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B21_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf250);
    QuestionFile qf251 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf251);
    QuestionFile qf252 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf252);
    QuestionFile qf253 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf253);
    QuestionFile qf254 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf254);
    QuestionFile qf255 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf255);
    QuestionFile qf256 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf256);
    QuestionFile qf257 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf257);
    QuestionFile qf258 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf258);
    QuestionFile qf259 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf259);
    QuestionFile qf260 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf260);
    QuestionFile qf261 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf261);
    QuestionFile qf262 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf262);
    QuestionFile qf263 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf263);
    QuestionFile qf264 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf264);
    QuestionFile qf265 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf265);
    QuestionFile qf266 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf266);
    QuestionFile qf267 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf267);
    QuestionFile qf268 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf268);
    QuestionFile qf269 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf269);
    QuestionFile qf270 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf270);
    QuestionFile qf271 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B31_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf271);
    QuestionFile qf272 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf272);
    QuestionFile qf273 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf273);
    QuestionFile qf274 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf274);
    QuestionFile qf275 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf275);
    QuestionFile qf276 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf276);
    QuestionFile qf277 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf277);
    QuestionFile qf278 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf278);
    QuestionFile qf279 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf279);
    QuestionFile qf280 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf280);
    QuestionFile qf281 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf281);
    QuestionFile qf282 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf282);
    QuestionFile qf283 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf283);
    QuestionFile qf284 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf284);
    QuestionFile qf285 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf285);
    QuestionFile qf286 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B38_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf286);
    QuestionFile qf287 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf287);
    QuestionFile qf288 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf288);
    QuestionFile qf289 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf289);
    QuestionFile qf290 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf290);
    QuestionFile qf291 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B40_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf291);
    QuestionFile qf292 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf292);
    QuestionFile qf293 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf293);
    QuestionFile qf294 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf294);
    QuestionFile qf295 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf295);
    QuestionFile qf296 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf296);
    QuestionFile qf297 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf297);
    QuestionFile qf298 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf298);
    QuestionFile qf299 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf299);
    QuestionFile qf300 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf300);
    QuestionFile qf301 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf301);
    QuestionFile qf302 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf302);
    QuestionFile qf303 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf303);
    QuestionFile qf304 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf304);
    QuestionFile qf305 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf305);
    QuestionFile qf306 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf306);
    QuestionFile qf307 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf307);
    QuestionFile qf308 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf308);
    QuestionFile qf309 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf309);
    QuestionFile qf310 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B49_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf310);
    QuestionFile qf311 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf311);
    QuestionFile qf312 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf312);
    QuestionFile qf313 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_B50_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf313);
    QuestionFile qf314 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'B50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_B50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf314);
    QuestionFile qf315 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf315);
    QuestionFile qf316 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf316);
    QuestionFile qf317 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf317);
    QuestionFile qf318 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C02_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf318);
    QuestionFile qf319 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf319);
    QuestionFile qf320 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf320);
    QuestionFile qf321 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf321);
    QuestionFile qf322 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf322);
    QuestionFile qf323 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf323);
    QuestionFile qf324 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf324);
    QuestionFile qf325 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf325);
    QuestionFile qf326 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf326);
    QuestionFile qf327 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf327);
    QuestionFile qf328 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf328);
    QuestionFile qf329 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf329);
    QuestionFile qf330 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf330);
    QuestionFile qf331 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C08_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf331);
    QuestionFile qf332 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf332);
    QuestionFile qf333 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf333);
    QuestionFile qf334 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf334);
    QuestionFile qf335 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf335);
    QuestionFile qf336 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C10_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf336);
    QuestionFile qf337 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf337);
    QuestionFile qf338 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf338);
    QuestionFile qf339 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C11_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf339);
    QuestionFile qf340 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf340);
    QuestionFile qf341 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf341);
    QuestionFile qf342 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf342);
    QuestionFile qf343 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf343);
    QuestionFile qf344 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf344);
    QuestionFile qf345 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf345);
    QuestionFile qf346 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf346);
    QuestionFile qf347 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf347);
    QuestionFile qf348 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C15_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf348);
    QuestionFile qf349 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf349);
    QuestionFile qf350 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf350);
    QuestionFile qf351 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf351);
    QuestionFile qf352 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf352);
    QuestionFile qf353 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf353);
    QuestionFile qf354 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf354);
    QuestionFile qf355 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf355);
    QuestionFile qf356 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf356);
    QuestionFile qf357 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf357);
    QuestionFile qf358 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf358);
    QuestionFile qf359 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf359);
    QuestionFile qf360 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf360);
    QuestionFile qf361 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf361);
    QuestionFile qf362 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf362);
    QuestionFile qf363 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C22_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf363);
    QuestionFile qf364 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf364);
    QuestionFile qf365 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf365);
    QuestionFile qf366 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf366);
    QuestionFile qf367 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf367);
    QuestionFile qf368 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf368);
    QuestionFile qf369 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf369);
    QuestionFile qf370 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf370);
    QuestionFile qf371 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf371);
    QuestionFile qf372 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf372);
    QuestionFile qf373 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf373);
    QuestionFile qf374 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf374);
    QuestionFile qf375 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf375);
    QuestionFile qf376 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf376);
    QuestionFile qf377 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf377);
    QuestionFile qf378 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf378);
    QuestionFile qf379 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf379);
    QuestionFile qf380 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf380);
    QuestionFile qf381 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf381);
    QuestionFile qf382 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf382);
    QuestionFile qf383 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf383);
    QuestionFile qf384 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf384);
    QuestionFile qf385 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf385);
    QuestionFile qf386 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf386);
    QuestionFile qf387 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf387);
    QuestionFile qf388 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf388);
    QuestionFile qf389 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf389);
    QuestionFile qf390 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C35_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf390);
    QuestionFile qf391 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf391);
    QuestionFile qf392 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf392);
    QuestionFile qf393 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf393);
    QuestionFile qf394 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf394);
    QuestionFile qf395 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf395);
    QuestionFile qf396 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf396);
    QuestionFile qf397 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf397);
    QuestionFile qf398 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf398);
    QuestionFile qf399 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf399);
    QuestionFile qf400 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf400);
    QuestionFile qf401 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C40_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf401);
    QuestionFile qf402 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C40_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf402);
    QuestionFile qf403 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf403);
    QuestionFile qf404 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf404);
    QuestionFile qf405 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C41_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf405);
    QuestionFile qf406 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf406);
    QuestionFile qf407 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf407);
    QuestionFile qf408 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf408);
    QuestionFile qf409 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf409);
    QuestionFile qf410 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf410);
    QuestionFile qf411 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf411);
    QuestionFile qf412 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf412);
    QuestionFile qf413 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf413);
    QuestionFile qf414 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf414);
    QuestionFile qf415 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf415);
    QuestionFile qf416 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf416);
    QuestionFile qf417 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf417);
    QuestionFile qf418 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf418);
    QuestionFile qf419 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf419);
    QuestionFile qf420 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C48_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf420);
    QuestionFile qf421 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf421);
    QuestionFile qf422 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf422);
    QuestionFile qf423 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf423);
    QuestionFile qf424 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf424);
    QuestionFile qf425 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf425);
    QuestionFile qf426 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C51_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf426);
    QuestionFile qf427 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C51'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C51_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf427);
    QuestionFile qf428 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C52_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf428);
    QuestionFile qf429 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C52_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf429);
    QuestionFile qf430 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C52_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf430);
    QuestionFile qf431 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_C52_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf431);
    QuestionFile qf432 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:1
        ,fileNo:4
        ,filePath:'1162_C52_question_4.jpg'
        ,fileType:2);
    db.insertquestionfile(qf432);
    QuestionFile qf433 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C52'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C52_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf433);
    QuestionFile qf434 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C53_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf434);
    QuestionFile qf435 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C53'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C53_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf435);
    QuestionFile qf436 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C54_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf436);
    QuestionFile qf437 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C54'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C54_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf437);
    QuestionFile qf438 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C55_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf438);
    QuestionFile qf439 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C55'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C55_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf439);
    QuestionFile qf440 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C56_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf440);
    QuestionFile qf441 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C56'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C56_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf441);
    QuestionFile qf442 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C57_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf442);
    QuestionFile qf443 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C57'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C57_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf443);
    QuestionFile qf444 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C58_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf444);
    QuestionFile qf445 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C58'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C58_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf445);
    QuestionFile qf446 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C59_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf446);
    QuestionFile qf447 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C59_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf447);
    QuestionFile qf448 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C59_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf448);
    QuestionFile qf449 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C59'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C59_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf449);
    QuestionFile qf450 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C60_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf450);
    QuestionFile qf451 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C60_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf451);
    QuestionFile qf452 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C60_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf452);
    QuestionFile qf453 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C60'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C60_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf453);
    QuestionFile qf454 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C61_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf454);
    QuestionFile qf455 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C61_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf455);
    QuestionFile qf456 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C61_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf456);
    QuestionFile qf457 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C61'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C61_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf457);
    QuestionFile qf458 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C62_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf458);
    QuestionFile qf459 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C62_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf459);
    QuestionFile qf460 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C62_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf460);
    QuestionFile qf461 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C62'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C62_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf461);
    QuestionFile qf462 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C63_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf462);
    QuestionFile qf463 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C63_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf463);
    QuestionFile qf464 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C63'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C63_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf464);
    QuestionFile qf465 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C64_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf465);
    QuestionFile qf466 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C64_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf466);
    QuestionFile qf467 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C64'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C64_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf467);
    QuestionFile qf468 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C65_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf468);
    QuestionFile qf469 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C65_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf469);
    QuestionFile qf470 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C65'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C65_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf470);
    QuestionFile qf471 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C66_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf471);
    QuestionFile qf472 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C66_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf472);
    QuestionFile qf473 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C66'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C66_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf473);
    QuestionFile qf474 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C67_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf474);
    QuestionFile qf475 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C67_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf475);
    QuestionFile qf476 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C67'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C67_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf476);
    QuestionFile qf477 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C68_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf477);
    QuestionFile qf478 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C68_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf478);
    QuestionFile qf479 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C68'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C68_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf479);
    QuestionFile qf480 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C69_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf480);
    QuestionFile qf481 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C69_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf481);
    QuestionFile qf482 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C69_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf482);
    QuestionFile qf483 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_C69_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf483);
    QuestionFile qf484 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C69'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C69_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf484);
    QuestionFile qf485 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C70_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf485);
    QuestionFile qf486 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C70_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf486);
    QuestionFile qf487 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C70_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf487);
    QuestionFile qf488 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_C70_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf488);
    QuestionFile qf489 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C70'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C70_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf489);
    QuestionFile qf490 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C71_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf490);
    QuestionFile qf491 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C71_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf491);
    QuestionFile qf492 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_C71_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf492);
    QuestionFile qf493 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_C71_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf493);
    QuestionFile qf494 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C71'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C71_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf494);
    QuestionFile qf495 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C72_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf495);
    QuestionFile qf496 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C72'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C72_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf496);
    QuestionFile qf497 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C73_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf497);
    QuestionFile qf498 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C73'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C73_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf498);
    QuestionFile qf499 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C74_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf499);
    QuestionFile qf500 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C74'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C74_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf500);
    QuestionFile qf501 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C75'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C75_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf501);
    QuestionFile qf502 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C75'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_C75_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf502);
    QuestionFile qf503 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'C75'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_C75_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf503);
    QuestionFile qf504 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf504);
    QuestionFile qf505 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf505);
    QuestionFile qf506 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf506);
    QuestionFile qf507 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf507);
    QuestionFile qf508 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf508);
    QuestionFile qf509 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf509);
    QuestionFile qf510 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf510);
    QuestionFile qf511 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf511);
    QuestionFile qf512 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf512);
    QuestionFile qf513 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf513);
    QuestionFile qf514 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf514);
    QuestionFile qf515 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf515);
    QuestionFile qf516 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf516);
    QuestionFile qf517 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf517);
    QuestionFile qf518 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf518);
    QuestionFile qf519 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf519);
    QuestionFile qf520 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf520);
    QuestionFile qf521 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf521);
    QuestionFile qf522 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf522);
    QuestionFile qf523 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf523);
    QuestionFile qf524 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf524);
    QuestionFile qf525 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf525);
    QuestionFile qf526 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf526);
    QuestionFile qf527 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D12_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf527);
    QuestionFile qf528 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf528);
    QuestionFile qf529 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf529);
    QuestionFile qf530 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf530);
    QuestionFile qf531 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf531);
    QuestionFile qf532 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf532);
    QuestionFile qf533 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf533);
    QuestionFile qf534 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf534);
    QuestionFile qf535 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf535);
    QuestionFile qf536 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D16_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf536);
    QuestionFile qf537 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf537);
    QuestionFile qf538 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf538);
    QuestionFile qf539 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D17_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf539);
    QuestionFile qf540 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D17_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf540);
    QuestionFile qf541 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf541);
    QuestionFile qf542 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf542);
    QuestionFile qf543 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D18_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf543);
    QuestionFile qf544 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf544);
    QuestionFile qf545 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf545);
    QuestionFile qf546 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D19_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf546);
    QuestionFile qf547 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D19_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf547);
    QuestionFile qf548 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf548);
    QuestionFile qf549 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf549);
    QuestionFile qf550 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D20_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf550);
    QuestionFile qf551 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D20_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf551);
    QuestionFile qf552 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf552);
    QuestionFile qf553 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf553);
    QuestionFile qf554 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D21_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf554);
    QuestionFile qf555 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf555);
    QuestionFile qf556 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf556);
    QuestionFile qf557 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D22_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf557);
    QuestionFile qf558 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D22_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf558);
    QuestionFile qf559 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf559);
    QuestionFile qf560 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf560);
    QuestionFile qf561 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf561);
    QuestionFile qf562 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf562);
    QuestionFile qf563 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf563);
    QuestionFile qf564 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf564);
    QuestionFile qf565 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf565);
    QuestionFile qf566 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf566);
    QuestionFile qf567 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf567);
    QuestionFile qf568 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf568);
    QuestionFile qf569 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf569);
    QuestionFile qf570 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf570);
    QuestionFile qf571 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D28_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf571);
    QuestionFile qf572 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D28_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf572);
    QuestionFile qf573 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf573);
    QuestionFile qf574 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf574);
    QuestionFile qf575 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D29_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf575);
    QuestionFile qf576 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf576);
    QuestionFile qf577 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf577);
    QuestionFile qf578 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D30_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf578);
    QuestionFile qf579 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D30_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf579);
    QuestionFile qf580 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_D30_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf580);
    QuestionFile qf581 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf581);
    QuestionFile qf582 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf582);
    QuestionFile qf583 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D31_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf583);
    QuestionFile qf584 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf584);
    QuestionFile qf585 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf585);
    QuestionFile qf586 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D32_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf586);
    QuestionFile qf587 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D32_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf587);
    QuestionFile qf588 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf588);
    QuestionFile qf589 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf589);
    QuestionFile qf590 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D33_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf590);
    QuestionFile qf591 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D33_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf591);
    QuestionFile qf592 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf592);
    QuestionFile qf593 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf593);
    QuestionFile qf594 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D34_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf594);
    QuestionFile qf595 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D34_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf595);
    QuestionFile qf596 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf596);
    QuestionFile qf597 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf597);
    QuestionFile qf598 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D35_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf598);
    QuestionFile qf599 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf599);
    QuestionFile qf600 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf600);
    QuestionFile qf601 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf601);
    QuestionFile qf602 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf602);
    QuestionFile qf603 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D37_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf603);
    QuestionFile qf604 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf604);
    QuestionFile qf605 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf605);
    QuestionFile qf606 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf606);
    QuestionFile qf607 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf607);
    QuestionFile qf608 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D39_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf608);
    QuestionFile qf609 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf609);
    QuestionFile qf610 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf610);
    QuestionFile qf611 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D40_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf611);
    QuestionFile qf612 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D40_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf612);
    QuestionFile qf613 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf613);
    QuestionFile qf614 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf614);
    QuestionFile qf615 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf615);
    QuestionFile qf616 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf616);
    QuestionFile qf617 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D42_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf617);
    QuestionFile qf618 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D42_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf618);
    QuestionFile qf619 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_D42_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf619);
    QuestionFile qf620 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf620);
    QuestionFile qf621 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf621);
    QuestionFile qf622 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D43_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf622);
    QuestionFile qf623 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D43_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf623);
    QuestionFile qf624 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf624);
    QuestionFile qf625 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf625);
    QuestionFile qf626 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf626);
    QuestionFile qf627 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf627);
    QuestionFile qf628 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D45_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf628);
    QuestionFile qf629 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D45_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf629);
    QuestionFile qf630 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf630);
    QuestionFile qf631 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf631);
    QuestionFile qf632 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf632);
    QuestionFile qf633 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf633);
    QuestionFile qf634 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D47_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf634);
    QuestionFile qf635 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf635);
    QuestionFile qf636 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf636);
    QuestionFile qf637 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf637);
    QuestionFile qf638 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf638);
    QuestionFile qf639 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf639);
    QuestionFile qf640 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf640);
    QuestionFile qf641 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf641);
    QuestionFile qf642 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D51_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf642);
    QuestionFile qf643 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D51_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf643);
    QuestionFile qf644 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D51_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf644);
    QuestionFile qf645 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_D51_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf645);
    QuestionFile qf646 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D51'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D51_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf646);
    QuestionFile qf647 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D52_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf647);
    QuestionFile qf648 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D52_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf648);
    QuestionFile qf649 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D52'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D52_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf649);
    QuestionFile qf650 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D53_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf650);
    QuestionFile qf651 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D53_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf651);
    QuestionFile qf652 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D53_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf652);
    QuestionFile qf653 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D53'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D53_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf653);
    QuestionFile qf654 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D54_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf654);
    QuestionFile qf655 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D54_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf655);
    QuestionFile qf656 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D54'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D54_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf656);
    QuestionFile qf657 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D55_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf657);
    QuestionFile qf658 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D55_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf658);
    QuestionFile qf659 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D55'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D55_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf659);
    QuestionFile qf660 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D56_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf660);
    QuestionFile qf661 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D56_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf661);
    QuestionFile qf662 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D56'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D56_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf662);
    QuestionFile qf663 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D57_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf663);
    QuestionFile qf664 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D57'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D57_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf664);
    QuestionFile qf665 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D58_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf665);
    QuestionFile qf666 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D58_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf666);
    QuestionFile qf667 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D58'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D58_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf667);
    QuestionFile qf668 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D59_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf668);
    QuestionFile qf669 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D59_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf669);
    QuestionFile qf670 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D59'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D59_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf670);
    QuestionFile qf671 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D60_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf671);
    QuestionFile qf672 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D60'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D60_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf672);
    QuestionFile qf673 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D61_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf673);
    QuestionFile qf674 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D61'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D61_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf674);
    QuestionFile qf675 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D62_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf675);
    QuestionFile qf676 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D62'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D62_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf676);
    QuestionFile qf677 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D63_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf677);
    QuestionFile qf678 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D63_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf678);
    QuestionFile qf679 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D63_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf679);
    QuestionFile qf680 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D63'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D63_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf680);
    QuestionFile qf681 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D64_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf681);
    QuestionFile qf682 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D64_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf682);
    QuestionFile qf683 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D64'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D64_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf683);
    QuestionFile qf684 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D65_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf684);
    QuestionFile qf685 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D65_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf685);
    QuestionFile qf686 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D65'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D65_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf686);
    QuestionFile qf687 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D66_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf687);
    QuestionFile qf688 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D66_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf688);
    QuestionFile qf689 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D66'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D66_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf689);
    QuestionFile qf690 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D67_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf690);
    QuestionFile qf691 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D67_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf691);
    QuestionFile qf692 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D67'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D67_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf692);
    QuestionFile qf693 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D68_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf693);
    QuestionFile qf694 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D68_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf694);
    QuestionFile qf695 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D68_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf695);
    QuestionFile qf696 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_D68_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf696);
    QuestionFile qf697 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:1
        ,fileNo:4
        ,filePath:'1162_D68_question_4.jpg'
        ,fileType:2);
    db.insertquestionfile(qf697);
    QuestionFile qf698 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D68'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D68_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf698);
    QuestionFile qf699 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D69_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf699);
    QuestionFile qf700 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D69_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf700);
    QuestionFile qf701 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D69'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D69_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf701);
    QuestionFile qf702 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D70_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf702);
    QuestionFile qf703 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D70_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf703);
    QuestionFile qf704 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D70'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D70_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf704);
    QuestionFile qf705 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D71_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf705);
    QuestionFile qf706 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D71'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D71_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf706);
    QuestionFile qf707 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D72_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf707);
    QuestionFile qf708 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D72_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf708);
    QuestionFile qf709 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D72_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf709);
    QuestionFile qf710 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D72'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D72_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf710);
    QuestionFile qf711 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D73_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf711);
    QuestionFile qf712 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D73_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf712);
    QuestionFile qf713 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D73'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D73_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf713);
    QuestionFile qf714 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D74_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf714);
    QuestionFile qf715 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D74_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf715);
    QuestionFile qf716 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_D74_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf716);
    QuestionFile qf717 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D74'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D74_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf717);
    QuestionFile qf718 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_D75_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf718);
    QuestionFile qf719 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'D75'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_D75_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf719);
    QuestionFile qf720 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf720);
    QuestionFile qf721 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf721);
    QuestionFile qf722 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf722);
    QuestionFile qf723 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf723);
    QuestionFile qf724 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf724);
    QuestionFile qf725 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E03_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf725);
    QuestionFile qf726 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf726);
    QuestionFile qf727 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf727);
    QuestionFile qf728 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf728);
    QuestionFile qf729 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf729);
    QuestionFile qf730 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf730);
    QuestionFile qf731 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf731);
    QuestionFile qf732 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf732);
    QuestionFile qf733 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf733);
    QuestionFile qf734 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E07_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf734);
    QuestionFile qf735 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf735);
    QuestionFile qf736 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf736);
    QuestionFile qf737 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf737);
    QuestionFile qf738 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf738);
    QuestionFile qf739 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf739);
    QuestionFile qf740 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf740);
    QuestionFile qf741 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf741);
    QuestionFile qf742 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf742);
    QuestionFile qf743 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf743);
    QuestionFile qf744 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf744);
    QuestionFile qf745 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf745);
    QuestionFile qf746 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf746);
    QuestionFile qf747 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf747);
    QuestionFile qf748 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf748);
    QuestionFile qf749 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf749);
    QuestionFile qf750 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf750);
    QuestionFile qf751 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf751);
    QuestionFile qf752 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf752);
    QuestionFile qf753 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf753);
    QuestionFile qf754 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf754);
    QuestionFile qf755 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf755);
    QuestionFile qf756 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf756);
    QuestionFile qf757 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf757);
    QuestionFile qf758 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf758);
    QuestionFile qf759 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf759);
    QuestionFile qf760 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf760);
    QuestionFile qf761 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf761);
    QuestionFile qf762 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf762);
    QuestionFile qf763 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf763);
    QuestionFile qf764 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf764);
    QuestionFile qf765 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf765);
    QuestionFile qf766 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf766);
    QuestionFile qf767 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf767);
    QuestionFile qf768 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf768);
    QuestionFile qf769 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf769);
    QuestionFile qf770 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf770);
    QuestionFile qf771 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf771);
    QuestionFile qf772 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf772);
    QuestionFile qf773 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf773);
    QuestionFile qf774 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf774);
    QuestionFile qf775 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E27_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf775);
    QuestionFile qf776 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_E27_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf776);
    QuestionFile qf777 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf777);
    QuestionFile qf778 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf778);
    QuestionFile qf779 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf779);
    QuestionFile qf780 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf780);
    QuestionFile qf781 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E29_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf781);
    QuestionFile qf782 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_E29_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf782);
    QuestionFile qf783 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf783);
    QuestionFile qf784 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf784);
    QuestionFile qf785 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf785);
    QuestionFile qf786 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf786);
    QuestionFile qf787 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf787);
    QuestionFile qf788 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf788);
    QuestionFile qf789 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E32_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf789);
    QuestionFile qf790 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf790);
    QuestionFile qf791 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf791);
    QuestionFile qf792 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf792);
    QuestionFile qf793 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf793);
    QuestionFile qf794 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf794);
    QuestionFile qf795 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf795);
    QuestionFile qf796 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E35_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf796);
    QuestionFile qf797 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf797);
    QuestionFile qf798 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf798);
    QuestionFile qf799 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E36_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf799);
    QuestionFile qf800 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf800);
    QuestionFile qf801 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf801);
    QuestionFile qf802 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf802);
    QuestionFile qf803 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf803);
    QuestionFile qf804 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E38_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf804);
    QuestionFile qf805 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_E38_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf805);
    QuestionFile qf806 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf806);
    QuestionFile qf807 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf807);
    QuestionFile qf808 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf808);
    QuestionFile qf809 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf809);
    QuestionFile qf810 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf810);
    QuestionFile qf811 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf811);
    QuestionFile qf812 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E41_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf812);
    QuestionFile qf813 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf813);
    QuestionFile qf814 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf814);
    QuestionFile qf815 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E42_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf815);
    QuestionFile qf816 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf816);
    QuestionFile qf817 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf817);
    QuestionFile qf818 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E43_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf818);
    QuestionFile qf819 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf819);
    QuestionFile qf820 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf820);
    QuestionFile qf821 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E44_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf821);
    QuestionFile qf822 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf822);
    QuestionFile qf823 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf823);
    QuestionFile qf824 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E45_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf824);
    QuestionFile qf825 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_E45_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf825);
    QuestionFile qf826 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf826);
    QuestionFile qf827 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf827);
    QuestionFile qf828 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E46_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf828);
    QuestionFile qf829 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_E46_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf829);
    QuestionFile qf830 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf830);
    QuestionFile qf831 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf831);
    QuestionFile qf832 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E47_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf832);
    QuestionFile qf833 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf833);
    QuestionFile qf834 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf834);
    QuestionFile qf835 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E48_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf835);
    QuestionFile qf836 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf836);
    QuestionFile qf837 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf837);
    QuestionFile qf838 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf838);
    QuestionFile qf839 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_E50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf839);
    QuestionFile qf840 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'E50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_E50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf840);
    QuestionFile qf841 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F01_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf841);
    QuestionFile qf842 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F01'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F01_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf842);
    QuestionFile qf843 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F02_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf843);
    QuestionFile qf844 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F02_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf844);
    QuestionFile qf845 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F02'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F02_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf845);
    QuestionFile qf846 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F03_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf846);
    QuestionFile qf847 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F03'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F03_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf847);
    QuestionFile qf848 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F04_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf848);
    QuestionFile qf849 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F04'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F04_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf849);
    QuestionFile qf850 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F05_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf850);
    QuestionFile qf851 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F05'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F05_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf851);
    QuestionFile qf852 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F06_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf852);
    QuestionFile qf853 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F06'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F06_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf853);
    QuestionFile qf854 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F07_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf854);
    QuestionFile qf855 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F07'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F07_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf855);
    QuestionFile qf856 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F08_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf856);
    QuestionFile qf857 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F08'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F08_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf857);
    QuestionFile qf858 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F09_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf858);
    QuestionFile qf859 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F09'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F09_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf859);
    QuestionFile qf860 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F10_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf860);
    QuestionFile qf861 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F10'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F10_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf861);
    QuestionFile qf862 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F11_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf862);
    QuestionFile qf863 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F11'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F11_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf863);
    QuestionFile qf864 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F12_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf864);
    QuestionFile qf865 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F12'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F12_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf865);
    QuestionFile qf866 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F13_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf866);
    QuestionFile qf867 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F13'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F13_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf867);
    QuestionFile qf868 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F14_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf868);
    QuestionFile qf869 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F14_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf869);
    QuestionFile qf870 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F14'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F14_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf870);
    QuestionFile qf871 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F15_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf871);
    QuestionFile qf872 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F15'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F15_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf872);
    QuestionFile qf873 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F16_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf873);
    QuestionFile qf874 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F16'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F16_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf874);
    QuestionFile qf875 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F17_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf875);
    QuestionFile qf876 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F17'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F17_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf876);
    QuestionFile qf877 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F18_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf877);
    QuestionFile qf878 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F18'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F18_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf878);
    QuestionFile qf879 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F19_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf879);
    QuestionFile qf880 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F19'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F19_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf880);
    QuestionFile qf881 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F20_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf881);
    QuestionFile qf882 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F20_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf882);
    QuestionFile qf883 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F20'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F20_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf883);
    QuestionFile qf884 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F21_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf884);
    QuestionFile qf885 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F21'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F21_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf885);
    QuestionFile qf886 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F22_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf886);
    QuestionFile qf887 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F22'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F22_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf887);
    QuestionFile qf888 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F23_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf888);
    QuestionFile qf889 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F23'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F23_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf889);
    QuestionFile qf890 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F24_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf890);
    QuestionFile qf891 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F24'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F24_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf891);
    QuestionFile qf892 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F25_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf892);
    QuestionFile qf893 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F25_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf893);
    QuestionFile qf894 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F25'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F25_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf894);
    QuestionFile qf895 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F26_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf895);
    QuestionFile qf896 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F26'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F26_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf896);
    QuestionFile qf897 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F27_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf897);
    QuestionFile qf898 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F27'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F27_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf898);
    QuestionFile qf899 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F28_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf899);
    QuestionFile qf900 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F28'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F28_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf900);
    QuestionFile qf901 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F29_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf901);
    QuestionFile qf902 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F29'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F29_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf902);
    QuestionFile qf903 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F30_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf903);
    QuestionFile qf904 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F30'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F30_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf904);
    QuestionFile qf905 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F31_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf905);
    QuestionFile qf906 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F31'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F31_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf906);
    QuestionFile qf907 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F32_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf907);
    QuestionFile qf908 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F32'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F32_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf908);
    QuestionFile qf909 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F33_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf909);
    QuestionFile qf910 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F33'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F33_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf910);
    QuestionFile qf911 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F34_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf911);
    QuestionFile qf912 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F34'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F34_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf912);
    QuestionFile qf913 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F35_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf913);
    QuestionFile qf914 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F35'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F35_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf914);
    QuestionFile qf915 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F36_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf915);
    QuestionFile qf916 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F36_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf916);
    QuestionFile qf917 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F36'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F36_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf917);
    QuestionFile qf918 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F37_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf918);
    QuestionFile qf919 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F37'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F37_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf919);
    QuestionFile qf920 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F38_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf920);
    QuestionFile qf921 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F38'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F38_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf921);
    QuestionFile qf922 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F39_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf922);
    QuestionFile qf923 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F39'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F39_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf923);
    QuestionFile qf924 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F40_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf924);
    QuestionFile qf925 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F40_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf925);
    QuestionFile qf926 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F40'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F40_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf926);
    QuestionFile qf927 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F41_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf927);
    QuestionFile qf928 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F41'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F41_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf928);
    QuestionFile qf929 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F42_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf929);
    QuestionFile qf930 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F42_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf930);
    QuestionFile qf931 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F42'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F42_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf931);
    QuestionFile qf932 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F43_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf932);
    QuestionFile qf933 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F43'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F43_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf933);
    QuestionFile qf934 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F44_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf934);
    QuestionFile qf935 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F44_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf935);
    QuestionFile qf936 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F44'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F44_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf936);
    QuestionFile qf937 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F45_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf937);
    QuestionFile qf938 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F45_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf938);
    QuestionFile qf939 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F45'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F45_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf939);
    QuestionFile qf940 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F46_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf940);
    QuestionFile qf941 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F46'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F46_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf941);
    QuestionFile qf942 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F47_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf942);
    QuestionFile qf943 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F47_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf943);
    QuestionFile qf944 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_F47_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf944);
    QuestionFile qf945 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F47'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F47_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf945);
    QuestionFile qf946 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F48_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf946);
    QuestionFile qf947 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F48'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F48_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf947);
    QuestionFile qf948 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F49_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf948);
    QuestionFile qf949 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F49'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F49_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf949);
    QuestionFile qf950 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F50_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf950);
    QuestionFile qf951 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F50'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F50_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf951);
    QuestionFile qf952 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F51_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf952);
    QuestionFile qf953 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F51_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf953);
    QuestionFile qf954 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F51'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F51_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf954);
    QuestionFile qf955 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F52_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf955);
    QuestionFile qf956 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F52'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F52_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf956);
    QuestionFile qf957 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F53_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf957);
    QuestionFile qf958 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F53_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf958);
    QuestionFile qf959 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F53'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F53_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf959);
    QuestionFile qf960 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F54_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf960);
    QuestionFile qf961 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F54'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F54_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf961);
    QuestionFile qf962 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F55_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf962);
    QuestionFile qf963 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F55'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F55_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf963);
    QuestionFile qf964 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F56_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf964);
    QuestionFile qf965 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F56'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F56_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf965);
    QuestionFile qf966 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F57_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf966);
    QuestionFile qf967 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F57'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F57_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf967);
    QuestionFile qf968 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F58_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf968);
    QuestionFile qf969 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F58'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F58_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf969);
    QuestionFile qf970 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F59_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf970);
    QuestionFile qf971 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F59'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F59_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf971);
    QuestionFile qf972 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F60_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf972);
    QuestionFile qf973 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F60_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf973);
    QuestionFile qf974 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_F60_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf974);
    QuestionFile qf975 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_F60_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf975);
    QuestionFile qf976 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F60'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F60_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf976);
    QuestionFile qf977 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F61_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf977);
    QuestionFile qf978 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F61_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf978);
    QuestionFile qf979 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_F61_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf979);
    QuestionFile qf980 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_F61_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf980);
    QuestionFile qf981 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F61'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F61_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf981);
    QuestionFile qf982 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F62_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf982);
    QuestionFile qf983 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F62_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf983);
    QuestionFile qf984 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_F62_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf984);
    QuestionFile qf985 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,questionAnswerType:1
        ,fileNo:3
        ,filePath:'1162_F62_question_3.jpg'
        ,fileType:2);
    db.insertquestionfile(qf985);
    QuestionFile qf986 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F62'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F62_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf986);
    QuestionFile qf987 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F63_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf987);
    QuestionFile qf988 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F63_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf988);
    QuestionFile qf989 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F63'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F63_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf989);
    QuestionFile qf990 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F64_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf990);
    QuestionFile qf991 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F64_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf991);
    QuestionFile qf992 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F64'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F64_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf992);
    QuestionFile qf993 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F65_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf993);
    QuestionFile qf994 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F65_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf994);
    QuestionFile qf995 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F65'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F65_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf995);
    QuestionFile qf996 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F66_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf996);
    QuestionFile qf997 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F66_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf997);
    QuestionFile qf998 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F66'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F66_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf998);
    QuestionFile qf999 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F67_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf999);
    QuestionFile qf1000 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F67_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1000);
    QuestionFile qf1001 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F67'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F67_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1001);
    QuestionFile qf1002 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F68_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1002);
    QuestionFile qf1003 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F68_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1003);
    QuestionFile qf1004 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F68'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F68_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1004);
    QuestionFile qf1005 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F69_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1005);
    QuestionFile qf1006 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F69_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1006);
    QuestionFile qf1007 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F69'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F69_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1007);
    QuestionFile qf1008 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F70_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1008);
    QuestionFile qf1009 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F70_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1009);
    QuestionFile qf1010 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,questionAnswerType:1
        ,fileNo:2
        ,filePath:'1162_F70_question_2.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1010);
    QuestionFile qf1011 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F70'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F70_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1011);
    QuestionFile qf1012 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F71_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1012);
    QuestionFile qf1013 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F71_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1013);
    QuestionFile qf1014 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F71'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F71_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1014);
    QuestionFile qf1015 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F72_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1015);
    QuestionFile qf1016 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F72_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1016);
    QuestionFile qf1017 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F72'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F72_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1017);
    QuestionFile qf1018 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F73_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1018);
    QuestionFile qf1019 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F73_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1019);
    QuestionFile qf1020 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F73'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F73_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1020);
    QuestionFile qf1021 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F74_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1021);
    QuestionFile qf1022 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F74_question_1.jpg'
        ,fileType:2);
    db.insertquestionfile(qf1022);
    QuestionFile qf1023 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F74'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F74_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1023);
    QuestionFile qf1024 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F75'
        ,questionAnswerType:1
        ,fileNo:1
        ,filePath:'1162_F75_question_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1024);
    QuestionFile qf1025 = QuestionFile(
        businessYear:2021
        ,period:2
        ,questionNo:'F75'
        ,questionAnswerType:2
        ,fileNo:1
        ,filePath:'1162_F75_answer_1.txt'
        ,fileType:1);
    db.insertquestionfile(qf1025);




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

