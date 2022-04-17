import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoping_app/pages/products/product_card_widget.dart';

import '../search_page.dart';

// class ProductPage extends StatelessWidget {
//   const ProductPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Page'),
//       ),
//       body: StreamBuilder<QuerySnapshot<dynamic>>(
//         stream: FirebaseFirestore.instance.collection('products').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//             // ignore: unrelated_type_equality_checks
//           } else if (Connectivity().checkConnectivity() ==
//               ConnectivityResult.none) {
//             return const NoInternetPage();
//           } else if (snapshot.hasError) {
//             return const Center(child: Text('Error'));
//           } else if (snapshot.data?.docs.length == 0) {
//             return const Center(child: Text('No Products'));
//           } else {
//             return GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               itemCount: snapshot.data?.docs.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   onTap: () {
//                     getcartToProduct('LVZ93QYVzb6BLWm762iU');
//                     // productAddToCart(
//                     //     CartModel(
//                     //         productId: snapshot.data!.docs[index].id,
//                     //         createAt: Timestamp.now()),
//                     //     FirebaseAuth.instance.currentUser!.uid);
//                   },
//                   child: Card(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Image.network(
//                             snapshot.data?.docs[index].get('image'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               snapshot.data?.docs[index].get('name'),
//                               style: const TextStyle(fontSize: 20),
//                             ),
//                             Text(
//                               snapshot.data!.docs[index]
//                                   .get('pirce')
//                                   .toString(),
//                               style: const TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }

//   // productAddToCart(CartModel cartModel, String id) async {
//   //   await FirebaseFirestore.instance.collection('users').doc(id).update({
//   //     "cart": FieldValue.arrayUnion([cartModel.toMap()])
//   //   });
//   // }

//   getcartToProduct(String id) async {
//     final data =
//         FirebaseFirestore.instance.collection('products').doc(id).snapshots();

//     await data.first.then((value) {
//       print(value.data());
//       // print(value.docs[0].get('name'));
//     });
//   }
// }

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text('Shop App'),
            actions: [
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchPage());
                },
                icon: Icon(
                  Icons.search,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Product Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Text('product $index',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'product $index',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ProductCardWidgetWithTilte(
            producttitle: "Fruits",
          ),
          ProductCardWidgetWithTilte(
            producttitle: "Vegetables",
          ),
          ProductCardWidgetWithTilte(
            producttitle: "Breakfasts",
          ),
          ProductCardWidgetWithTilte(
            producttitle: "Bathing & Spa",
          ),
          ProductCardWidgetWithTilte(
            producttitle: "Baby care essentials",
          ),
        ],
      ),
    );
  }
}
