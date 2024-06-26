import 'package:flutter/material.dart';

import '../components/sections/account_actions.dart';
import '../components/sections/account_points.dart';
import '../components/sections/header.dart';
import '../components/sections/recent_activity.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
        ],
      ),
    );
  }
}
