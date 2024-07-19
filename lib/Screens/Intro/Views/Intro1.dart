import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Intro2.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text("Intro1"),
      // ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/MauryaAayush/advflutterch_1/master/assets/images/1.png'))),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'Quick Organize',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "The file App simplifies document management with intuitive tools , secure cloud integration.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Intro2()),);

                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("Next",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.orange,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.grey.shade300,
                      )
                    ],
                  )

                ],
              ),
            )));
  }
}
