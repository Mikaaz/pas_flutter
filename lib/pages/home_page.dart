import 'package:flutter/material.dart';
import 'package:goshio/req/shoes_tile.dart';
import 'package:goshio/req/shoes_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of Shoes Types
  final List shoesType = [
    // [shoes type, isSelected]
    [
      'All',
      true,
    ],
    [
      'Nike',
      false,
    ],
    [
      'Adidas',
      false,
    ],
    [
      'Puma',
      false,
    ],
    [
      'Reebok',
      false,
    ],
    [
      'Skechers',
      false,
    ],
  ];

  // user tapped on shoes types
  void shoesTypeSelected() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00030B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.widgets, color: Color(0xFFC74600)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person, color: Color(0xFFC74600)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "",
        ),
      ]),
      body: Column(
        children: [
          //Find the best shoes for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best shoes for you",
              style: TextStyle(
                fontFamily: "futur",
                fontSize: 36,
                color: Color(0xFFFFFFFF)
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Find your shoes ...",
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
            )),
          ),

          SizedBox(
            height: 25,
          ),

          //horizontal listview of shoes types
          Container(
            height: 50,
            child: ListView.builder(itemBuilder: (context, index) {
              return ShoesType(
                isSelected: true,
                onTap: () {},
                shoesType: '',
              );
            }),
          ),

          //horizontal list view of shoes tiles
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ShoesTile(),
            ],
          ))
        ],
      ),
    );
  }
}
