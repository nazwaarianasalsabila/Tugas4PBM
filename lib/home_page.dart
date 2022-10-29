// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tugasempatpbm/shoes_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 242, 237),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 22, 207, 216),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.orange,
                )),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Nazwa Shoes',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pick your favorite shoe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Color(0x55434343),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Search for Shoe',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: Color(0xFFFE8C68),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xFFFE8C68),
                          labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                          labelStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          tabs: const [
                            Tab(
                              text: 'Hype',
                            ),
                            Tab(
                              text: 'Discount',
                            ),
                            Tab(
                              text: 'Top Shoes',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300.0,
                          child: TabBarView(children: [
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  ShoesCard(
                                    imgPath: 'img/nike.png',
                                    shoeName: 'Nike',
                                    collection: 'W Airmax 90',
                                    rating: 5,
                                    price: 769,
                                  ),
                                  ShoesCard(
                                    imgPath: 'img/vans.png',
                                    shoeName: 'Vans',
                                    collection: 'Ua Classic Slip-On',
                                    rating: 5,
                                    price: 879,
                                  ),
                                  ShoesCard(
                                    imgPath: 'img/converse.png',
                                    shoeName: 'Converse',
                                    collection: 'Chuck Taylor All Stars Converse High',
                                    rating: 4,
                                    price: 1199,
                                  ),
                                  ShoesCard(
                                    imgPath: 'img/adidas.png',
                                    shoeName: 'Adidas',
                                    collection: 'Stan Smith Shoes',
                                    rating: 5,
                                    price: 590,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  ShoesCard(
                                    imgPath: 'img/puma.png',
                                    shoeName: 'Puma',
                                    collection: 'Puma Shuffle Mid Mens Sneakers Shoes - White',
                                    rating: 5,
                                    price: 890,
                                  ),
                                  ShoesCard(
                                    imgPath: 'img/reebok.png',
                                    shoeName: 'Reebok',
                                    collection: 'Reebok Royal Complete Clean 2 Womens Sneakers - White',
                                    rating: 5,
                                    price: 500,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  ShoesCard(
                                    imgPath: 'img/newbalance.png',
                                    shoeName: 'New Balance',
                                    collection: 'New Balance 997H Mens Sneakers - Marblehead With Black',
                                    rating: 5,
                                    price: 498,
                                  ),
                                  ShoesCard(
                                    imgPath: 'img/asics.png',
                                    shoeName: 'Asics',
                                    collection: 'Asics Gel Kayano 25 Womens Running Original',
                                    rating: 5,
                                    price: 678,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trolley),
            label: 'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
