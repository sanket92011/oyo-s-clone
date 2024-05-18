import 'package:flutter/material.dart';
import 'package:oyo/bottomSortby.dart';

class buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: isPortrait ? 20.0 : 40.0, vertical: 8.0),
        child: Row(
          children: [
            for (final buttonData in buttonsData)
              ResponsiveButton(
                text: buttonData['text'],
                icon: buttonData['icon'],
                isPortrait: isPortrait,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResponsiveBottomSheet()),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isPortrait;
  final VoidCallback onPressed;

  const ResponsiveButton({
    required this.text,
    required this.icon,
    required this.isPortrait,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = isPortrait
        ? MediaQuery.of(context).size.width * 0.2
        : MediaQuery.of(context).size.width * 0.1;

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          padding:
              EdgeInsets.symmetric(vertical: 12, horizontal: buttonWidth * 0.2),
          minimumSize: Size(buttonWidth, 48),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.black, fontSize: isPortrait ? 16 : 18),
            ),
            const SizedBox(width: 8),
            Icon(
              icon,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> buttonsData = [
  {'text': "Sort by", 'icon': Icons.sort},
  {'text': "Locality", 'icon': Icons.location_on},
  {'text': "Price", 'icon': Icons.attach_money},
  {'text': "Trending", 'icon': Icons.trending_up},
];
