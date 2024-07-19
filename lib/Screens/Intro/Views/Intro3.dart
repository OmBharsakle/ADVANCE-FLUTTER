import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/intro_provider.dart';
import 'HomePage.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/MauryaAayush/advflutterch_1/master/assets/images/3.png'))),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'Simple To use',
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
                      Provider.of<IntroProvider>(context,listen: false).setdata();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Home()));

                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("Get Started",style: TextStyle(
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
                        backgroundColor: Colors.grey.shade300,
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
                          backgroundColor: Colors.orange
                      )
                    ],
                  )

                ],
              ),
            )));


  }
}