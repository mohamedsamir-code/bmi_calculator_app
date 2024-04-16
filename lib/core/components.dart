import 'package:flutter/material.dart';

import 'constants.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer(
      {super.key,
      required this.gender,
      required this.icon,
      required this.isMale});

  final String gender;
  final IconData icon;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: isMale == true
              ? Constants.secondryColor
              : Constants.lightGreyColor,
          borderRadius: BorderRadius.all(
            Radius.circular(17),
          ),
          border: Border.all(
              color: isMale == true
                  ? Constants.primaryColor
                  : Constants.lightGreyColor)),
      child: isMale == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 60,
                      color: Constants.primaryColor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      gender,
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10,
                    ),
                    backgroundColor: Constants.primaryColor,
                    radius: 7,
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 60,
                  color: Constants.darkGreyColor,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  gender,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.onPressed});

  final Widget text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      textColor: Colors.white,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 50,
      minWidth: 300,
      color: Constants.primaryColor,
      onPressed: onPressed,
      child: text,
    );
  }
}
