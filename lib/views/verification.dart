import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'StartUp_screen.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(height: 50),
            Row(children: [
              Container(
                width: 50,
              ),
              Text(
                "Verification",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    letterSpacing: 0,
                    fontFamily: 'Poppins',
                    color: Color(0xFF181D2D)),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                ),
                Text(
                  "Enter the OTP code we sent you",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      color: Color(0xFFAAAAAA)),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(9)),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 60,
                      fieldWidth: 45,
                      borderWidth: 2,
                      activeFillColor: Color(0xFFF7F8FB),
                      selectedFillColor: Color(0xFF324A59),
                      inactiveFillColor: Color(0xFFF7F8FB),
                      inactiveColor: Color(0xFF324A59),
                      activeColor: Colors.green,
                      fieldOuterPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    mainAxisAlignment: MainAxisAlignment.start,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Resent in 00:30",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  color: Color(0xFFAAAAAA)),
            )),
            SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(9)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(),
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Color(0xFF324A59),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
