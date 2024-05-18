import 'package:flutter/material.dart';

class bottomlocality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
