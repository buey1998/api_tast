import 'package:flutter/material.dart';

class AddName extends StatefulWidget {
  AddName({Key key}) : super(key: key);

  @override
  _AddNameState createState() => _AddNameState();
}

class _AddNameState extends State<AddName> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool textOnSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal information'),
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
                child: Divider(
                  color: Colors.white,
                )),
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Add Dress'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Tel.'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Height'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Weigth'),
              validator: (String value) =>
                  value.isEmpty ? 'กรุณาใส่ชื่อสินค้า' : null,
              // onSaved: (value) => nameProduct = value.trim(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  print('Tap');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 40,
                  width: double.infinity,
                  child: Center(
                      child: Text('confirm',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFE6C8E6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
