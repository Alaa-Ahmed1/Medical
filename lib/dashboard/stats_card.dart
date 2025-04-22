import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final List<Map<String, dynamic>> stats;

  const StatsCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: stats.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        final item = stats[index];

        return GestureDetector(
          onTap: () {
            
            switch (item['title']) {
              case 'Products':
                Navigator.pushNamed(context, '/products');
                break;
              case 'Orders':
                Navigator.pushNamed(context, '/orders');
                break;
              case 'Revenue':
                Navigator.pushNamed(context, '/revenue');
                break;
              case 'Customers':
                Navigator.pushNamed(context, '/customers');
                break;
            }
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item["icon"], color: item["color"], size: 32),
                  const SizedBox(height: 8),
                  Text(item["title"], style: const TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text("${item['value']}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
