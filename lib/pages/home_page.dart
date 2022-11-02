import 'package:flutter/material.dart';
import 'package:goshio/req/shoes_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
