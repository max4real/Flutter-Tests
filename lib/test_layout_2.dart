import 'package:flutter/material.dart';

class TestLayout2 extends StatefulWidget {
  const TestLayout2({super.key});

  @override
  State<TestLayout2> createState() => _TestLayout2State();
}

class _TestLayout2State extends State<TestLayout2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Planet Earth'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // text_(),
              img_(),
              listtile_("Oeschinen Lake Campground", 'Kandersteg, Switzerland'),
              const Divider(),
              buttonsectioin_(),
              textfield_()
            ],
          ),
        ));
  }

  Widget text_() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(),
      child: const Text(
        'Flutter Layout Demo',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget img_() {
    return Container(
      // height: 100,
      // width: 200,
      child: Image.asset('assets/images/earth.jpg'),
    );
  }

  Widget listtile_(String title, String subtitle) {
    return Container(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.star,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Widget buttonsectioin_() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
              color: Colors.teal,
            ),
            const Text("Call"),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.route),
              color: Colors.teal,
            ),
            const Text("Route"),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              color: Colors.teal,
            ),
            const Text("Share"),
          ],
        ),
      ],
    );
  }

  Widget textfield_() {
    return Padding(
      // padding: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
      child: Text(description),
    );
  }

  final String description =
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
      'Bernese Alps. Situated 1,578 meters above sea level, it '
      'is one of the larger Alpine Lakes. A gondola ride from '
      'Kandersteg, followed by a half-hour walk through pastures '
      'and pine forest, leads you to the lake, which warms to 20 '
      'degrees Celsius in the summer. Activities enjoyed here '
      'include rowing, and riding the summer toboggan run.';
}
