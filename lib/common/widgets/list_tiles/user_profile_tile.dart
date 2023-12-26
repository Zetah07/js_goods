import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_strings.dart';



class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: // TCircularImage(
          //   image: TImages.user,
          //   width: 50,
          //   height: 50,
          //   padding: 0,
          // ),
          const ClipOval(
        child: Image(
          image: AssetImage(TImages.user),
          width: 50,
          height: 50,
        ),
      ),
      title: Text('Zetah Dev',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)),
      subtitle: Text('jszetah@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: Colors.white)),
      trailing: IconButton(onPressed: onPressed, icon:const Icon(Iconsax.edit), color: TColors.white),
    );
  }
}
