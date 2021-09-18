import 'package:calculate/const.dart';
import 'package:calculate/widgets/my_column.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const FlipperPage(),
    );
  }
}

class FlipperPage extends StatefulWidget {
  const FlipperPage({Key? key}) : super(key: key);

  @override
  State<FlipperPage> createState() => _FlipperPageState();
}

class _FlipperPageState extends State<FlipperPage> {
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBackgroundColor,
        appBar: AppBar(
            backgroundColor: myColorOne,
            title: Center(
              child: Text(
                'DEAD WISOR',
                style: GoogleFonts.aldrich(
                    fontSize: 40, fontWeight: FontWeight.w900),
              ),
            )),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyColumn(
                      text: 'AGE',
                      ageNumber: age.toString(),
                      axis: MainAxisAlignment.center,
                      myWidget: Slider(
                          min: 10,
                          max: 90,
                          activeColor: myBackgroundColor,
                          value: age.ceilToDouble(),
                          onChanged: ((value) {
                            setState(() {
                              age = value.round();
                            });
                          })),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(child: MyColumn(text: 'Push on')),
                  Expanded(
                    child: MyColumn(
                      text: 'FIND DATE',
                      icon: Icons.outlet_sharp,
                      axis: MainAxisAlignment.center,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(child: MyColumn(text: 'You will die in 5 years')),
                  Expanded(child: MyColumn(text: 'Reasons'))
                ],
              ),
            ),
          ],
        ));
  }
}
