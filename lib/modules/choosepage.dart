import 'package:flutter/material.dart';
import 'package:onboarding/modules/signinpage.dart';
import 'package:onboarding/modules/signup.dart';
class Choose extends StatefulWidget{
  @override
  State <StatefulWidget> createState () => _ChooseState();
}

class _ChooseState extends State<Choose>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color.fromRGBO(236, 236, 236 ,1),
              ),

              width: double.infinity,
              height: 400,
              child: Image.asset('assets/images/enjoy.png'),
            ),
          ),

          const SizedBox(height: 25,),

          //text
          const Padding(
           padding:  EdgeInsets.only(right: 20, left: 20),
           child:  Text('Travel is the only thing you buy\nthat makes you richer.',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 14,
               height: 1.5,

             ),),
         ),

          const SizedBox(height: 40,),

          //sign in
          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
              );

            },
            child: const Text('Sign In'),
            style: OutlinedButton.styleFrom(
                side:  BorderSide(width: .8, color: Colors.teal.shade700),
                primary: Colors.teal.shade700,
                fixedSize: const Size(320, 60),
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 20,),

          //sign up
          OutlinedButton(

            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );

            },
            child: const Text('Sign Up'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.teal.shade700,
              primary: Colors.white,
              fixedSize: const Size(320, 60),
              textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),


        ],
      ),
    );
  }
}