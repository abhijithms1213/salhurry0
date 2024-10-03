import 'package:flutter/material.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WIdgetTransactionTile extends StatelessWidget {
  const WIdgetTransactionTile({
    super.key,
    required this.transaction,
  });

  final Map<String, dynamic> transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(15),border: Border.all(width: .5,color: Colors.black12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Network Image
          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlxw1oj9CizA4UiO10tdEz0o32vptgDNozQ&s'), // Replace with actual image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          // const SizedBox(width: 15),

          // // Text (paid you)
          // Expanded(
          //   child: Text(
          //     transaction['job'],
          //     style: const TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          // ),
          kwbox20,
          const Text(
            'paid you',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const Spacer(),

          // Amount and status
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transaction['amount'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              khbox5,
              Row(
                children: [
                  Text(
                    transaction['status'],
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                  kwbox5
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
