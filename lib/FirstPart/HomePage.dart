import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 90,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Color(0xFF324A59),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/coffeeImage.png',
                          width: 657,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 20,
                            top: 250,
                            left: 90,
                            child: Text(
                              "Magic Coffee",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontFamily: "Reenie Beanie",
                              ),
                            ),
                        )

                      ],
                    )
                  ]
                ),
              ),

            ),
          ),

          SizedBox(height: 20,),

          Expanded(
            flex: 1,
              child: Column(
                children: [
                  Text("Feel yourself like a barista!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        letterSpacing: 0
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Magic coffee on order.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        letterSpacing: 0
                    ),
                  ),

                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 10,
                          width: 33,
                          decoration: BoxDecoration(
                              color: Color(0xFF324A59),
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      SizedBox(width: 5,),
                      Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Color(0x33324A5933),
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      SizedBox(width: 5,),
                      Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Color(0x33324A5933),
                              borderRadius: BorderRadius.circular(50)
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 50,),

                  Row(
                    children: [
                      Spacer(),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Color(0xFF324A59),
                        child: Icon(Icons.arrow_forward, size: 40, color: Colors.white, ),
                      ),
                      SizedBox(width: 50,),
                    ],
                  )
                ]
              )
          )
        ],
      ),
    );
  }
}
