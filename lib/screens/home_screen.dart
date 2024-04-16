import 'dart:math';
import 'package:bmi_calculator/core/components.dart';
import 'package:bmi_calculator/core/constants.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  int age = 22;
  int weight = 52;
  int height = 164;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Constants.blackColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            'Gender',
            style: TextStyle(
                color: Constants.blackColor,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          )),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: DefaultContainer(
                      gender: 'Male',
                      icon: Icons.man,
                      isMale: isMale == true ? true : false)),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: DefaultContainer(
                      gender: 'Female',
                      icon: Icons.woman,
                      isMale: isMale == true ? false : true))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Height(cm)',
              style: TextStyle(
                  color: Constants.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(color: Constants.lightGreyColor),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() - 3;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() - 3}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() - 2;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() - 2}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() - 1;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() - 1}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                color: Constants.blackColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                            color: Constants.primaryColor,
                            width: 2,
                            height: 80,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() + 1;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() + 1}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() + 2;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() + 2}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            height = height.round() + 3;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '${height.round() + 3}',
                              style: TextStyle(
                                  color: Constants.lightGreyColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: Constants.blackColor,
                              width: 2,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(
                          color: Constants.blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Constants.lightGreyColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Constants.blackColor)),
                                child: Icon(Icons.remove),
                              )),
                          Text(
                            '$age',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Constants.blackColor)),
                                child: Icon(Icons.add),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Weight(kg)',
                      style: TextStyle(
                          color: Constants.blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(
                            color: Constants.lightGreyColor,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.6),
                            child: Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Constants.primaryColor,
                              size: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Text('${weight - 1}')),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Text('${weight + 1}')),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          DefaultButton(
              text: Text('CALCULATE BMI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      double BMI = weight / pow(height / 100, 2);
                      if (weight < 0 || height < 0) {
                        BMI = 0;
                      }
                      return ResultScreen(
                          BMI: BMI,
                          height: height,
                          weight: weight,
                          age: age,
                          isMale: isMale);
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
