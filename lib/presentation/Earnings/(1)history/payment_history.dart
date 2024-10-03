import 'package:flutter/material.dart';
import 'package:salhurry/presentation/Earnings/(1)history/widgets/tile.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFF0D0D3B),
            height: MediaQuery.of(context).size.height *
                0.4, // 1/4th of the screen height
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  const Spacer(),
                  const Text(
                    '\$45,266,78',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Available balance',
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          Colors.white70, // Slightly lighter color than white
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.logout,
                          color:
                              Color(0xFF0D0D3B)), // Icon with dark blue color
                      onPressed: () {
                        // Add functionality here
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'withdraw',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Transaction history header
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction history',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple, // Use similar color as the UI
                  ),
                ),
                Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),
          // The rest of the screen can remain empty or be filled with other content
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [TransactionHistoryScreen()],
            ),
          )),
        ],
      ),
    );
  }
}

class TransactionHistoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#053",
      "amount": "+3000",
      "status": "Received",
    },
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#053",
      "amount": "+3000",
      "status": "Received",
    },
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#023",
      "amount": "+2000",
      "status": "Received",
    },
    {
      "job": "Job#053",
      "amount": "+3000",
      "status": "Received",
    },
  ];

  TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  20.0),
      child: Column(
        children: [
          // Transaction list
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return WIdgetTransactionTile(transaction: transaction);
            },
          ),
        ],
      ),
    );
  }
}
