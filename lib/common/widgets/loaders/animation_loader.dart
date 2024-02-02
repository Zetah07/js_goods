import 'package:flutter/material.dart';

class TAnimationLoaderWidget extends StatelessWidget {

  ///Parameters:
  ///  -text: the text to be displayed below the animation.
  /// -animation: the path to the lottie animation file.
  /// -showAction: Whether to show an action button below the text.
  /// -actionText: the text to be displayed on the action button.
  /// -onActionPressed: Callback function to be executed when the action button is pressed.
  
  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
