import 'package:flutter/material.dart';
//import 'package:project_x/contact_us.dart';
import 'profile.dart'; // Import the profile page
import 'favorite_page.dart';
import 'dashboard/dashboard_screen.dart';
import 'products_page.dart';
import 'orders_page.dart';
import 'revenue_page.dart';
import 'customers_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/dashboard',
        routes: {
          '/dashboard': (context) => DashboardScreen(),
          '/products': (context) => ProductsPage(),
          '/orders': (context) => OrdersPage(),
          '/revenue': (context) => RevenuePage(),
          '/customers': (context) => CustomersPage(),
        }, 
        );
  }
}
