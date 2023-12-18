import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';
import '../../../../common/widgets/appbar/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          PrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Appbar
                THomeAppBar(),

                //Search

                //Categories
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
