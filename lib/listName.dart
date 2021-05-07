import 'package:flutter/material.dart';
import 'package:flutter_application_test/DetailName.dart';
import 'package:flutter_application_test/addData.dart';

class ListName extends StatefulWidget {
  ListName({Key key}) : super(key: key);

  @override
  _ListNameState createState() => _ListNameState();
}

class _ListNameState extends State<ListName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Name'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: Container(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFE079),
                              shape: BoxShape.circle)),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name : '),
                          Text('Age : '),
                          Text('Tel. : '),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailData()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        // onPressed: null,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddName()));
        },
        icon: Icon(Icons.add),
        label: Text('Add'),
        backgroundColor: Color(0xFFDECAF1),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
