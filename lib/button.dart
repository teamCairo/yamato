import 'package:flutter/material.dart';



class Button extends StatefulWidget {
  Button(this.contents, this.number);
  String contents;
  int number;


  @override
  _ButtonState createState() => _ButtonState();

}

class _ButtonState extends State<Button> {
  Color _colora = Colors.indigoAccent.shade700;
  Color _bcolora = Colors.white;
  String contents1;
  int number1;
  List<String> _filtersa =[];

  Color color = Colors.indigoAccent.shade700;
  Color bcolor  = Colors.white;

  void initState() {
    super.initState();
    if (widget.contents != null) {
      this.contents1 = widget.contents;
    }
    if(widget.number != null) {
      this.number1 = widget.number;
    }
  }

  activateButton(){


      if(color == Colors.indigoAccent.shade700){
        setState(() {
          color = Colors.white;
          bcolor = Colors.indigoAccent.shade700;
          _filtersa.add(number1.toString());
        });}else if(color == Colors.indigoAccent.shade700){
        setState(() {
          color = Colors.indigoAccent.shade700;
          bcolor = Colors.white;
          _filtersa.remove(number1.toString());
        });
      }
    }


    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
         activateButton();
        },
        child: Container(
          height: 43,
          //40
          width: 72,
          //70
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _colora,
                width: 1,
              ),
              top: BorderSide(
                color: _colora,
                width: 1,
              ),
              left: BorderSide(
                color: _colora,
                width: 1,
              ),
              right: BorderSide(
                color: _colora,
                width: 1,
              ),
            ),
            color: _bcolora,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            this.contents1, style: TextStyle(fontSize: 18, color: _colora),
          ),
        ),
      );
    }
  }

