import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:oyo/Sortscreen.dart';
import 'package:oyo/bottomLocality.dart';
import 'package:oyo/bottomPrice.dart';
import 'package:oyo/bottomSortby.dart';
import 'package:oyo/bottomTrending.dart';
import 'package:oyo/card2.dart';
import 'package:oyo/card3.dart';
import 'package:oyo/card5.dart';
import 'package:oyo/city.dart';
import 'package:oyo/oyo_rooms.dart';

import 'buttons.dart';
import 'card.dart';
import 'card10.dart';
import 'card11.dart';
import 'card6.dart';
import 'card7.dart';
import 'card8.dart';
import 'card9.dart';
import 'oyo_collections.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'OYO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text(widget.title,
              style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 30)),
        )),
      ),
      drawer: Row(
        children: [
          SizedBox(
            width: 350,
            child: NavigationDrawer(
              backgroundColor: Colors.white,
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/myimag.png",
                        width: 100,
                        height: 42,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Guest"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/w.png"),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text("Become an OYO Wizard"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.add_circle_outline),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Become an OYO Wizard"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.wallet),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("View Wallets"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.directions_bike),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Keep Going"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.save),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("View Saved OYOs"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.help),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Need help"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.language),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Change Language"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.privacy_tip),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("View Privacy policy"),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22, top: 22),
                  child: Text(
                    "Onboard as a partner",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.real_estate_agent),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Travel agent partner"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.business_outlined),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("OYO for business"),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22, top: 22),
                  child: Text(
                    "Are you a property owner?",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.home),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("List your property"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width *
                  0.9, // Adjust width dynamically
              child: Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.black, // Border color
                      width: 1, // Border width
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SortScreen(),
                      ),
                    );
                  },
                  icon: Image.asset("assets/search.png"),
                  label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width *
                              0.40), // Adjust padding dynamically
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Bangalore',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.5,
                          ),
                        ),
                      )),
                ),
              ),
            ),
            ResponsiveLayout(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ResponsiveBottomSheet();
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sort",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Icon(
                              Icons.sort,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Fixed font size and icon size
                        double fontSize = 18.0;

                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.33,
                          // Slightly increased width percentage
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return bottomlocality();
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                  color: Colors.black, // Border color
                                  width: 1, // Border width
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Locality",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize,
                                  ),
                                ),
                                Icon(
                                  Icons.place_outlined,
                                  color: Colors.black,
                                  size: 24, // Fixed icon size
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return bottompricesheet();
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Icon(
                              Icons.attach_money,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // Fixed font size and icon size
                        double fontSize = 18.0;

                        // Calculate the base width and add 3 pixels to it
                        double baseWidth =
                            MediaQuery.of(context).size.width * 0.32;
                        double increasedWidth = baseWidth + 3;

                        return SizedBox(
                          width: increasedWidth,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return bottomtrending();
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                  color: Colors.black, // Border color
                                  width: 1, // Border width
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Trending",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize,
                                  ),
                                ),
                                Icon(
                                  Icons.trending_up_outlined,
                                  color: Colors.black,
                                  size: 24, // Fixed icon size
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width *
                      0.05), // Adjust this factor as needed
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Handpicked for you",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width *
                            0.04, // Adjust this factor as needed
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Image.asset(
                              "assets/h1.jpg",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.white.withOpacity(0.8),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ratings - 3.8',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'OYO room 1 ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Price RS 671',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Image.asset(
                              "assets/h2.webp",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.white.withOpacity(0.8),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ratings - 4.0',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'OYO room 2 ',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Price RS 800',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                "assets/h3.jpg",
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ratings - 3.1',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'OYO room 3 ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Price RS 793',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                "assets/h4.jpg",
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ratings - 4.4',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'OYO room 4 ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Price RS 783',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                "assets/h5.webp",
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ratings - 4.2',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'OYO room 5 ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Price RS 800',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                "assets/h2.webp",
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ratings - 4.2',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'OYO room 2 ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Price RS 800',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
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
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height *
                      0.015), // Adjust this factor as needed
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Explore our collections",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width *
                            0.04, // Adjust this factor as needed
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width *
                    0.05, // Adjust this factor as needed
                top: MediaQuery.of(context).size.height *
                    0.01, // Adjust this factor as needed
              ),
              child: Row(
                children: [
                  Text(
                    "10 OYOs found",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight:
                            FontWeight.w900), // Adjust this factor as needed
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *
                            0.3), // Adjust this factor as needed
                    child: Text("Price per room per night"),
                  )
                ],
              ),
            ),
            ResponsiveCard(),
            new2(),
            new3(),
            new4(),
            new5(),
            new6(),
            new7(),
            new8(),
            new9(),
            new10(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        // Add padding to the bottom based on device's bottom padding
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 1,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Bookings',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SortScreen()),
                  );
                },
              ),
              GButton(
                icon: Icons.nights_stay_sharp,
                text: 'Free stays',
              ),
              GButton(
                icon: Icons.help,
                text: 'Need help',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
