import 'package:crollup/screens/transaction.dart';
import 'package:flutter/material.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({super.key});

  @override
  _BottomBarNavigationState createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Wallet(),
    const Explore(),
    const TransactionScreen(),
    const You(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight_takeoff_outlined),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'People',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle:
            const TextStyle(color: Colors.black), // Add this line
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 1'),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 2'),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 3'),
    );
  }
}

class You extends StatelessWidget {
  const You({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 5'),
    );
  }
}
