import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/1.4/provider/home_page_provider.dart';
import 'Screens/1.5/provider/quotesProvider.dart';
import 'Screens/1.5/view/quotesHomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => QuotesProvider(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
            primary: Colors.purple,
            onPrimary: Colors.blue,
            secondary: Colors.green,
            onSecondary: Colors.redAccent,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(
            primary: Colors.amber,
            onPrimary: Colors.pink,
            secondary: Colors.blue,
            onSecondary: Colors.green,
          ),
        ),
        themeMode: ThemeMode.light,
        // themeMode: Provider.of<HomePageProvider>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const QuotesHomepage(),
      ),
    );
  }
}
