import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDecending = false;
  List<String> users = [
    'Bret',
    'Antonette',
    'Samantha',
    'Karianne',
    'Kamren',
    'Leopoldo',
    'Elwyn',
    'Maxime',
    'Delphine',
    'Kattie',
    'Moriah',
    'Clementina',
    'Kurtis',
    'Aaron'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              setState(() {
                isDecending = !isDecending;
              });
            },
            icon: RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.compare_arrows,
                size: 28,
              ),
            ),
            label: Text(
              isDecending ? "Decending" : "Ascending",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(child: buildList()),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buildList() => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          //final sortedUsers = isDecending ? users.reversed.toList() : users;
          final sortedUsers = users
            ..sort((userA, userB) =>
                isDecending ? userB.compareTo(userA) : userA.compareTo(userB));
          final item = sortedUsers[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random?sig=$index"),
            ),
            title: Text(item),
          );
        },
      );
}
