import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoping_app/pages/no_internet_page.dart';

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
                  showSearch(context: context, delegate: Search());
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
                        )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Product Page',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.network(
                                'https://png.pngtree.com/png-clipart/20190515/original/pngtree-whatsapp-social-media-icon-design-template-vector-png-image_3654767.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.5),
                                      Colors.black.withOpacity(0.1),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'product $index',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add_shopping_cart,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Banner(
                              message: '40 Offer',
                              location: BannerLocation.topStart,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Search extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
