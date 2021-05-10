import 'package:flutter/material.dart';
import 'package:flutter_application_test/calculator.dart';
import 'package:flutter_application_test/listName.dart';
import 'package:flutter_application_test/todoList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEEC4DA),
        accentColor: Color(0xFFEEC4DA),
        primarySwatch: Colors.blue,
      ),
      home: ListTodo(),
    );
  }
}

class ListTodo extends StatefulWidget {
  ListTodo({Key key}) : super(key: key);

  @override
  _ListTodoState createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App FlutterTest'),
        centerTitle: true,
        toolbarHeight: 100.0,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('To do List'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.list),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TodoList()));
              },
            ),
            Divider(),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.amberAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Calculator'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.calculate),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calculator()));
              },
            ),
            Divider(),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.amber[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('List Name'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person_add),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListName()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
