import 'package:flutter/material.dart';

class BinanceHomePage extends StatefulWidget {
  const BinanceHomePage({super.key});

  @override
  State<BinanceHomePage> createState() => _BinanceHomePageState();
}

class _BinanceHomePageState extends State<BinanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 1 + (MediaQuery.of(context).viewPadding.top),
          ),
          child: Column(
            children: [
              appbar_(),
              Container(
                width: 10,
              ),
              Container(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 89, 86, 86)
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: const Text("Total Balance (USD)^",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ),
                                  Container(
                                    child: const Text(
                                      "\$3000.00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: const Text("Add Funds",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      filter_(),
                      Container(
                        height: 10,
                      ),
                      const Placeholder(),
                      Container(
                        height: 10,
                      ),
                      const Placeholder(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget appbar_() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 35,
          height: 35,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/images.jpeg'),
          ),
        ),
        Container(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 165, 165, 161).withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.fromLTRB(5, 7, 70, 7),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              Container(
                width: 10,
              ),
              const Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.document_scanner_outlined,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.headphones_rounded,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.notifications_none_rounded,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.payment_rounded,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
      ],
    );
  }

  Widget filter_() {
    return Row(children: [
      Expanded(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Hot',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Gainers',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Losers',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'New Listings',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Losers',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Gainers',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Losers',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ))
    ]);
  }
}
