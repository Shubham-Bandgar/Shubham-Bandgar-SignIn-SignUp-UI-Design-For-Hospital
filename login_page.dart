import 'package:e_hospital/page1.dart';
import 'package:e_hospital/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Container(
           width: w,
              height: h*0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  "assets/images/2.png"
                ),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Welcome",style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Sign Into Your Account",style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],

                  ),),
               const SizedBox(
                 height: 10,
               ),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30),
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 10,
                       spreadRadius: 7,
                       offset: const Offset(1, 1),
                       color: Colors.grey.withOpacity(0.2)
                     )
                   ]
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                       hintText: "Your E-mail Id",
                       prefixIcon: const Icon(Icons.email,color: Colors.deepOrangeAccent,),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: const BorderSide(
                         color:Colors.white,
                         width: 1.0
                       )
                     ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                           borderSide: const BorderSide(
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
                  const SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: const Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.password_outlined,color: Colors.deepOrangeAccent,),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
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

                 /* Row(
                    children: [
                      Expanded(child: Container(),),
                      Text("Sign Into Your Account",style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],

                      ),)

                    ],
                  ),*/
                ],
              ),
            ),
            const SizedBox(height: 60,),
           Container(
             height: 50,
             width: 100,
             child: ElevatedButton(

               style: ButtonStyle(elevation: MaterialStateProperty.all<double>(10),
               backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
               ),
                          onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const page1()));
               }, child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 20),),
             ),
           ),
           /* Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage(
                      "assets/images/login.jpg"
                  ),
                      fit: BoxFit.cover
                  ),

              ),
              child:  const Center(
                child: Text("Log in",style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),*/
            SizedBox(height: 30),
            RichText(text: TextSpan(text: "Don't Hava an account?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20
            ),

            /*  children: [
    TextSpan(text: " Create",
    style: const TextStyle(
    color: Colors.black,
    fontSize: 20,
        fontWeight: FontWeight.bold
    ),
    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> const SignUpPage())
    )
    ]*/

            )),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(

                style: ButtonStyle(elevation: MaterialStateProperty.all<double>(20),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
