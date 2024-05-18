import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 20.0),
        child: Row(
          children: [
            for (final city in cities)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.06,
                          backgroundImage: AssetImage(city.imagePath),
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      city.name,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.03),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class City {
  final String name;
  final String imagePath;

  const City({
    required this.name,
    required this.imagePath,
  });
}

// Define your cities here
List<City> cities = const [
  City(name: "Nearby", imagePath: "assets/new_nav.png"),
  City(name: "Bangalore", imagePath: "assets/bang.jpeg"),
  City(name: "Chennai", imagePath: "assets/chen.jpg"),
  City(name: "Delhi", imagePath: "assets/delhi.webp"),
  City(name: "Kolkata", imagePath: "assets/kolkata.webp"),
  City(name: "Mumbai", imagePath: "assets/mumbai.jpg"),
  City(name: "Pune", imagePath: "assets/pune.jpg"),
  City(name: "Noida", imagePath: "assets/noida.webp"),
  City(name: "Hyderabad", imagePath: "assets/hydre.jpeg"),
];
