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
  void shoesTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < shoesType.length; i++) {
        shoesType[i][1] = false;
      }
      shoesType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00030B),
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.transparent,
        leading: Icon(Icons.widgets, color: Colors.orange),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person, color: Colors.orange),
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoesType.length,
              itemBuilder: (context, index) {
                return ShoesType(
                  shoesType: shoesType[index][0],
                  isSelected: shoesType[index][1],
                  onTap: () {
                    shoesTypeSelected(index);
                  },
                );
              },
            ),
          ),

          //horizontal list view of shoes tiles
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ShoesTile(
                shoesImagePath: 'assets/image/sulfur.png',
                shoesName: 'ADIDAS YEEZY 450 SULFUR',
                shoesPrice: '2.999.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/safflower.png',
                shoesName: 'ADIDAS YEEZY 700 V3 MONO SAFFLOWER',
                shoesPrice: '3.499.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/multi.png',
                shoesName: 'Nike BE-DO-WIN “Multi-Color”',
                shoesPrice: '1.399.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/xetic.png',
                shoesName: 'PUMA XETIC HALFLIFE',
                shoesPrice: '975.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/lebron.png',
                shoesName: ' NIKE LEBRON XIX "CHRISTMAS"',
                shoesPrice: '1.399.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/ice.png',
                shoesName: 'Air Jordan 1 High Zoom CMFT Baby Blue',
                shoesPrice: '3.599.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/fuse.png',
                shoesName: 'PUMA FUSE Training Shoes',
                shoesPrice: '699.000',
              ),
              ShoesTile(
                shoesImagePath: 'assets/image/alphafly.png',
                shoesName: 'Nike Air Zoom Alphafly Next% 2',
                shoesPrice: '5.250.000',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
