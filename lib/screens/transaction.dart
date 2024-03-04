import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[100]!.withOpacity(0.2),
        title: const Center(
          child: Text(
            "Buy my first car",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent[100]!.withOpacity(0.2),
          child: Column(
            children: [
              const SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFf5f4e6),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 120,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$10,000.00",
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\$70,000.00",
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total amount invested",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Current Value",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 4,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black, // Start with black color
                                Colors.black, // End with black color
                                Colors.grey, // Transition to grey color
                                Colors.grey, // Transition to grey color
                                Colors.grey, // Transition to grey color
                              ],
                              stops: [
                                0.0,
                                0.5,
                                0.51,
                                0.75,
                                1.0
                              ], // Stop points for colors
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "5th May, 2023",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOption(
                      context, Icons.add, Colors.green, // Icon color
                      Colors.greenAccent[100]!
                          .withOpacity(0.3), // Container color
                      'Top-Up',
                    ),
                    _buildOption(
                        context,
                        Icons.signal_cellular_alt,
                        Colors.pinkAccent.shade100, // Icon color
                        Colors.pinkAccent[100]!
                            .withOpacity(0.1), // Container color
                        'Earnings'),
                    _buildOption(
                        context,
                        Icons.settings_outlined,
                        Colors.blue, // Icon color
                        Colors.blueAccent[100]!
                            .withOpacity(0.1), // Container color
                        'Customize'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: const Row(
                  children: [
                    Text(
                      "You invested in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 80,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4e2375),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            "D",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "DefiPulse Index",
                                style: TextStyle(
                                  color: Color(0xFF4e2375),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$0.0026",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Text(
                                "+7.84%",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent transaction",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              _buildTransactionItem(
                context,
                'Payout for my new car',
                'January 5, 2020',
                '\$10,000',
                'Pending',
                Colors.orangeAccent.shade400,
                Icons.add, // Icon data
                Colors.orangeAccent[100]!.withOpacity(0.2), // Container color
                Colors.orange,
              ),
              const SizedBox(height: 20),
              _buildTransactionItem(
                context,
                'Fund Plan',
                'January 8, 2020',
                '\$10,000',
                'Successful',
                Colors.green, // Status color
                Icons.transit_enterexit_rounded, // Icon data
                Colors.greenAccent[100]!.withOpacity(0.3), // Container color
                Colors.green, // Icon color
              ),
              const SizedBox(height: 20),
              _buildTransactionItem(
                context,
                'Fund Plan',
                'January 8, 2020',
                '\$10,000',
                'Successful',
                Colors.green,
                Icons.transit_enterexit_rounded, // Icon data
                Colors.greenAccent[100]!.withOpacity(0.3), // Container color
                Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(BuildContext context, IconData iconData, Color iconColor,
      Color containerColor, String label) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: containerColor, // Dynamic container color
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              iconData,
              color: iconColor, // Dynamic icon color
              size: MediaQuery.of(context).size.width * 0.07,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionItem(
    BuildContext context,
    String title,
    String date,
    String amount,
    String status,
    Color statusColor,
    IconData iconData,
    Color containerColor,
    Color iconColor,
  ) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: 115,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: containerColor, //  background color
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      iconData, // icon
                      color: iconColor, //  icon color
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transaction Status",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
