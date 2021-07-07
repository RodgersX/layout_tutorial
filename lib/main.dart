import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              'images/image.jpg',
              width: 600.0,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              children: [title(), actions(context), description()],
            ),
          )
        ],
      ),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland',
                style: TextStyle(fontSize: 11.0, color: Colors.grey[500]))
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('41')
          ],
        ),
      ],
    );
  }

  Widget actions(context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _actionButtons(color, Icons.call, 'CALL'),
          _actionButtons(color, Icons.near_me, 'ROUTE'),
          _actionButtons(color, Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Column _actionButtons(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Text(label,
            style: TextStyle(
                fontSize: 10.0, fontWeight: FontWeight.w400, color: color))
      ],
    );
  }

  Widget description() {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run',
        softWrap: true,
        style: TextStyle(fontSize: 11.0),
      ),
    );
  }
}
