import 'package:flutter/material.dart';

class ResponsiveBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
