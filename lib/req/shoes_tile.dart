import 'package:flutter/material.dart';

class ShoesTile extends StatelessWidget {
  const ShoesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.grey[800]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("lib/image/sulfur.png"),
            ),

            //shoes name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Container(
                height: 200,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Product",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "ADIDAS YEEZY 450 SULFUR",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Rp 2.999.000",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
