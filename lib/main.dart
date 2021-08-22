import 'package:flutter/material.dart';
import 'package:mi_card/resources/my_resources.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(image_benni),
              ),
              Text(
                'Benjamin Dietz',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: font_pacifico),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                    fontSize: 13.7,
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.7,
                    fontFamily: font_source_sans),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CardView(
                text: '(+49) 1590 / 187 67 99',
                iconData: Icons.phone,
              ),
              CardView(
                  text: 'bennidietz.bd@gmail.com',
                  iconData: Icons.email_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key key, @required this.text, @required this.iconData})
      : super(key: key);

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        color: Colors.white,
        child: Container(
          width: 300.0,
          child: ListTile(
            leading: Icon(
              iconData,
              color: Colors.teal,
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontFamily: font_source_sans,
                fontSize: 17.0,
              ),
            ),
          ),
        ));
  }
}
