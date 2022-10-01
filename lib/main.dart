import 'package:flutter/material.dart';

const themeColour = Colors.blue;

void main() {
  runApp(const MyLayout());
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Text 1',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Text('Subtitle text'),
          ],
        ),
      ),
      Icon(Icons.star),
      Text('41'),
    ],
  ),
);

Column _buttonColumn(IconData icon, Color colour, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(
        icon,
        color: colour,
      ),
      Text(
        label,
        style: TextStyle(color: colour),
      ),
    ],
  );
}

Widget buttonRow = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buttonColumn(Icons.phone, themeColour, 'CALL'),
      _buttonColumn(Icons.near_me, themeColour, 'ROUTE'),
      _buttonColumn(Icons.share, themeColour, 'SHARE')
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(20),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter layout demos'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonRow,
            textSection,
          ],
        ),
      ),
    );
  }
}
