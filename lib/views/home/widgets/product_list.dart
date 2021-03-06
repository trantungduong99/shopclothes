import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/product_card.dart';
import 'package:flutter_watch_shop/models/product.dart';

class ProductList extends StatefulWidget {
  int productTypeId;
  ProductList(productTypeId)
  {
    this.productTypeId = productTypeId;
  }
  @override
  _ProductListState createState() => _ProductListState(this.productTypeId);
}

class _ProductListState extends State<ProductList> {
  List<Product> productsByType;
  _ProductListState(productType)
  {
    productsByType = products.where((i) => i.type == productType).toList();
  }
  List<String> filters = [
    'Trending',
    'Lowest Price',
    'Highest Price'
  ];
  String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = "Trending";
  }

  @override
  Widget build(BuildContext context) {
    final itemCountRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          productsByType.length.toString() + " Items",
          style: TextStyle(fontSize: 17.0),
        ),
        DropdownButton(
          value: selectedFilter,
          items: filters.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value, style: TextStyle(fontSize: 17.0)),
            );
          }).toList(),
          onChanged: (selected) {
            setState(() {
              selectedFilter = selected;
            });
          },
        )
      ],
    );

    final list = Expanded(
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(product: productsByType[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.65,
        ),
        itemCount: productsByType.length,
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}