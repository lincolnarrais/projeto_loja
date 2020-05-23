import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar Produtos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsData.itemsCount,
          // itemBuilder: (ctx, i) => ProductItem(products[i]),
          itemBuilder: (ctx, i) => Column(
            children: <Widget>[
              ProductItem(products[i]),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
