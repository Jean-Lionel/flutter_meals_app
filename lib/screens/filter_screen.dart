import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const String routeName = "/filters";
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      drawer: const MainDrawer(),
    );
  }
}
