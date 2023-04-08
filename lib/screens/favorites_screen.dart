import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite Screen'),
    );
  }
}
