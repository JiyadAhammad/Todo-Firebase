import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentation/home_screen/homescreen.dart';
import 'package:todo/provider/todos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'Todo App';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TodoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: const HomeScreen(),
      ),
    );
  }
}
