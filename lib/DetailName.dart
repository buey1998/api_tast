import 'package:flutter/material.dart';

class DetailData extends StatefulWidget {
  DetailData({Key key}) : super(key: key);

  @override
  _DetailDataState createState() => _DetailDataState();
}

class _DetailDataState extends State<DetailData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailData'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Color(0xFFF2DD80), shape: BoxShape.circle)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                'Personal information',
              )),
            ),
            Text('Name : '),
            Divider(),
            Text('Age : '),
            Divider(),
            Text('Add dress : '),
            Divider(),
            Text('Tel. : '),
            Divider(),
            Text('Height : '),
            Divider(),
            Text('Weigth : '),
          ],
        ),
      ),
    );
  }
}
