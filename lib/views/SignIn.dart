import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(children: [
              SizedBox(width: 56,height: 100,),
              Text("Sign in", style: TextStyle(fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF181D2D)),),]),
            Row(children: [
              SizedBox(width: 56,height: 0,),
              Text("Welcome back",style:TextStyle(
                fontSize: 25,
                color: Color(0xFFAAAAAA),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30,),
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
                      child: Icon(Icons.password_outlined),
                    ),
        
                    title: TextField(
                       decoration: InputDecoration(
                         labelText: "Password",
                         labelStyle: TextStyle(
                           color: Color(0xFFAAAAAA),
                         ),
                         border: InputBorder.none,
                       ),
                    ),
                    trailing: Icon(Icons.visibility_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                 SizedBox(height: 20,),
                 Center(
                       child: Text("Forgot Password?",
                         style: TextStyle(
                           decoration: TextDecoration.underline,
                           fontSize: 18,
                           color: Color(0xFF324A59)
                       ),),
                 ),
                  SizedBox(height: 80,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn() ));
                    },
                    child:  Row(
                      children: [
                        Spacer(),
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Color(0xFF324A59),
                          child: Icon(Icons.arrow_forward, size: 40, color: Colors.white, ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 60,width: 56,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text("New member?",style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFAAAAAA)
                      ),),
                      Text("Sign up",style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF324A59)
                      ),)
                    ],
                  )
        
                ],
              ),
        
            ),
          ],
        ),
      ),
    );
  }
}
