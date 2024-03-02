import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Buy my first car")),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown.shade300,
            height: 210,
            child: const Column(
              children: [
                Row(
                  children: [Text("10,000.00")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
