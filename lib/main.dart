import 'package:flutter/material.dart';

import './length_conversion_screen.dart';
import './weight_conversion_screen.dart';
import './temperature_conversion_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Conversion',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: UnitConversion(),
      routes: {
        '/length-screen': (ctx) => LengthConversionScreen(),
      },
    );
  }
}

class UnitConversion extends StatelessWidget {

  void lengthFunction(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(
        builder: (ctx)=> LengthConversionScreen())
    );
  }

  void weightFunction(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(
        builder: (ctx)=> WeightConversionScreen())
    );
  }

  void temperatureFunction(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(
        builder: (ctx)=> TemperatureConversionScreen())
    );
  }

  Widget categoryCard(String categoryText, Function categoryTapFunction, BuildContext context, String imageText) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      height: 200,
      child: InkWell(
        onTap:() => categoryTapFunction(context),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(4),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.asset(
                  imageText,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                    bottom: 30,
                     right: 0,
                     child: Container(
                       width: 180,
                       decoration: BoxDecoration(
                         color: Colors.black54,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(15),
                           bottomLeft: Radius.circular(15),
                         )
                       ),
                       padding: EdgeInsets.symmetric(
                         vertical: 20,
                         horizontal: 20,
                       ),
                       child: Text(
                         categoryText,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                           color: Colors.white,
                         ),
                         softWrap: true,
                         overflow: TextOverflow.fade,
                       ),
                     ),
              ),
            ],
          ),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Conversion'),
        leading: Icon(Icons.category),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(247,255,230,1),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            categoryCard('Length', lengthFunction, context, 'assets/images/length.jpg'),
            categoryCard('Mass', weightFunction, context, 'assets/images/weight.jpg'),
            categoryCard('Temperature', temperatureFunction, context, 'assets/images/temperature.jpg'),
          ],
        ),
      ),
    );
  }
}
