import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {


  final String urlImage;
  final String title;
  final String subtitle;

  const BuildPage({ required this.urlImage,required this.title, required this.subtitle });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            urlImage,
            width: 250,
            height: 200,
          ),

          const SizedBox(height: 30,),

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.teal.shade700,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30,),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 17,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    ); }}
