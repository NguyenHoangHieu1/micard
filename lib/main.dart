import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MiCard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            const SizedBox(height: 20),

            // Name
            const Text(
              'Nguyễn Hoàng Hiếu',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Class
            const Text(
              '22GIT',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 10),


            Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ListTile(
                leading: Icon(Icons.email),
                title: const Text(
                  'hieunh.22git@vku.udn.vn',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: const Text('0815530166'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
