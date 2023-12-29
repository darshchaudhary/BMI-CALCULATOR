import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key, required this.icon, required this.onPress,
  });

  final IconData icon;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      child: Icon(
          icon
      ),
      elevation: 5.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56
      ),

    );
  }
}