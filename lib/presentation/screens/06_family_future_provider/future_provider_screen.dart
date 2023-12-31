import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  ConsumerState<FamilyFutureScreen> createState() => _FamilyFutureScreenState();
}

class _FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 1;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Future Provider'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (name) => Text(name),
          error: (error, _) => Text('No se pudo obtener el nombre del pokemon, $error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            pokemonId++;
          });
        },
      ),
    );
  }
}
