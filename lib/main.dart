import 'package:flutter/material.dart';

void main() => runApp(const MailList());

class MailList extends StatelessWidget {
  const MailList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ViewList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ViewList extends StatelessWidget {
  const ViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mailboxes'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
              child: ListTile(
            leading: Icon(color: Colors.blue, Icons.calendar_month),
            title: Text('Today'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          )),
          Card(
              child: ListTile(
                  leading: Icon(
                      color: Colors.blue, Icons.mark_email_unread_outlined),
                  title: Text('Unread'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded))),
          Card(
              child: ListTile(
                  leading: Icon(color: Colors.blue, Icons.inbox),
                  title: Text('Inbox'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded))),
          Card(
              child: ListTile(
                  leading: Icon(color: Colors.blue, Icons.archive_outlined),
                  title: Text('Archive'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded))),
          Card(
              child: ListTile(
                  leading:
                      Icon(color: Colors.blue, Icons.delete_forever_outlined),
                  title: Text('Junk'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded))),
          Card(
              child: ListTile(
                  leading: Icon(color: Colors.blue, Icons.delete_outline),
                  title: Text('Trash'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded))),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
          child: Center(
        child: Text('Updated Just Now'),
      )),
    );
  }
}
