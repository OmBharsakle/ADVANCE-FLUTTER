import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: isDark?Colors.white38:Colors.black,
                        offset: const Offset(0,0),
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 0,
                        blurRadius: 5
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: isDark?Colors.black38:Colors.white38
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Yo Man!',
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "It's a simple example of dark theme",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 110,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDark=false;
                      });
                    },
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFFCC00),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text('Light Icon',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDark=true;
                      });
                    },
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFD3B31),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text('Dark Icon',style: TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool isDark=false;

var dark=ThemeData.dark();