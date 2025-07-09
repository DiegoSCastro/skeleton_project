import 'package:flutter/material.dart';

import '../app.dart';

class EmptyPlaceholder extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const EmptyPlaceholder({
    super.key,
    required this.title,
    required this.content,
    this.icon = Icons.timer_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: context.colorScheme.primary.withValues(alpha: 0.7)),
            const SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: context.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
