import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pentagon/api/api_service.dart';

final apisericeProvider = Provider<Apiserice>((ref) {
  return Apiserice();
});

final apigetpostProvider = FutureProvider((ref) async {
  return ref.watch(apisericeProvider).getpost();
});
