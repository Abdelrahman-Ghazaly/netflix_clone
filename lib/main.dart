import 'package:flutter/material.dart';
import 'package:netflix_flutter/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:netflix_flutter/providers/providers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SearchBarProvider(),
        ),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const NavScreen(),
    );
  }
}
