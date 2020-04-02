import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('Neumorphism in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey[500],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(-10, -10),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.grey[600],
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                  ]),
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey[500],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(-5, -5),
                        blurRadius: 5.0),
                    BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(5, 5),
                        blurRadius: 5.0),
                  ]),
            ),
            Text(
              'TEXT',
              style: TextStyle(
                color: Colors.grey[500],
                shadows: [
                  BoxShadow(
                      color: Colors.grey[400],
                      offset: Offset(-5, -5),
                      blurRadius: 5),
                  BoxShadow(
                      color: Colors.grey[600],
                      offset: Offset(5, 5),
                      blurRadius: 5),
                ],
                fontSize: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
