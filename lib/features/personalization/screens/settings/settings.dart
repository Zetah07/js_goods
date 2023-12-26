import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:js_goods/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

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
                  TUserProfileTile( onPressed: ()=> Get.to(()=> const ProfileScreen() )),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //-- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                      title: 'Acount Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // -- Settings Menu
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to chekout'),
                  const TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed Orders'),
                  const TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Accounts',
                      subtitle: 'Withdraw balance to registered bank accounts'),
                  const TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons'),
                  const TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notifications messages'),
                  const TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Privacy & Security',
                      subtitle: 'Manage data usage and connected accounts'),

                  // -- App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendations based on location',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Sage Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  TSettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD IMage Quality',
                      subtitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                      // -- Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections *2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
