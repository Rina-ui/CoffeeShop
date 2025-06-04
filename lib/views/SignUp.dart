import 'package:coffeeshop/views/Forgotpassword.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 50,),

          Row(
            children: [
              Container(
                width: 50,
              ),
              Text('Sign up',
              style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 22, 
                  letterSpacing: 0, 
                  fontFamily: 'Poppins',
                  color: Color(0xFF181D2D)
              ),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              Container(
                width: 50,
              ),
              Text('Create an account here',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                    color: Color(0xFFAAAAAA)
                ),
              )
            ],
          ),


          SizedBox(height: 5,),

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
                    child: Icon(Icons.person_outline_outlined),
                  ),

                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "Create an account here",
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
                      height: 0,)
                ),
                
                Padding(
                    padding: EdgeInsets.all(9.0)
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.mobile_friendly),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
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
                      height: 0,)
                ),

                Padding(
                    padding: EdgeInsets.all(9.0)
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      )
                    ),
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.email_outlined),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email address',
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
                      height: 0,)
                ),
                Padding(
                    padding: EdgeInsets.all(9.0)
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            )
                        )
                    ),
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.password),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                      height: 0,)
                ),
              ],
            ),
          ),
          
          SizedBox(height: 20,),
          Text('By signing up you agree with our Terms of Use',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              fontSize: 12,
              color: Color(0xFF324A59),
            ),
          ),

          SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPassword() ));
            },
            child:  Row(
              children: [
                Spacer(),
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Color(0xFF324A59),
                  child: Icon(Icons.arrow_forward, size: 40, color: Colors.white, ),
                ),
                SizedBox(width: 20,),
              ],
            ),
          ),

          SizedBox(height: 60,width: 56,),
          Row(
            children: [
              SizedBox(width: 40,),
              Text("Already a member? ",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFAAAAAA),
                  fontWeight: FontWeight.w400,
              ),),
              Text("Sign in ",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF324A59),
                  fontWeight: FontWeight.w500,
              ),)
            ],
          )
        ],
      ),
    );
  }
}
