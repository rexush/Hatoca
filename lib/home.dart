import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final List<Map<String, String>> _contacts = [
    {
      'name': 'Lucky Draw',
      'avatar': 'asset/Lucky Draw.png',
    },
    {
      'name': 'Book Test Drive',
      'avatar': 'asset/Book Test Drive.png',
    },
    {
      'name': 'Book Service',
      'avatar': 'asset/Book Service.png',
    },
    {
      'name': 'THS',
      'avatar': 'asset/THS.png',
    },
    {
      'name': 'Catalog',
      'avatar': 'asset/Catalog.png',
    },
    {
      'name': 'Calculator',
      'avatar': 'asset/Calculator.png',
    },
    {
      'name': 'Claim Insurance',
      'avatar': 'asset/Claim Insurance.png',
    },
    {
      'name': 'Service Berkala',
      'avatar': 'asset/Service Berkala.png',
    },
    {
      'name': 'Tips & Trick',
      'avatar': 'asset/Tips and Trick.png',
    },
    {
      'name': 'Trade In',
      'avatar': 'asset/Trade in.png',
    },
    {
      'name': 'Dealer Location',
      'avatar': 'asset/Dealer Location.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Jumlah kolom dalam grid
          mainAxisSpacing: 10, // Jarak vertikal antara item
          crossAxisSpacing: 10, // Jarak horizontal antara item
        ),
        itemCount: _contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey[100],
                  backgroundImage: AssetImage(_contacts[index]['avatar'] ?? ''),
                ),
                const SizedBox(height: 10),
                Text(
                  _contacts[index]['name'] ?? '',
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        },
      ),

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          //code to execute on button press
        },
        child: const Icon(Icons.aspect_ratio),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color:Colors.redAccent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.search, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.print, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.people, color: Colors.white,), onPressed: () {},),
          ],
        ),
      ),
    );
  }
}