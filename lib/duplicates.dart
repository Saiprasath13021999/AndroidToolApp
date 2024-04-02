import 'package:flutter/material.dart';
import 'package:toolapp/main.dart';

class Tool3Page extends StatefulWidget {
  @override
  _Tool3PageState createState() => _Tool3PageState();
}

class _Tool3PageState extends State<Tool3Page> {
  String inputText = '';
  String resultText = '';

  void removeDuplicates(String text) {
    setState(() {
      inputText = text;
      // Convert input string to a Set to remove duplicates, then join it back to a string
      resultText = text.split('').toSet().join('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove Duplicates'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when back button is pressed
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        color: Color.fromARGB(255, 240, 240, 250), // Updated background color
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Remove Duplicates',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 215, 238),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 131, 138, 245).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (text) {
                    removeDuplicates(text);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter a string',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Result:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 164, 148, 231)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  resultText,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
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
