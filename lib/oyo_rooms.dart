import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final String imagePath;
  final String rating;
  final String roomName;
  final String price;

  const ResponsiveButton({
    Key? key,
    required this.imagePath,
    required this.rating,
    required this.roomName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width < 600 ? 200 : 250,
      width: MediaQuery.of(context).size.width < 600 ? 300 : 350,
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
              imagePath,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width < 600 ? 300 : 350,
              height: MediaQuery.of(context).size.width < 600 ? 200 : 250,
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
                    'Ratings - $rating',
                    style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width < 600 ? 16 : 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    roomName,
                    style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width < 600 ? 14 : 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width < 600 ? 14 : 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
