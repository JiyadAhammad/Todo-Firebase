import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/presentation/home_screen/widget/add_to_todo.dart';
import 'package:todo/presentation/todo_list/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final tabs = [
      const TodoListWidget(),
      Container(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          MyApp.title,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.topic_rounded,
                size: 40,
              ),
              label: 'Todos'),
          BottomNavigationBarItem(
            tooltip: 'completed',
            icon: Icon(
              Icons.check,
              size: 40,
            ),
            label: 'complete',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tooltip: 'Add Todo',
        hoverColor: Colors.tealAccent,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) {
              return const AddToTodoWidget();
            },
            barrierDismissible: false,
          );
        },
      ),
    );
  }
}
