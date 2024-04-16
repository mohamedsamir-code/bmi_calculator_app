import 'package:bmi_calculator/core/components.dart';
import 'package:bmi_calculator/core/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.BMI,
      required this.height,
      required this.weight,
      required this.age,
      required this.isMale});

  static const String routeName = 'result';
  final double BMI;
  final int height;
  final int weight;
  final int age;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Constants.blackColor,
              ),
              Text(
                'Back',
                style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text(
              'Result',
              style: TextStyle(
                  color: Constants.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 30, right: 30),
            child: Column(
              children: [
                Text(
                  'Your BMI is',
                  style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Constants.primaryColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${BMI.toStringAsFixed(1)}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Text(
                        'kg/m2',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${calculateState()}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Constants.lightGreyColor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              isMale == true ? Icons.man : Icons.woman,
                              color: Constants.blackColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              isMale == true ? 'Male' : 'Female',
                              style: TextStyle(color: Constants.lightGreyColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Column(
                          children: [
                            Text(
                              '$age',
                              style: TextStyle(
                                  color: Constants.blackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Age',
                              style: TextStyle(color: Constants.lightGreyColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Column(
                          children: [
                            Text(
                              '$height',
                              style: TextStyle(
                                  color: Constants.blackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Height',
                              style: TextStyle(color: Constants.lightGreyColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Column(
                          children: [
                            Text(
                              '$weight',
                              style: TextStyle(
                                  color: Constants.blackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Weight',
                              style: TextStyle(color: Constants.lightGreyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      color: Constants.lightGreyColor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'A BMI of ${writeRangesOfStatesOfBMI()} indicates that your',
                        ),
                        Text(
                          'weight is in ${calculateStateInContainer()} category for a',
                        ),
                        Text(
                          'person of your height.',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Maintaining a healthy weight reduce the'),
                        Text('risk of diseases associated with'),
                        Text('overweight and obesity.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                DefaultButton(
                  text: Row(
                    children: [
                      SizedBox(
                        width: 90,
                      ),
                      Text('TRY AGAIN'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.refresh)
                    ],
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  String calculateState() {
    if (BMI > 0 && BMI < 18.5) {
      return '(UnderWeight)';
    } else if (BMI >= 18.5 && BMI < 25) {
      return '(Normal)';
    } else if (BMI >= 25 && BMI < 30) {
      return '(OverWeight)';
    } else if (BMI == 0) {
      return '(Invalid Value)';
    } else {
      return '(Obese)';
    }
  }

  String calculateStateInContainer() {
    if (BMI > 0 && BMI < 18.5) {
      return 'UnderWeight';
    } else if (BMI >= 18.5 && BMI < 25) {
      return 'Normal';
    } else if (BMI >= 25 && BMI < 30) {
      return 'OverWeight';
    } else if (BMI == 0) {
      return '(Invalid Value)';
    } else {
      return 'Obese';
    }
  }

  String writeRangesOfStatesOfBMI() {
    if (BMI > 0 && BMI < 18.5) {
      return '1 - 18.4';
    } else if (BMI >= 18.5 && BMI < 25) {
      return '18.5 - 24.9';
    } else if (BMI >= 25 && BMI < 30) {
      return '25 - 29.9';
    } else if (BMI == 0) {
      return '0';
    } else {
      return 'greater than or equal to 30';
    }
  }
}
