import 'package:flutter/material.dart';

class LengthConversionScreen extends StatefulWidget {
  @override
  _LengthConversionScreenState createState() => _LengthConversionScreenState();
}

class _LengthConversionScreenState extends State<LengthConversionScreen> {
  int _valueIn = 1;
  int _valueOut = 1;

  final getInputText = TextEditingController();

  String result = 'Result';

  void switchCases(){

    switch(_valueIn){
      case 1:
        switch(_valueOut){
          case 1:
            result = (double.parse(getInputText.text)*1).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text)*3.2808399).toStringAsFixed(2);
            break;

          case 3:
            result = (double.parse(getInputText.text)*1.0936133).toStringAsFixed(2);
            break;

          case 4:
            result = (double.parse(getInputText.text)*39.3700787).toStringAsFixed(2);
            break;
        }
        break;

      case 2:
        switch(_valueOut){
          case 1:
            result = (double.parse(getInputText.text)*0.3048).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text)*1).toStringAsFixed(2);
            break;

          case 3:
            result = (double.parse(getInputText.text)*0.33333333).toStringAsFixed(2);
            break;

          case 4:
            result = (double.parse(getInputText.text)*12).toStringAsFixed(2);
            break;
        }
        break;

      case 3:
        switch(_valueOut){
          case 1:
            result = (double.parse(getInputText.text)*0.9144).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text)*3).toStringAsFixed(2);
            break;

          case 3:
            result = (double.parse(getInputText.text)*1).toStringAsFixed(2);
            break;

          case 4:
            result = (double.parse(getInputText.text)*36).toStringAsFixed(2);
            break;
        }
        break;

      case 4:
        switch(_valueOut){
          case 1:
            result = (double.parse(getInputText.text)*0.0254).toStringAsFixed(2);
            break;

          case 2:
            result = (double.parse(getInputText.text)*0.08333333).toStringAsFixed(2);
            break;

          case 3:
            result = (double.parse(getInputText.text)*0.02777778).toStringAsFixed(2);
            break;

          case 4:
            result = (double.parse(getInputText.text)*1).toStringAsFixed(2);
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
        title: Text('Length'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.all_inclusive_outlined),
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
                width: MediaQuery.of(context).size.width * .85,
                child: TextField(
                  cursorColor: Colors.green,
                  keyboardType: TextInputType.number,
                  controller: getInputText,
                  decoration: InputDecoration(
                    labelText: 'Enter the number',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
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
                      dropdownColor: Color.fromRGBO(255,255,255,.9),
                      items: [
                        DropdownMenuItem(
                          child: Text('Meter'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Foot'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('Yard'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('Inch'),
                          value: 4,
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
                      dropdownColor: Color.fromRGBO(255,255,255,.9),
                      items: [
                        DropdownMenuItem(
                          child: Text('Meter'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Foot'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('Yard'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('Inch'),
                          value: 4,
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
                splashColor: Colors.greenAccent,
                shape: StadiumBorder(),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Color.fromRGBO(247,255,230,1),
                  ),
                ),
                color: Colors.green,
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
