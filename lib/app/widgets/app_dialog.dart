import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';

class AppDialog {
  static void confirm(
    BuildContext context, {
    required VoidCallback? onConfirm,
    required String message,
    String? title,
  }) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actionsPadding: const EdgeInsets.only(right: 12, left: 12, bottom: 24),
      insetPadding: const EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: title != null
          ? Text(title, style: context.textTheme.labelLarge, textAlign: TextAlign.center)
          : null,
      content: Text(message, style: context.textTheme.labelMedium),
      actions: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: context.pop,
                style: FilledButton.styleFrom(backgroundColor: context.colorScheme.error),
                child: Text('app.cancel'.tr()),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton(
                onPressed: () {
                  context.pop();
                  onConfirm?.call();
                },
                child: Text('app.confirm'.tr()),
              ),
            ),
          ],
        ),
      ],
    ),
  );
  static void multiTimer(
    BuildContext context, {
    required ValueChanged<String> onConfirm,
    required String message,
    String? title,
  }) async {
    final TextEditingController controller = TextEditingController();
    final key = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: const EdgeInsets.only(right: 12, left: 12, bottom: 24),
        insetPadding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: title != null
            ? Text(title, style: context.textTheme.labelLarge, textAlign: TextAlign.center)
            : null,
        content: Form(
          key: key,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message, style: context.textTheme.labelMedium),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(labelText: 'app.timer_name'.tr()),
                autofocus: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'app.timer_name_required'.tr();
                  }
                  return null;
                },
                onChanged: (value) => key.currentState?.validate(),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: context.pop,
                  style: FilledButton.styleFrom(backgroundColor: context.colorScheme.error),
                  child: Text('app.cancel'.tr()),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    if (key.currentState?.validate() ?? false) {
                      onConfirm(controller.text.trim());
                      context.pop();
                    }
                  },
                  child: Text('app.confirm'.tr()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
