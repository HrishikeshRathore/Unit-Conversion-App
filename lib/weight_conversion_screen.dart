import 'package:flutter/material.dart';

class WeightConversionScreen extends StatefulWidget {
  @override
  _WeightConversionScreenState createState() => _WeightConversionScreenState();
}

class _WeightConversionScreenState extends State<WeightConversionScreen> {


  int _valueIn = 1;
  int _valueOut = 1;

  final getInputText = TextEditingController();

  String result = 'Result';

  void switchCases() {
    switch (_valueIn) {
      case 1:
        switch (_valueOut) {
          case 1:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;

          case 2:
            result =
                (double.parse(getInputText.text) * 1000).toStringAsFixed(2);
            break;

          case 3:
            result =
                (double.parse(getInputText.text) * 0.15747304).toStringAsFixed(
                    2);
            break;

          case 4:
            result =
                (double.parse(getInputText.text) * 2.20462262).toStringAsFixed(
                    2);
            break;

          case 5:
            result =
                (double.parse(getInputText.text) * 5000).toStringAsFixed(2);
            break;

          case 6:
            result =
                (double.parse(getInputText.text) * 15432.3584).toStringAsFixed(
                    2);
            break;
        }
        break;

      case 2:
        switch (_valueOut) {
          case 1:
            result =
                (double.parse(getInputText.text) * 0.001).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;

          case 3:
            result =
                (double.parse(getInputText.text) * 0.00015747).toStringAsFixed(
                    2);
            break;

          case 4:
            result =
                (double.parse(getInputText.text) * 0.00220462).toStringAsFixed(
                    2);
            break;

          case 5:
            result = (double.parse(getInputText.text) * 5).toStringAsFixed(2);
            break;

          case 6:
            result =
                (double.parse(getInputText.text) * 15.4323584).toStringAsFixed(
                    2);
            break;
        }
        break;

      case 3:
        switch (_valueOut) {
          case 1:
            result =
                (double.parse(getInputText.text) * 6.35029317).toStringAsFixed(
                    2);
            break;

          case 2:
            result =
                (double.parse(getInputText.text) * 6350.09317).toStringAsFixed(
                    2);
            break;

          case 3:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;

          case 4:
            result = (double.parse(getInputText.text) * 14).toStringAsFixed(2);
            break;

          case 5:
            result =
                (double.parse(getInputText.text) * 31751.4659).toStringAsFixed(
                    2);
            break;

          case 6:
            result =
                (double.parse(getInputText.text) * 97999.9999).toStringAsFixed(
                    2);
            break;
        }
        break;

      case 4:
        switch (_valueOut) {
          case 1:
            result =
                (double.parse(getInputText.text) * 0.45359237).toStringAsFixed(
                    2);
            break;

          case 2:
            result =
                (double.parse(getInputText.text) * 453.59237).toStringAsFixed(
                    2);
            break;

          case 3:
            result =
                (double.parse(getInputText.text) * 0.07142857).toStringAsFixed(
                    2);
            break;

          case 4:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;

          case 5:
            result =
                (double.parse(getInputText.text) * 2267.96185).toStringAsFixed(
                    2);
            break;

          case 6:
            result =
                (double.parse(getInputText.text) * 6999.99999).toStringAsFixed(
                    2);
            break;
        }
        break;

      case 5:
        switch (_valueOut) {
          case 1:
            result =
                (double.parse(getInputText.text) * 0.0002).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text) * 0.2).toStringAsFixed(2);
            break;

          case 3:
            result =
                (double.parse(getInputText.text) * 0.00003149).toStringAsFixed(
                    2);
            break;

          case 4:
            result =
                (double.parse(getInputText.text) * 0.00044092).toStringAsFixed(
                    2);
            break;

          case 5:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;

          case 6:
            result =
                (double.parse(getInputText.text) * 3.08647167).toStringAsFixed(
                    2);
            break;
        }
        break;

      case 6:
        switch (_valueOut) {
          case 1:
            result =
                (double.parse(getInputText.text) * 0.0000648).toStringAsFixed(
                    2);
            break;

          case 2:
            result =
                (double.parse(getInputText.text) * 0.06479891).toStringAsFixed(
                    2);
            break;

          case 3:
            result =
                (double.parse(getInputText.text) * 0.0000102).toStringAsFixed(
                    2);
            break;

          case 4:
            result =
                (double.parse(getInputText.text) * 0.00014286).toStringAsFixed(
                    2);
            break;

          case 5:
            result =
                (double.parse(getInputText.text) * 0.32399455).toStringAsFixed(
                    2);
            break;

          case 6:
            result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
            break;
        }
        break;
    }
  }
    void onButtonPress() {
      print(getInputText.text);

      setState(() {
        switchCases();
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Mass'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.line_weight_outlined),
        ),
        backgroundColor: Color.fromRGBO(247,255,230,1),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .85,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: getInputText,
                    decoration: InputDecoration(
                      labelText: 'Enter the number',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      fillColor: Color.fromRGBO(247,255,230,1),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                        value: _valueIn,
                        dropdownColor: Color.fromRGBO(255, 255, 255, .9),
                        items: [
                          DropdownMenuItem(
                            child: Text('Kilogram'),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text('Gram'),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text('Stone'),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text('Pound'),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text('Carat'),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text('Grain'),
                            value: 6,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _valueIn = value;
                          });
                        }
                    ),
                    Container(
                      child: Text('to'),
                    ),
                    DropdownButton(
                        value: _valueOut,
                        dropdownColor: Color.fromRGBO(255, 255, 255, .9),
                        items: [
                          DropdownMenuItem(
                            child: Text('Kilogram'),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text('Gram'),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text('Stone'),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text('Pound'),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text('Carat'),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text('Grain'),
                            value: 6,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _valueOut = value;
                          });
                        }
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  splashColor: Colors.blueAccent,
                  shape: StadiumBorder(),
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Color.fromRGBO(247,255,230,1),
                    ),
                  ),
                  color: Colors.blue,
                  elevation: 4,
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20,
                  ),
                  onPressed: onButtonPress,
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: Center(
                    child: Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }