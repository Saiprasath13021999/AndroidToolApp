import 'package:flutter/material.dart';
import 'package:toolapp/home.dart'; // Import the home.dart file
import 'package:animate_do/animate_do.dart';
import 'package:toolapp/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 242, 247), // Make scaffold background transparent
      body: Stack(
        children: [
          Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Logo at the top center
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/main.png', // Your logo image asset
                        width: 280,
                        height: 280,
                      ),
                    ),
                    SizedBox(height: 20), // Spacer

                    // Texts in a column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Login to use app',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 1), // Spacer
                        Text(
                          'Enter phone number',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Spacer

                    // Phone number input field
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '+91 XXXXXXXXXX', // Hint text for phone number
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Spacer

                    // Login button
                    SizedBox(
                      width: 400, // Adjust the width as needed
                      child: Container(
                        margin: EdgeInsets.only(top: 20), // Adjust margin as needed
                        child: ElevatedButton.icon(
                          onPressed: () {
                            print("Login button pressed"); // Debug statement
                            // Navigate to home page upon login button click
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Home(), // Navigate to the Home widget
                              ),
                            );
                          },
                          icon: Icon(Icons.login),
                          label: Text('Log in'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromARGB(255, 133, 171, 241), // Background color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
