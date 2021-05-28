import 'package:flutter/material.dart';

import 'filter.dart';



class Button extends StatefulWidget {
  Button(this.contents, this.number,this.flag);
  String contents;
  int number;
  bool flag;
  //method() => createState().activateButton(number);
  //method() => createState().colorchangeon();
 //method1() => createState().colorchangeoff();

  @override
  _ButtonState createState() => _ButtonState();


  //void activateButton(number1){}

}

class _ButtonState extends State<Button> {
  Color _colora ;
  //= Colors.indigoAccent.shade700;
  Color _bcolora ;
  //= Colors.white;
  String contents1;
  int number1;
  List<String> _filtersa = [];
  bool flag1;



  //Color color = Colors.indigoAccent.shade700;
  //Color bcolor  = Colors.white;

  void initState() {
    super.initState();
    if (widget.contents != null) {
      this.contents1 = widget.contents;
    }
    if (widget.number != null) {
      this.number1 = widget.number;
    }
    if (widget.flag != null) {
      this.flag1 = widget.flag;
   }
    if (widget.flag == false) {
      _colora = Colors.indigoAccent.shade700;
      _bcolora = Colors.white;
    } else if (widget.flag == true) {
      _colora = Colors.white;
      _bcolora = Colors.indigoAccent.shade700;
    }
  }


    void colorchangeon() {
      setState(() {
        _colora = Colors.white;
        _bcolora = Colors.indigoAccent.shade700;
        flag1 = true;
      });
    }
    void colorchangeoff() {
      setState(() {
        flag1 = false;
        _colora = Colors.indigoAccent.shade700;
        _bcolora = Colors.white;
      });

    }


    activateButton(int p) {
      if (flag1 == false) {
        colorchangeon();
        //flag1 == true;
        // _filtersa.add(number1.toString());
        // Filter().method(number1);
        //Filter().method2(p);
        //Filter().method(p);
        // print(_filtersa);
      } else if (flag1 == true) {
        colorchangeoff();
        //flag1 == false;
        // _filtersa.remove(number1.toString());
        // Filter().method1(number1);
        //Filter().method2(p);
        //Filter().method1(p);
        // print(_filtersa);
      } else {}
    }


    @override
    Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      var Button =GestureDetector(
        onTap: () {
          activateButton(this.number1);
        },
        child: Container(
          height: height * 0.046,
          //0.046
          //40
          width: width * 0.16,
          //0.16
          //0.18
          //70
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              top: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              left: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              right: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
            ),
            color: _bcolora,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            this.contents1, style: TextStyle(fontSize: 15, color: _colora),
          ),
        ),
      );
      return number1 == 1 ? Button :GestureDetector(
        onTap: () {
          activateButton(this.number1);
        },
        child: Container(
          height: height * 0.046,
          //0.046
          //40
          width: width * 0.16,
          //0.16
          //0.18
          //70
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              top: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              left: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
              right: BorderSide(
                color: _colora,
                width: width * 0.0025,
              ),
            ),
            color: _bcolora,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            this.contents1, style: TextStyle(fontSize: 15, color: _colora),
          ),
        ),
      );
    }
}
