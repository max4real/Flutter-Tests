import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10 + (MediaQuery.of(context).viewPadding.top)
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                appBarWidget(),
                Container(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          titleWidget(),
                          Container(height: 20,),
                          filterWidget(),
                          Container(height: 20,),
                          itemsWidget(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            naviBarWidget()
          ],
        ),
      )
    );
  }

  Widget naviBarWidget(){
    return Container(
      margin: EdgeInsets.only(
        bottom: 20
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(1000)
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.home),
            ),
            Container(width: 5,height: 0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.search_rounded,color: Colors.white,),
            ),
            Container(width: 5,height: 0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.gradient,color: Colors.white,),
            ),
            Container(width: 5,height: 0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.brown.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.person,color: Colors.white,),
            ),
            Container(width: 5,height: 0,),
          ],
        ),
      ),
    );
  }

  Widget appBarWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.image,color: Colors.white,size: 30,),
        Spacer(),
        Icon(Icons.image,color: Colors.white,size: 30,),
        Icon(Icons.image,color: Colors.white,size: 30,),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            image: DecorationImage(
              image: Image.network("https://cdn.dribbble.com/userupload/11538329/file/original-bd08aacae677496f6e463e275ef645cb.png?resize=2048x1536").image,
              fit: BoxFit.cover,
            )
          ),
        )
      ],
    );
  }

  Widget titleWidget(){
    return Text(
      "Choose your\ncourse",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget filterWidget(){
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          padding: EdgeInsets.all(5),
          child: Icon(Icons.filter_list_alt),
        ),
        Container(width: 10,),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Design",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Container(width: 5,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                            "10"
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Design",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Container(width: 5,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                            "10"
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Design",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Container(width: 5,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                            "10"
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Design",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Container(width: 5,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                            "10"
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget itemsWidget(){
    return Column(
      children: [
        eachItemWidget(title: "Figma\nDesign App"),
        eachItemWidget(title: "Webflow\nfundamental"),
        eachItemWidget(title: "Webflow\nfundamental"),
        eachItemWidget(title: "Webflow\nfundamental"),
        eachItemWidget(title: "Webflow\nfundamental"),
        eachItemWidget(title: "Webflow\nfundamental"),
      ],
    );
  }

  Widget eachItemWidget({required String title}){
    return Container(
      margin: EdgeInsets.only(
        bottom: 16
      ),
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE5YMCPbcbmlMjC6ZDY0-aeMMKz1zSFpUH4A&s").image,
              fit: BoxFit.cover
            )
          ),
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "By Someone",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.favorite_border_rounded,color: Colors.white,),
                          ),
                          Container(width: 10,),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.favorite_border_rounded,color: Colors.white,),
                          ),
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,vertical: 4
                    ),
                    child: Text(
                      "Design Course",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.lock,color: Colors.white,size: 40,),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.double_arrow,color: Colors.white,size: 40,),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.15),
                              shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.lock,color: Colors.white,size: 40,),
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
