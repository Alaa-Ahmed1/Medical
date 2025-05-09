import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  final List<Map<String, String>> customers = [
    {"name": "John Doe", "email": "john.doe@example.com", "status": "Active"},
    {
      "name": "Jane Smith",
      "email": "jane.smith@example.com",
      "status": "Inactive"
    },
    {
      "name": "Michael Johnson",
      "email": "michael.johnson@example.com",
      "status": "Active"
    },
    {
      "name": "Emily Davis",
      "email": "emily.davis@example.com",
      "status": "Active"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin and User Management"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: customers.length,
          itemBuilder: (context, index) {
            final customer = customers[index];

            return InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/user (1).png'),
                      ),
                      const SizedBox(width: 16),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              customer["name"]!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              customer["email"]!,
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                _buildChip(
                                  label: customer["status"]!,
                                  color: customer["status"] == "Active"
                                      ? Colors.green
                                      : Colors.red,
                                  icon: customer["status"] == "Active"
                                      ? Icons.check_circle
                                      : Icons.cancel,
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Menu button
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.more_vert),
                        onSelected: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Selected: $value")),
                          );
                        },
                        itemBuilder: (context) => [
                          _buildMenuItem("Assign Admin", Icons.person),
                          _buildMenuItem(
                              "Delete Admin", Icons.delete, Colors.red),
                          _buildMenuItem("Block User", Icons.block, Colors.red),
                          _buildMenuItem("Deactivate User",
                              Icons.do_not_disturb_on, Colors.red),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildChip(
      {required String label, required Color color, required IconData icon}) {
    return Chip(
      avatar: Icon(icon, size: 16, color: Colors.white),
      label: Text(label,
          style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    );
  }

  PopupMenuItem<String> _buildMenuItem(String label, IconData icon,
      [Color? iconColor]) {
    return PopupMenuItem<String>(
      value: label,
      child: Row(
        children: [
          Icon(icon, size: 20, color: iconColor ?? Colors.black87),
          const SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
