import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FigmaHomePage extends StatefulWidget {
  const FigmaHomePage({super.key});

  @override
  State<FigmaHomePage> createState() => _FigmaHomePageState();
}

class _FigmaHomePageState extends State<FigmaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10 + (MediaQuery.of(context).viewPadding.top),
        ),
        child: Stack(children: [
          Column(
            children: [
              appbar_(),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      title_(),
                      Container(
                        height: 10,
                      ),
                      filter_(),
                      Container(
                        height: 10,
                      ),
                      card_view(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          navibar_()
        ]),
      ),
    );
  }

  Widget navibar_() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8
            ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 10
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.home,size: 30,color: Colors.black.withOpacity(0.8),),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.search_rounded,size: 30,color: Colors.white.withOpacity(0.8),),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.menu_rounded,size: 30,color: Colors.black.withOpacity(0.8),),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.person_outline_rounded,size: 30,color: Colors.white.withOpacity(0.8),),
            ),
          ],
        ),
      ),
    );
  }

  Widget appbar_() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.search,
          color: Colors.white,
          size: 25,
        ),
        const Spacer(),
        const Icon(
          Icons.calendar_month,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
        const Icon(
          Icons.notifications,
          color: Colors.white,
          size: 25,
        ),
        Container(
          width: 10,
        ),
        const SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/images.jpeg'),
          ),
        )
      ],
    );
  }

  Widget title_() {
    return Container(
      alignment: Alignment.centerLeft,
      // color: Colors.red,
      child: const Text(
        'Choose your\ncourse',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget filter_() {
    return Row(children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(1),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(5),
        child: const Icon(
          Icons.filter_alt_outlined,
          color: Color.fromARGB(255, 70, 68, 68),
          size: 30,
        ),
      ),
      Container(
        width: 10,
      ),
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
              child: Row(
                children: [
                  const Text(
                    'Design',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Programming',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      '12',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Web Design',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 70, 70).withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Networking',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      '18',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ))
    ]);
  }

  Widget card_view() {
    return Column(
      children: [
        card_view_list(title: "Figma Design\nApp", sub: "By max_4_real"),
        card_view_list(title: "Networking", sub: "By max_4_real"),
        card_view_list(title: "C#", sub: "By max_4_real"),
        card_view_list(title: "Java", sub: "By max_4_real"),
        card_view_list(title: "Flutter", sub: "By max_4_real"),
        card_view_list(title: "Google Go", sub: "By max_4_real"),
        card_view_list(title: "Java", sub: "By max_4_real"),

      ],
    );
  }

  Widget card_view_list({required String title, required String sub}) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: Image.network(
                        "https://media.istockphoto.com/id/1372399516/vector/dark-blue-defocused-blurred-motion-gradient-soft-abstract-background-vector.jpg?s=612x612&w=0&k=20&c=ulLw1_awuztJ1ujhXSBAjQpI4L5PHuF-RE01zlAQHZ0=")
                    .image,
                // image: Image.asset("assets/images/3166609.jpg").image,
                fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                  blurStyle: BlurStyle.outer // changes position of shadow
                  ),
            ],
          ),
          padding: const EdgeInsets.all(23),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 10,
                            ),
                            Text(
                              sub,
                              style: const TextStyle(
                                  color: Colors.black87, fontSize: 15),
                            )
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          Container(
                            width: 10,
                          ),
                          const Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const Text("Explore Course"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.lock_outline_rounded,
                            size: 40,
                            color: Colors.white70,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.lock_open_rounded,
                            size: 40,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
