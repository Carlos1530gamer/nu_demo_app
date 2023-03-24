import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/ui/app_colors.dart';
import '../../view_model/home_view_model.dart';

class HomeShortComponent extends HookConsumerWidget {
  const HomeShortComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModel);

    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextField(
              onChanged: viewModel.updateInputLink,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15),
                filled: true,
                fillColor: AppColors.secundary,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.secundary,
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  viewModel.shortenerUrl();
                },
                icon: const Icon(Icons.send),
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
