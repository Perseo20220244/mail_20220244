import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CupertinoList());

class CupertinoList extends StatelessWidget {
  const CupertinoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: ListSectionInsetExample(),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          brightness: Brightness.light), // Configura el tema claro
    );
  }
}

class ListSectionInsetExample extends StatelessWidget {
  const ListSectionInsetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoListSection.insetGrouped(
        header: const Text(
          'Mailboxes',
          style: TextStyle(fontSize: 34.0),
        ),
        footer: const CupertinoListTile(
          title: Text(
            'iCloud',
            style: TextStyle(fontSize: 24.0),
          ),
          trailing: CupertinoListTileChevron(),
          onTap: null,
        ),
        children: <CupertinoListTile>[
          CupertinoListTile.notched(
            title: const Text('Today'),
            leading: const Icon(color: Colors.blue, Icons.calendar_month),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'flutter sapbeeee');
                },
              ),
            ),
          ),
          const CupertinoListTile.notched(
            title: Text('Unread'),
            leading: Icon(color: Colors.blue, Icons.mark_email_unread_outlined),
            trailing: CupertinoListTileChevron(),
          ),
          const CupertinoListTile.notched(
            title: Text('Inbox'),
            leading: Icon(color: Colors.blue, Icons.inbox),
            trailing: CupertinoListTileChevron(),
          ),
          const CupertinoListTile.notched(
            title: Text('Archive'),
            leading: Icon(color: Colors.blue, Icons.archive_outlined),
            trailing: CupertinoListTileChevron(),
          ),
          const CupertinoListTile.notched(
            title: Text('Junk'),
            leading: Icon(color: Colors.blue, Icons.delete_forever_outlined),
            additionalInfo: Text('9'),
            trailing: CupertinoListTileChevron(),
          ),
          const CupertinoListTile.notched(
            title: Text('Trash'),
            leading: Icon(color: Colors.blue, Icons.delete_outline),
            additionalInfo: Text('28'),
            trailing: CupertinoListTileChevron(),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
