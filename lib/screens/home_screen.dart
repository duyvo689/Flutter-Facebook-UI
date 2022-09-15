import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/config/palette.dart';
import 'package:flutter_facebook_ui/data/data.dart';
import 'package:flutter_facebook_ui/widgets/circle_button.dart';
import 'package:flutter_facebook_ui/widgets/create_post_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: const Text(
              'feacebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search, iconSize: 30, onPressed: () {}),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(
            currentUser: currentUser,
          ))
        ],
      ),
    );
  }
}
