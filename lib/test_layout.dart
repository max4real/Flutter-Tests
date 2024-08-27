import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestLayout extends StatefulWidget {
  const TestLayout({super.key});

  @override
  State<TestLayout> createState() => _TestLayoutState();
}

class _TestLayoutState extends State<TestLayout> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Hello'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
          _card(),
        ],
      )
      
    );
  }

  Widget _card() {
    return const SizedBox(
      height: 200,
      width: 200,
      child:  Card(
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.teal,
              ),
              title: Text('Hello'),
              subtitle: Text('my name is'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.teal,
              ),
              title: Text('Hello'),
              subtitle: Text('my name is 1'),
            ),
          ],
        ),
      ),
    );
  }

  Widget circle_img() {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/images/jupiter2.jpg'),
      radius: 200,
    );
  }

  Widget back_container() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Text("hello"),
    );
  }

  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        // color: Colors.blue[500],
      ),
      iconColor: Colors.teal,
    );
  }

  final stars = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );
  final rating = Container(
    padding: EdgeInsets.all(16),
    child: const Row(
      children: [
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
  static const mytextstyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );
  final iconlist = DefaultTextStyle(
      style: mytextstyle,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Row(
          children: [
            Column(
              children: [
                Icon(
                  Icons.kitchen,
                  color: Colors.green,
                ),
                Text('Preps:'),
                Text('25mins')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.green,
                ),
                Text('Cook:'),
                Text('2hrs')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.restaurant,
                  color: Colors.green,
                ),
                Text('Serve:'),
                Text('4-5')
              ],
            ),
          ],
        ),
      ));
}
