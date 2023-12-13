import 'package:flutter/material.dart';
import 'package:js_goods/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
    );
}

  @override
  //TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(TDeviceUtils.getAppBarHeight());

}