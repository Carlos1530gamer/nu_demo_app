import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// [ModuleContainer] create new modules with itself scope
/// the approche is create modules when are destroyed delete the depencencies of module
/// - [providerOverrides] are the overrides it use this module for example use when creates controller for example
///
/// ```dart
/// class SomeController {
///   // controller code
/// }
///
/// final controllerProvider = Provider.autodispose<SomeController>((ref) => throw UnimplementedError());
///
/// class SomeModule extends HookConsumerWidget {
///  const SomeModule({super.key});
///
///  @override
///  Widget build(BuildContext context, WidgetRef ref) {
///    return ModuleContainer(
///       providerOverrides: [
///         controllerProvider.overrideWithProvider(_newProvider),
///        ]
///       child: ModuleContent(),
///    );
///  }
///}
/// ```
/// out of this scope the controller not exist and when are removed the widget dispose the override provider
/// - [module] is the content of module
class ModuleContainer extends StatelessWidget {
  const ModuleContainer({
    super.key,
    required this.providerOverrides,
    required this.module,
  });

  final List<Override> providerOverrides;
  final Widget module;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        ...providerOverrides,
      ],
      child: module,
    );
  }
}
