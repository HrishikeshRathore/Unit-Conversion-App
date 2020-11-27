import 'package:flutter/material.dart';
import 'dart:math';

class TemperatureConversionScreen extends StatefulWidget {
  @override
  _TemperatureConversionScreenState createState() => _TemperatureConversionScreenState();
}

class _TemperatureConversionScreenState extends State<TemperatureConversionScreen> {

  int _valueIn = 1;
  int _valueOut = 1;

  final getInputText = TextEditingController();

  String result = 'Result';

  void onButtonPress() {
      print(getInputText.text);

      setState(() {

        if(_valueIn == 1 && _valueOut == 1){
          result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
        }
        if(_valueIn == 1 && _valueOut == 2){
          result = (double.parse(getInputText.text) * 1.8 + 32).toStringAsFixed(2);
        }
        if(_valueIn == 1 && _valueOut == 3){
          result = (double.parse(getInputText.text) + 273.15).toStringAsFixed(2);
        }
        if(_valueIn == 1 && _valueOut == 4){
          result = ((double.parse(getInputText.text) + 273.15) * 1.8).toStringAsFixed(2);
        }

        if(_valueIn == 2 && _valueOut == 1){
          result = ((double.parse(getInputText.text) - 32) / 1.8).toStringAsFixed(2);
        }
        if(_valueIn == 2 && _valueOut == 2){
          result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
        }
        if(_valueIn == 2 && _valueOut == 3){
          result = ((double.parse(getInputText.text)-32)*5/9 + 273.15).toStringAsFixed(2);
        }
        if(_valueIn == 2 && _valueOut == 4){
          result = (double.parse(getInputText.text) + 459.67).toStringAsFixed(2);
        }

        if(_valueIn == 3 && _valueOut == 1){
          result = (double.parse(getInputText.text) - 273.15).toStringAsFixed(2);
        }
        if(_valueIn == 3 && _valueOut == 2){
          result = ((double.parse(getInputText.text) - 273.15) * 9/5 + 32).toStringAsFixed(2);
        }
        if(_valueIn == 3 && _valueOut == 3){
          result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
        }
        if(_valueIn == 3 && _valueOut == 4){
          result = (double.parse(getInputText.text) * 9/5).toStringAsFixed(2);
        }

        if(_valueIn == 4 && _valueOut == 1){
          result = ((double.parse(getInputText.text) - 491.67) / 1.8).toStringAsFixed(2);
        }
        if(_valueIn == 4 && _valueOut == 2){
          result = ((double.parse(getInputText.text) - 491.67) + 32).toStringAsFixed(2);
        }
        if(_valueIn == 4 && _valueOut == 3){
          result = (((double.parse(getInputText.text) - 491.67) / 1.8)+273.15).toStringAsFixed(2);
        }
        if(_valueIn == 4 && _valueOut == 4){
          result = (double.parse(getInputText.text) * 1).toStringAsFixed(2);
        }

      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature'),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Icon(Icons.linear_scale),
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
                 keyboardType: TextInputType.number,
                 controller: getInputText,
                 decoration: InputDecoration(
                   labelText: 'Enter the number',
                   labelStyle: TextStyle(
                     color: Colors.red,
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.red,
                     ),
                   ),

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
                        child: Text('Celsius'),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('Fahrenheit'),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text('Kelvin'),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text('Rankine'),
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
                          child: Text('Celsius'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Fahrenheit'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('Kelvin'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('Rankine'),
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
                splashColor: Colors.redAccent,
                shape: StadiumBorder(),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Color.fromRGBO(247,255,230,1),
                  ),
                ),
                color: Colors.red,
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
                    result,
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

