import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: Text("Show dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog();
                    });
              })),
    );
  }
}

class SimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: 500,
        width: 350,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              height: 210,
              width: 210,
              child: Expanded(
                  child: Image.asset(
                "assets/download.png",
                fit: BoxFit.cover,
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Congratulations!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Modernica Apartment successfully booked. You can check your booking on the menue Profile-> My booking",
                style: TextStyle(wordSpacing: 1),
              ),
            )),
            ElevatedButton(
              onPressed: () {},
              child: Text("View E-Reciept"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(300, 50)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.blue),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 244, 248),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(300, 50)),
            )
          ],
        ),
      ),
    );
  }
}
