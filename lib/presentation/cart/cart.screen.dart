import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/cart.controller.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartScreen ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
