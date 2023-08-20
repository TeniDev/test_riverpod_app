import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const _StreamView(),
    );
  }
}

class _StreamView extends ConsumerWidget {
  const _StreamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersInChat = ref.watch(userInChatProvider);

    if (!usersInChat.hasValue) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.builder(
      itemCount: usersInChat.value!.length,
      itemBuilder: (context, index) {
        final name = usersInChat.value![index];
        return ListTile(
          title: Text(name),
        );
      },
    );
  }
}
