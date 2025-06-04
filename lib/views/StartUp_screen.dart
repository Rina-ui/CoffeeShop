import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

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
    );
  }
}
