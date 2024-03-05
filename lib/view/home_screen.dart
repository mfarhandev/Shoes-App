import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:popover/popover.dart';
import 'package:shose_app/view/Productview_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/custom_colors.dart';
import '../widgets/SearchBarTextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> shosecategories = ["All", "Adidas", "Nike", "Puma", "Reebok"];

  String selectedcategory = "All";

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => showPopover(
                    backgroundColor: Colors.white,
                    context: context,
                    bodyBuilder: (context)=> PopmenuItems(),
                    width: 250,
                    height: 150
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find Your Favorite",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Shoe Style",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.shopping_cart, color: Colors.white, size: 50),
                  ],
                ),
                SizedBox(height: 20),
                SearchBarTextField(
                  borderRadius: 30,
                  HintText: "Find Your Fashion",
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
                  child: ListView.builder(
                    itemCount: shosecategories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedcategory = shosecategories[index];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: selectedcategory == shosecategories[index]
                                  ? [gradientColor1, gradientColor2]
                                  : [Colors.transparent, Colors.transparent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              shosecategories[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: MediaQuery.of(context).size.height / 2.1,
                  child: GridView.builder(
                    itemCount: 1,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 2.75 / 5,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Get.to(ProductReviewScreen());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [gradientColor1, gradientColor2],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 100,
                                child: PageView(
                                  controller: _controller,
                                  pageSnapping: true,
                                  children: [
                                    Image.asset("assets/images/logo.png"),
                                    Image.asset("assets/images/logo.png"),
                                    Image.asset("assets/images/logo.png"),
                                    Image.asset("assets/images/logo.png"),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SmoothPageIndicator(
                                    controller: _controller,
                                    count: 4,
                                    effect: WormEffect(
                                      paintStyle: PaintingStyle.fill,
                                      dotHeight: 6,
                                      dotWidth: 6,
                                      activeDotColor: gradientColor1,
                                      dotColor: Colors.white,
                                      spacing: 8.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Reebok Nano X",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "6 Size | 10 Color",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Price",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "\$382",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [gradientColor1, gradientColor2],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            size: 25,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PopmenuItems extends StatelessWidget {
  const PopmenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 50,
          color: Colors.black,
          child: Row(
            children: [
              Text("HOME",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.black,
          child: Row(
            children: [
              Text("ADD PRODUCTS",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.black,
          child: Row(
            children: [
              Text("RECEIVE ORDERS",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.black,
          child: Row(
            children: [
              Text("HISTORY",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}
