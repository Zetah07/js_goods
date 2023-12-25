import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:js_goods/common/widgets/images/t_circular_image.dart';

import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- Header
            TTPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text('Settings',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: Colors.white)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // -- User Profile Card
                  const ListTile(
                    leading: TCircularImage(
                      image: TImages.user,
                      width: 50,
                      height: 50,
                      padding: 0,
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //-- Body

          ],
        ),
      ),
    );
  }
}
