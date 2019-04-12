import 'package:flutter/material.dart';
import '../model/Product.dart';

class DemoNavigatorParam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductListSelf(
      products: List<Product>.generate(20, (i) => Product('商品 $i', '商品描述 $i')),
    );
  }
}

class ProductListSelf extends StatelessWidget {
  final List<Product> products;

  const ProductListSelf({Key key, @required this.products}) : super(key: key);

  Widget _listProduct(BuildContext context, int index) {
    return Container(
      child: ListTile(
        title: Text('${products[index].title}'),
        subtitle: Text('${products[index].description}'),
        leading: Icon(Icons.accessible),
        onTap: () {
          debugPrint(products[index].title + "" + products[index].description);

          // 传入参数打开页面
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProductDetail(product: products[index]),
            ),
          );
        },
      ),
      height: 100.0,
      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: _listProduct,
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  // 接收参数
  const ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ListTile(
          title: Text('${product.title}'),
          subtitle: Text('${product.description}'),
        ),
      ),
    );
  }
}
