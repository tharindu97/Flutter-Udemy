import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/Profile23.png'),
              radius: 60.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Tharindu Kavishna",
              style: GoogleFonts.pacifico(
                  color:Colors.white,
                  fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
                "FLTTER DEVELOPER",
              style: GoogleFonts.asap(
                color: Colors.teal[100],
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 150.0,
              child: Divider(
                thickness: 1,
                color: Colors.teal[100],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 20.0
              ),
              child: ListTile(
                leading: Icon(
                    Icons.call,
                    color: Colors.teal,
                ),
                title: Text(
                  '+94 719484749',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 20.0
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'tharindukavishna@gmail.com',
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

