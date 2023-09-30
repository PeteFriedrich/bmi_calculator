import 'package:flutter/material.dart';
import 'txt_en.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controllerWeight = TextEditingController();
  final TextEditingController _controllerHeight = TextEditingController();
  String _bmiDisplay = '00.00';
  String _bmiRange = defaultBmiRange;
  String _bmiExplanation = defaultRangeExplanation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeTitle),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              inputPrompt,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _controllerWeight,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                hintText: enterWeight + kilogram,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _controllerHeight,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                hintText: enterHeight + metre,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                List result = calculateBMI(
                  _controllerWeight.text,
                  _controllerHeight.text,
                );
                setState(() {
                  _bmiDisplay = result[0];
                  _bmiRange = result[1];
                  _bmiExplanation = result[2];
                });
              },
              child: Text(calculate),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: Text(
                  yourBMI,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _bmiDisplay,
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  _bmiRange,
                  style: const TextStyle(fontSize: 25.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Text(
                  _bmiExplanation,
                  //'You are within the 18.5 to 24.9 region, which puts you in the normal weight category.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/info');
              },
              child: Text(moreInfo),
            ),
          ),
        ],
      ),
    );
  }
}

List calculateBMI(String weight, String height) {
  double passedWeight = double.parse(weight);
  double passedHeight = double.parse(height);

  // make an array [BMI, Range, Explanation]
  var bmiResults = List<String>.filled(3, '');

  // calculate the BMI
  double bmi = (passedWeight / (passedHeight * passedHeight));

  // Make the messages to go with the BMI
  bmi.toStringAsFixed(1);

  if (bmi < 18.5) {
    // Underweight
    bmiResults[1] = underweightBmiRange;
    bmiResults[2] = underweightRangeExplanation;
  }
  if (bmi >= 18.5 && bmi < 25) {
    // Normal weight
    bmiResults[1] = normalBmiRange;
    bmiResults[2] = normalRangeExplanation;
  }
  if (bmi >= 25 && bmi < 30) {
    // Overweight
    bmiResults[1] = overweightBmiRange;
    bmiResults[2] = overweightRangeExplanation;
  }
  if (bmi >= 30) {
    // Obese
    bmiResults[1] = obeseBmiRange;
    bmiResults[2] = obeseRangeExplanation;
  }

  bmiResults[0] = bmi.toStringAsFixed(1).toString();
  return bmiResults;
}
