import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

          SizedBox(height: 70,),
        Container(
          width: w,
          margin: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),
              ),
              Text(
                "a@b.com",
                style: TextStyle(
                  fontSize: 18,

                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
          SizedBox(height: 200,),
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
              child: Text("Sign Out",style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),



        ],
      ),
    );;
  }
}
