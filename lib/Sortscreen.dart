import 'package:flutter/material.dart';
import 'package:oyo/main.dart';

import 'oyo_rooms.dart';

void main() {
  runApp(SortScreen());
}

class SortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
        title: Container(
          height: 40,
          width: screenWidth * 0.7,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.all(8.0),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.1),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth * 0.040,
                              color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.06),
                        child: Text(
                          'Tomorrow',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth * 0.040,
                              color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.1),
                        child: Text(
                          '1 Room ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth * 0.040,
                              color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueAccent,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  elevation: 0,
                ),
                icon: const Icon(Icons.near_me, color: Colors.blueAccent),
                label: Text(
                  'Search Nearby OYOs',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: screenWidth * 0.040,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Frequently searched in Gurgaon",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              ...[
                "All of Gurgaon",
                "Golf Course Road",
                "Sector 14",
                "Medanta Hospital",
                "Sector 38",
                "Huca City Center Metro"
              ].map((location) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on_sharp,
                              color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Text(
                              location,
                              style: const TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Book a Super OYO",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h1.jpg',
                        rating: '3.8',
                        roomName: 'OYO room 1',
                        price: 'Price RS 671',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h2.webp',
                        rating: '4.0',
                        roomName: 'OYO room 2',
                        price: 'Price : RS 1000',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h3.jpg',
                        rating: '4.1',
                        roomName: 'OYO room 3',
                        price: 'Price : RS 849',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h4.jpg',
                        rating: '3.0',
                        roomName: 'OYO room 4',
                        price: 'Price : RS 623',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h5.webp',
                        rating: '4.4',
                        roomName: 'OYO room 5',
                        price: 'Price : RS 983',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 390, // Decreased width
                          child: OutlinedButton(
                            onPressed: () {
                              // Add your onPressed function here
                            },
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              side: const BorderSide(color: Colors.black),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                            ),
                            child: const Text(
                              'View All',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Buy Trending OYOs",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h1.jpg',
                        rating: '3.8',
                        roomName: 'OYO room 1',
                        price: 'Price RS 671',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h2.webp',
                        rating: '4.0',
                        roomName: 'OYO room 2',
                        price: 'Price : RS 1000',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h3.jpg',
                        rating: '4.1',
                        roomName: 'OYO room 3',
                        price: 'Price : RS 849',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h4.jpg',
                        rating: '3.0',
                        roomName: 'OYO room 4',
                        price: 'Price : RS 623',
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: ResponsiveButton(
                        imagePath: 'assets/h5.webp',
                        rating: '4.4',
                        roomName: 'OYO room 5',
                        price: 'Price : RS 983',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 390, // Decreased width
                          child: OutlinedButton(
                            onPressed: () {
                              // Add your onPressed function here
                            },
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              side: const BorderSide(color: Colors.black),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                            ),
                            child: const Text(
                              'View All',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
