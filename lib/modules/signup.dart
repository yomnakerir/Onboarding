import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State <StatefulWidget> createState () => _SignUpState();
}

class _SignUpState extends State<SignUp>{

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
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: const Text('SIGN UP', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              ),
      ),
      ),

      bottomSheet: Container(
        padding: const EdgeInsets.only(top: 30, right: 35, left: 35),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color.fromRGBO(236, 236, 236 ,2),
        ),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [

            const Text('Create Account', textAlign: TextAlign.center,style:
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),

            const SizedBox(height: 30,),

            //name
            const Text("Full Name", textAlign: TextAlign.start, style: const TextStyle(
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
              keyboardType: TextInputType.text,
            ),

           const  SizedBox(height: 20,),

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


           const  SizedBox(height: 20,),


            //phone
            const Text("Phone Number", textAlign: TextAlign.start, style: const TextStyle(
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
              keyboardType: TextInputType.phone,
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


            const SizedBox(height: 20,),


            const SizedBox(height: 30,),
            OutlinedButton(

              onPressed: (){},
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
      ),
    );
  }
}