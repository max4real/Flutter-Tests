import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> nameList = <String>[
    'Myint Myat Soe',
    'Maung Maung',
    'Hla Hla',
    'Aye Aye',
  ];
  final List<int> ageList = <int>[26, 30, 29, 19, 24];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
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
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 64, 73, 202)
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
                              color: const Color.fromARGB(255, 85, 94, 228)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Text("Add Funds",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 5, 72, 190),
                    thickness: 0.8,
                  ),
                  filter_(),
                  Container(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: ListView.builder(
                      itemCount: nameList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const Divider(
                              thickness: 1,
                            ),
                            listTile(nameList[index], ageList[index]),
                          ],
                        );
                      },
                    ),
                    // child: ListView(
                    //   children: [
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //     listTile("Bar Nyar Bar Nyar", "bar nyar bar nyar"),
                    //   ],
                    // )
                  ),
                  Container(
                    height: 10,
                  ),
                  const Placeholder()
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget listTile(String title, int subTitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text('Age : '+ subTitle.toString()),
      trailing: FilledButton.tonalIcon(
        onPressed: () {},
        label: const Text('Click Me'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 4, 39, 154).withOpacity(0.8)),
        ),
      ),
    );
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
              color: const Color.fromARGB(255, 64, 73, 202).withOpacity(0.4),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.fromLTRB(5, 7, 70, 7),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 20,
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
          color: Color.fromARGB(255, 64, 88, 222),
          size: 20,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.headphones_rounded,
          color: Color.fromARGB(255, 64, 88, 222),
          size: 20,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.payment_rounded,
          color: Color.fromARGB(255, 64, 88, 222),
          size: 20,
        ),
        Container(
          width: 10,
        ),
      ],
    );
  }

  String filterIndex = '';
  Widget filterButton(String filterName) {
    return Container(
      margin: const EdgeInsets.only(left: 3),
      child: FilledButton.tonalIcon(
        onPressed: () {
          filterIndex = filterName;
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                (filterIndex == filterName)
                    ? Colors.greenAccent
                    : const Color.fromARGB(255, 4, 39, 154).withOpacity(0.4))),
        label: Text(
          filterName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 4, 39, 154).withOpacity(0.6)),
              padding: const EdgeInsets.all(7),
              child: const Icon(
                Icons.filter_alt_rounded,
                color: Colors.white,
              ),
            ),
            filterButton("Favorites"),
            filterButton("Hot"),
            filterButton("Gainers"),
            filterButton("Losers"),
            filterButton("New Listing"),
            filterButton("Bar Nyar Bar Nyar"),
          ],
        ),
      ))
    ]);
  }
}
