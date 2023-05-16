import 'package:flutter/material.dart';
import 'package:calculator/calc.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController operator = TextEditingController();
  String ans = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('calculator'),),
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(fillColor: Colors.white24, filled: true,
                  border: OutlineInputBorder()),),
            Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('c'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('<-'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),)
                ),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('+/-'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('/'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)
                ),)),
              ],),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('7'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('8'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('9'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('*'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
              ],),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('6'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('5'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('4'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('-'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
              ],),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('3'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('2'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('1'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('+'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
              ],),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('%'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('0'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('.'), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
                SizedBox(width: 8,),
                Expanded(child: TextButton(
                  onPressed: () {}, child: Text('='), style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),)),
              ],),
          ],
        ),
      ),
    );
  }
  Widget customOutlineButton(String val) {
    return Expanded(
      child: OutlinedButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => btnClicked(val),
        child: Text(
          val,
          style: TextStyle(fontSize: 35.0, color: Colors.deepOrange),
        ),
      ),
    );
  }
  int num1, num2;
  String res, text = "";
  late String operator;
  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      num1 = 0;
      num2 = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      num1 = int.parse(text);
      res = "";
      operator = btnText;
    } else if (btnText == "=") {
      num2 = int.parse(text);
      if (operator == "+") {
        res = (num1 + num2).toString();
      }
      if (operator == "-") {
        res = (num1 - num2).toString();
      }
      if (operator == "x") {
        res = (num1 * num2).toString();
      }
      if (operator == "/") {
        res = (num1 ~/ num2).toString();
      }
    } else {
      res = int.parse(text + btnText).toString();
    }
    setState(() {
      text = res;
    });
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('operator', operator));
  }
} Widget customOutlineButton(String val) {
  return Expanded(
    child: OutlinedButton(
      padding EdgeInsets.all(25.0),
      onPressed: () => btnClicked(val),
      child: Text(
        val,
        style: TextStyle(fontSize: 35.0, color: Colors.deepOrange),
      ),
    ),
  );
}
int num1, num2;
String res = "";
void btnClicked(String btnText) {
  if (btnText == "C") {
    res = "";
    num1 = 0;
    num2 = 0;
  } else if (btnText == "+" ||
      btnText == "-" ||
      btnText == "x" ||
      btnText == "/") {
    num1 = int.parse();
    res = "";
    operator = btnText;
  } else if (btnText == "=") {
    num2 = int.parse();
    if (operator == "+") {
      res = (num1 + num2).toString();
    }
    if (operator == "-") {
      res = (num1 - num2).toString();
    }
    if (operator == "x") {
      res = (num1 * num2).toString();
    }
    if (operator == "/") {
      res = (num1 ~/ num2).toString();
    }
  } else {
    res = int.parse(text + btnText).toString();
  }
  setState(() {
    text = res;
  });
}


