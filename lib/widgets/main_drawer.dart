import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, navigate) {
    return ListTile(
      onTap: navigate,
      trailing: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              "Funny Restorant",
              style: TextStyle(
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile("Restaurant", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed("/");
          }),
          buildListTile("Filters", Icons.filter_alt_outlined, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
          buildListTile("Settings", Icons.settings, () {}),
        ],
      ),
    );
  }
}
