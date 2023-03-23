import 'package:flutter/widgets.dart';

import '../../core/ui/module_container.dart';
import 'view/home_view.dart';
import 'view_model/home_view_model.dart';

class HomeModule extends StatelessWidget {
  const HomeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ModuleContainer(
      providerOverrides: [
        homeViewModelState.overrideWith(
          (ref) => HomeStateNotifier(ref),
        )
      ],
      module: const HomeView(),
    );
  }
}
