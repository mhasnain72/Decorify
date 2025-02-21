import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 20, 3, 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 220, 10),
            child: Text(
              "Select cateogary :",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Gaming",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Cars",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Bikes",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Forest",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 80,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Mountain",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Clouds",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Nature",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
                SizedBox(
                    height: 45,
                    width: 70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "GIF",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
