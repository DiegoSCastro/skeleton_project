import 'package:flutter/material.dart';

class LanguageDropdownItem extends StatelessWidget {
  final String flagAsset;
  final String languageName;

  const LanguageDropdownItem({super.key, required this.flagAsset, required this.languageName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(flagAsset, width: 20, height: 20),
        const SizedBox(width: 8),
        Text(languageName),
      ],
    );
  }
}
