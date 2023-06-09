import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images=[
     "google.png",
      "fb.png",
      "twitter.png"
    ];

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                    "assets/images/signup.png"
                ),
                    fit: BoxFit.cover
                )
            ),
           child: Column(
             children: [
               SizedBox(height: h*0.18,),
               CircleAvatar(
                 backgroundColor: Colors.white70,
                 radius: 40,
                 backgroundImage: AssetImage("assets/images/avatar.png"),
               )
             ],
           ),
          ),
         Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your E-mail Id",
                        prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                /*Row(
                  children: [
                    Expanded(child: Container(),),
                    Text("Sign Into Your Account",style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],

                    ),)

                  ],
                ),*/
              ]
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage(
                  "assets/images/login.jpg"
              ),
                  fit: BoxFit.cover
              ),

            ),
            child:  Center(
              child: Text("Sign Up",style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: "Have an Account?",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[500],
            )
          )),
          SizedBox(height: w*0.2,),
          RichText(text: TextSpan(text: "Sign Up Using One Of The Following Method",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15
              ),

          )),
          Wrap(
           children: List<Widget>.generate(
            3,
               (index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                 radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/"+images[index]
                    ),

                  ),
                ),
              );
               }
           ),


          )

        ],
      ),
    );
  }
}
