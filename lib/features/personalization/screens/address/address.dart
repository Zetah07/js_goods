import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/features/personalization/screens/address/widgets/single_address.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Addresses',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
    
            ],
          ),
        ),
      ),
    );
  }
}
