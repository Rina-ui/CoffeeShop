import 'package:flutter/material.dart';

import 'MapCard.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  void initState() {
    super.initState();

    //un delai de 10 secondes et va ver la page Mapcard
    Future.delayed(Duration(seconds: 10), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Mapcard()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/téléchargement.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            SizedBox(height: 100,),
            Image.asset('assets/images/coffeeImage.png',
              width: 150,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 20,),

            Text("Magic Coffee",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                )
            )
          ],
        ),
      ),
    );;
  }
}
