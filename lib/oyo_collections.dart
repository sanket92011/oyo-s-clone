import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width / 2 - 50;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width < 600 ? 200 : 250,
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.brown.shade100,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.width < 600 ? 100 : 120,
                        width:
                            MediaQuery.of(context).size.width < 600 ? 100 : 120,
                        child: Image.asset("assets/images.webp"),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Super",
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width < 600
                                            ? 18
                                            : 23,
                                    // Adjusted font size
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 5),
                                // Adjusted width between texts
                                Text(
                                  "OYO",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                    fontSize:
                                        MediaQuery.of(context).size.width < 600
                                            ? 18
                                            : 23, // Adjusted font size
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 40),
              SizedBox(
                height: MediaQuery.of(context).size.width < 600 ? 200 : 250,
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.green.shade50,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.width < 600 ? 100 : 120,
                        width:
                            MediaQuery.of(context).size.width < 600 ? 100 : 120,
                        child: Image.asset("assets/this.png"),
                      ),
                      const SizedBox(height: 5),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "OYOs",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width < 600
                                ? 20
                                : 23,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Premium",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width < 600
                                ? 20
                                : 23,
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
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
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Button Demo"),
      ),
      body: const Center(
        child: CustomButton(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}
