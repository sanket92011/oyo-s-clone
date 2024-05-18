import 'package:flutter/material.dart';

class ResponsiveDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double drawerWidth = MediaQuery.of(context).size.width < 600 ? 300 : 400;
    return SizedBox(
      width: drawerWidth,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
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
                  ),
                ],
              ),
            ),
            drawerItem(context, "assets/w.png", Icons.add_circle_outline,
                "Become an OYO Wizard"),
            drawerItem(context, null, Icons.wallet, "View Wallets"),
            drawerItem(context, null, Icons.directions_bike, "Keep Going"),
            drawerItem(context, null, Icons.save, "View Saved OYOs"),
            drawerItem(context, null, Icons.help, "Need help"),
            drawerItem(context, null, Icons.language, "Change Language"),
            drawerItem(context, null, Icons.privacy_tip, "View Privacy policy"),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 22),
              child: Text(
                "Onboard as a partner",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
              ),
            ),
            drawerItem(
                context, null, Icons.real_estate_agent, "Travel agent partner"),
            drawerItem(
                context, null, Icons.business_outlined, "OYO for business"),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 22),
              child: Text(
                "Are you a property owner?",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
              ),
            ),
            drawerItem(context, null, Icons.home, "List your property"),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(
      BuildContext context, String? imagePath, IconData icon, String title) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          if (imagePath != null) Image.asset(imagePath),
          if (imagePath == null)
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Icon(icon),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 600 ? 14 : 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
