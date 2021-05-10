import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('To Do List'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TodoWidger(
              text: 'Create your frist Task',
              isDone: false,
            ),
            TodoWidger(
              text: 'Create your frist Task as Well',
              isDone: false,
            ),
            TodoWidger(
              isDone: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(6.0)),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Description for the task...'),
                          // onSubmitted: (value){
                          //   if (value != '') {
                              
                          //   }
                          // },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TodoWidger extends StatelessWidget {
  // const TodoWidger({Key key}) : super(key: key);
  final String text;
  final bool isDone;
  TodoWidger({@required this.isDone, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  border: isDone
                      ? null
                      : Border.all(color: Colors.grey[300], width: 1.5),
                  color: isDone ? Colors.indigo[300] : Colors.transparent,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              ),
            ),
            Text(
              text ?? '(Unnamed Todo)',
              style: TextStyle(
                  color: isDone ? Colors.black : Colors.grey,
                  fontWeight: isDone ? FontWeight.bold : FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
