import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal.shade400,
        title: const Text('SnackBar'),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.signal_wifi_statusbar_null_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent.shade100,
            onPrimary: Colors.white,
            elevation: 0.0,
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.blueAccent.shade100,
                width: 1.0,
              ),
            ),
          ),
          onPressed: () {
            // Show a SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Im learning flutter and i believe i can do it'),
              ),
            );
          },
          child: const Text('SnackBar'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent.shade100,
        onPressed: () {
          // Show a SnackBar
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('I love flutter  framework'),
            ),
          );
        },
        child: const Icon(Icons.call_missed),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) => debugPrint('Tapped item: $index'),
      ),
    );
  }
}

void Print(String s) {}
