import 'package:flutter/material.dart';
import 'package:shose_app/utils/custom_colors.dart';

class ProductReviewScreen extends StatefulWidget {
  const ProductReviewScreen({super.key});

  @override
  State<ProductReviewScreen> createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white12,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 250,
                          width: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 100,
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/logo.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TabBar(
                      labelColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10,),
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [gradientColor1, gradientColor2],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Details",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Specifications",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.1,
                    child: Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Fila Disrupto",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star,color: Colors.orange,size: 16,),
                                                Icon(Icons.star,color: Colors.orange,size: 16,),
                                                Icon(Icons.star,color: Colors.orange,size: 16,),
                                                Icon(Icons.star,color: Colors.orange,size: 16,),
                                                Icon(Icons.star,color: Colors.orange,size: 16,),
                                                Text(
                                                  " 5.0  | 2k+Sold",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        ShaderMask(
                                          shaderCallback: (Rect bounds) {
                                            return LinearGradient(
                                              colors: [gradientColor1, gradientColor2],
                                            ).createShader(bounds);
                                          },
                                          child: Text(
                                            "\$ 328",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Description",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "A Fashion brand committed to providing chic style and",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              Container(
                                child: Center(
                                  child: Text("History Content",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
