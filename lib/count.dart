import 'package:flutter/material.dart';
import 'package:toolapp/main.dart';

class Tool2Page extends StatefulWidget {
  @override
  _Tool2PageState createState() => _Tool2PageState();
}

class _Tool2PageState extends State<Tool2Page> {
  String inputText = '';
  int charCount = 0;

  void countCharacters(String text) {
    setState(() {
      inputText = text;
      charCount = text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('String Counter'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when back button is pressed
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color.fromARGB(255, 241, 244, 255), // Set background color
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count Characters',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                onChanged: (text) {
                  countCharacters(text);
                },
                decoration: InputDecoration(
                  labelText: 'Enter a string',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Character count: $charCount',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 141, 120, 219)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, size: 40.0),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to the Home page
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
