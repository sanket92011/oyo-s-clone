import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
            width: 400,
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
                  width: 20,
                  child: Row(
                    children: [
                      Image.asset("assets/w.png"),
                      const Text("Become an OYO Wizard")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.add_circle_outline),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Become an OYO Wizard"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.wallet),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("View Wallets"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.directions_bike),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Keep Going"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.save),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("View Saved OYOs"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.help),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Need help"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.language),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Change Language"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.privacy_tip),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("View Privacy policy"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 22, top: 22),
                  child: Text(
                    "Onboard as a partner",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.real_estate_agent),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Travel agent partner"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.business_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("OYO for business"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 22, top: 22),
                  child: Text(
                    "Are you a property owner?",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 20,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.home),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("List your property"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: 470,
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
                        builder: (context) => const SortScreen(),
                      ),
                    );
                  },
                  icon: Image.asset("assets/search.png"),
                  label: const Padding(
                    padding: EdgeInsets.only(right: 260),
                    child: Text(
                      'Bangalore',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // <-- Text
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/new_nav.png'),
                                ),
                              ),
                            ),
                            const Text("Nearby"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/bang.jpeg'),
                                ),
                              ),
                            ),
                            const Text("Bangalore"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/chen.jpg'),
                                ),
                              ),
                            ),
                            const Text("Chennai"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/delhi.webp'),
                                ),
                              ),
                            ),
                            const Text("Delhi"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/kolkata.webp'),
                                ),
                              ),
                            ),
                            const Text("Kolkata"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/mumbai.jpg'),
                                ),
                              ),
                            ),
                            const Text("Mumbai"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/pune.jpg'),
                                ),
                              ),
                            ),
                            const Text("Pune"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/noida.webp'),
                                ),
                              ),
                            ),
                            const Text("Noida"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/hydre.jpeg'),
                                ),
                              ),
                            ),
                            const Text("Hyderabad"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return buildAreaSheet(context);
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
                        child: const Row(
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
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 145,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return buildAreaSheet(context);
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Locality",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Icon(
                              Icons.place_outlined,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 145,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return buildAreaSheet(context);
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
                        child: const Row(
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
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 145,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return buildAreaSheet(context);
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trending",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Icon(
                              Icons.trending_up_outlined,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "Handpicked for you",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
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
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Padding(
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
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        'Price : RS 1000',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Padding(
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
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ratings - 4.1',
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
                                        'Price : RS 849',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Padding(
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
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ratings - 3.0',
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
                                        'Price : RS 623',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Padding(
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
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ratings - 4.4',
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
                                        'Price : RS 983',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 12),
              child: Row(
                children: [
                  Text(
                    "Explore our collections",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 270,
                    width: 190,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.brown.shade100),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/images.webp"),
                          ),
                          const Row(
                            children: [
                              Text(
                                "Super",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "OYO",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                          const Column(
                            children: [
                              Text(
                                "Super check-ins",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Super ratings",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 270,
                              width: 190,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.green.shade50),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 150,
                                      width: 150,
                                      child: Image.asset("assets/this.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("OYOs ",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("Premium ",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w900)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Row(
                children: [
                  Text(
                    "10 OYOs found",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: Text("Price per room per night"),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,

                color: Colors.white, // Set the background color to white
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15.0),
                      ),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/h1.jpg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 19,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 19,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/2.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Townhouse Bannegatta Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            " Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/3.jpg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/4.jpg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/5.jpg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/6.webp",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/7.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/8.jpg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/9.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0)),
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/10.jpeg",
                          fit: BoxFit.cover,
                          height: 140,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4.3(45)",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Row(
                        children: [
                          Text(
                            "Collection O Bangalore Airport Road",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Kial Road Bangalore",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Couples are welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rated high for cleanliness",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.purpleAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        tabs: [
          const GButton(
            icon: Icons.home,
            text: "Home",
          ),
          const GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Bookings",
          ),
          GButton(
            icon: Icons.search,
            text: "Search",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SortScreen()),
              );
            },
          ),
          const GButton(
            icon: Icons.fiber_manual_record_rounded,
            text: "Free Stays",
          ),
          const GButton(
            icon: Icons.help,
            text: "Need help",
          ),
        ],
      ),
    );
  }

  Widget buildsheet(BuildContext context) => Container(
        color: Colors.white,
        child: Wrap(
          children: [
            const ListTile(
              title: Text(
                'Sort by',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Popularity'),
              onTap: () {
                // Add your functionality here
              },
            ),
            ListTile(
              title: const Text('Guest rating'),
              onTap: () {
                // Add your functionality here
              },
            ),
            ListTile(
              title: const Text('Price high to low'),
              onTap: () {
                // Add your functionality here
              },
            ),
            ListTile(
              title: const Text('Price low to high'),
              onTap: () {
                // Add your functionality here
              },
            ),
          ],
        ),
      );

  Widget buildAreaSheet(BuildContext context) => Container(
        color: Colors.white,
        child: Wrap(
          children: [
            const ListTile(
              title: Text(
                'Select your preferred area',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Tin factory'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: const Text('HSR Layout'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: const Text('Hebbal'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: const Text('Kengeri Satellite Town'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: const Text('Gandhi Nagar'),
              onTap: () {
                // Handle selection
              },
            ),
          ],
        ),
      );

  Widget buildPriceSheet(BuildContext context) => Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text(
                'Price bucket',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  child: const Text(
                    'Rs 400 - 699',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  child: const Text(
                    'Rs 600 - 799',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  child: const Text(
                    'Rs 800 - 999',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Price range',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
            ),
          ],
        ),
      );

  Widget buildTrendingSheet(BuildContext context) => Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text(
                'Popular filters',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('OYOs welcome couples'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: const Text('Town house'),
              onTap: () {
                // Handle selection
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Clear all
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  child: const Text(
                    'Clear all',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Apply filters
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  void showTrendingBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return buildTrendingSheet(context);
      },
    );
  }
}

class SortScreen extends StatelessWidget {
  const SortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller = TextEditingController();
  List<String> _data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Kiwi',
    'Lemon',
    'Mango',
    'Orange',
    'Papaya',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Tomato',
    'Ugli fruit',
    'Vanilla bean',
    'Watermelon',
    'Ximenia',
    'Yellow passionfruit',
    'Zucchini'
  ];
  List<String> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData.addAll(_data);
  }

  void _filterSearchResults(String query) {
    List<String> searchList = [];
    searchList.addAll(_data);
    if (query.isNotEmpty) {
      List<String> filteredList = [];
      searchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });
      setState(() {
        _filteredData.clear();
        _filteredData.addAll(filteredList);
      });
      return;
    } else {
      setState(() {
        _filteredData.clear();
        _filteredData.addAll(_data);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
        title: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  onChanged: (value) {
                    _filterSearchResults(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          height: 96,
          width: 400,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Text(
                      "Tomorrow",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "1 room 1 guest",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: Row(
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset(
                      "assets/nearby.png",
                      color: Colors.blue,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Search Nearby OYOs",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Text(
                    "Frequently searched in Gurgaon",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("All of Gurgaon")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("Golf Course Road")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("Sector 14")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("Medanta Hospital")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("Sector 38")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Image.asset("assets/myico.png"),
                              const Text("Huca City Center Metro")
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                        ),
                      ),
                      width: 490,
                      height: 400,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Text(
                    "Book a Super OYO",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          'Price : RS 1000',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 4.1',
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
                                          'Price : RS 849',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 3.0',
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
                                          'Price : RS 623',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 4.4',
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
                                          'Price : RS 983',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: SizedBox(
                width: 450,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Text(
                    "Book trending OYOs",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          'Price : RS 1000',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 4.1',
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
                                          'Price : RS 849',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 3.0',
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
                                          'Price : RS 623',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Padding(
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ratings - 4.4',
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
                                          'Price : RS 983',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: SizedBox(
                width: 450,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
