import 'package:coffeeshop/views/verification.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(children: [
              Container(
                width: 50,
              ),
              Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 22,
                  letterSpacing: 0,
                  fontFamily: 'Poppins',
                  color: Color(0xFF181D2D)),),]),
            SizedBox(height: 20 ,),
            Row(children: [
              Container(
                width: 50,
              ),
              Text("Enter your Email address",style:TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  color: Color(0xFFAAAAAA)
              ),)
            ],
            ),
            SizedBox(height: 60,),
        
            SizedBox(
              width: 350,
              child: Column(
                children: [
                  Padding (padding: EdgeInsets.all(9)),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.email_outlined),
                    ),
        
                    title: TextField(
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                          color: Color(0xFFAAAAAA),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 200,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Verification() ));
                    },
                    child:  Row(
                      children: [
                        Spacer(),
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Color(0xFF324A59),
                          child: Icon(Icons.arrow_forward, size: 40, color: Colors.white, ),
                        ),
                      ],
                    ),
                  )
        
                ],
              ),
            )
        
          ],
        ),
      )
    );
  }
}
