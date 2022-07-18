import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  @override
  State <StatefulWidget> createState () => _SignInState();
}

class _SignInState extends State<SignIn>{

  bool pass = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: Container(
        //color: Colors.red,
        width: double.infinity,
        height: 400,
        padding: const EdgeInsets.only(top: 150, left: 10),
        child: const Text('SIGN IN', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
      ),


      bottomSheet: Container(
        padding: const EdgeInsets.only(top: 30, right: 35, left: 35),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color.fromRGBO(236, 236, 236 ,2),
        ),
        width: double.infinity,
        height: 550,
        child: ListView(
          children:  [

            const SizedBox(height: 20,),

            //email
            const Text("Email Address", textAlign: TextAlign.start, style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),),
            const SizedBox(height: 5,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),

              ),
             keyboardType: TextInputType.emailAddress,
            ),


            const SizedBox(height: 20,),

            //password
            const Text("Password", textAlign: TextAlign.start, style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),),
            const SizedBox(height: 5,),
            TextFormField(
              decoration:  InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                suffixIcon: IconButton(
                  icon: Icon(pass?Icons.visibility: Icons.visibility_off),
                    onPressed: (){
                    setState(() {
                      pass =! pass;
                    });
                    },

                ),

              ),
              obscureText: pass,
              keyboardType: TextInputType.visiblePassword,


            ),


            const SizedBox(height: 50,),
            OutlinedButton(

              onPressed: (){},
              child: const Text('Sign In'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.teal.shade700,
                primary: Colors.white,
                fixedSize: const Size(320, 60),
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20,),

            //forgetpass
            TextButton(onPressed: (){},
                child: Text('Foregt Password?',  style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),))
          ],
        ),

      ),
    );
  }
}