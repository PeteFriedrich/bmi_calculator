import 'package:flutter/material.dart';

class BMIInfo extends StatelessWidget {
  const BMIInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Information'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const Center(
            child: Text(
              'BMI: What it is and its categories',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
                'Body mass index (BMI) is a measure of body fat based on height and weight that is used to classify people as underweight, normal weight, overweight, or obese. It is calculated by dividing weight in kilograms by height in meters squared.'),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'BMI Categories',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'BMI Categories',
            ),
          ),
        ],
      ),
    );
  }
}
