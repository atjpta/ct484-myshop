import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'order_item_card.dart';
import 'order_manager.dart';

import '../shared/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    // print('Building orders');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: Consumer<OrdersManager>(builder: (ctx, ordersManager, child) {
        return ListView.builder(
          itemCount: ordersManager.orderCount,
          itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
        );
      }),
    );
  }
}
