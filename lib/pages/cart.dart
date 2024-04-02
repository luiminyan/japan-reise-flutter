import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';
 class CartPage extends StatelessWidget {
   const CartPage({super.key});

   @override
   Widget build(BuildContext context) {
     return Consumer<CartModel>(
         builder: (context, cartModel, child) =>
             Scaffold(
               backgroundColor: Color.fromARGB(255, 222, 210, 243),
               appBar: AppBar(
                 backgroundColor: Colors.transparent,
                 elevation: 0,
                 title: Text(
                   "Warenkorb",
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
                 centerTitle: true
               ),
               body: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Column(
                   children: [
                     // TODO: make the
                     // make ListView expanded
                     Expanded(
                       child: ListView(
                         children: [
                           if (cartModel.noodlesoup > 0)
                             Container(
                             decoration: BoxDecoration(
                               color: Color.fromARGB(255, 61, 91, 212),
                               borderRadius: BorderRadius.circular(12)
                             ),
                             // ListTile for "Nuddelsuppe"
                             child: ListTile(
                               title: Text(
                                 "Nuddelsuppe",
                                 style: TextStyle(color: Colors.white),
                               ),
                               subtitle: Text(
                                 "${cartModel.priceMap["Noodle"]} Euro",
                                 style: TextStyle(color: Colors.white),
                               ),
                               trailing: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Text(
                                     cartModel.noodlesoup.toString(),
                                     style: TextStyle(color: Colors.white),
                                   ),
                                   SizedBox(width: 10),
                                   IconButton(
                                       onPressed: cartModel.clearNoodleSoup,
                                       icon: Icon(
                                         Icons.delete,
                                         color: Colors.white
                                       )
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: 10),
                           if (cartModel.festival > 0)
                             Container(
                             decoration: BoxDecoration(
                                 color: Color.fromARGB(255, 61, 91, 212),
                                 borderRadius: BorderRadius.circular(12)
                             ),
                             // ListTile for "Nuddelsuppe"
                             child: ListTile(
                               title: Text(
                                 "Mitama Matsuri Festival",
                                 style: TextStyle(color: Colors.white),
                               ),
                               subtitle: Text(
                                 "${cartModel.priceMap["Festival"]! * cartModel.festival} Euro",
                                 style: TextStyle(color: Colors.white),
                               ),
                               trailing: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Text(
                                     cartModel.festival.toString(),
                                     style: TextStyle(color: Colors.white),
                                   ),
                                   SizedBox(width: 10),
                                   IconButton(
                                       onPressed: cartModel.clearFesitval,
                                       icon: Icon(
                                           Icons.delete,
                                           color: Colors.white
                                       )
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: 10),
                           if (cartModel.tour > 0)
                             Container(
                               decoration: BoxDecoration(
                                   color: Color.fromARGB(255, 61, 91, 212),
                                   borderRadius: BorderRadius.circular(12)
                               ),
                               child: ListTile(
                                 title: Text(
                                   "Fuji Tour",
                                   style: TextStyle(color: Colors.white),
                                 ),
                                 subtitle: Text(
                                   "${cartModel.priceMap["Fuji"]! * cartModel.tour} Euro",
                                   style: TextStyle(color: Colors.white),
                                 ),
                                 trailing: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     Text(
                                       cartModel.tour.toString(),
                                       style: TextStyle(color: Colors.white),
                                     ),
                                     SizedBox(width: 10),
                                     IconButton(
                                         onPressed: cartModel.clearTour,
                                         icon: Icon(
                                             Icons.delete,
                                             color: Colors.white
                                         )
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           SizedBox(height: 10),
                           if (cartModel.kimono > 0)
                             Container(
                               decoration: BoxDecoration(
                                   color: Color.fromARGB(255, 61, 91, 212),
                                   borderRadius: BorderRadius.circular(12)
                               ),
                               child: ListTile(
                                 title: Text(
                                   "Komono Kultur",
                                   style: TextStyle(color: Colors.white),
                                 ),
                                 subtitle: Text(
                                   "${cartModel.priceMap["Kimono"]! * cartModel.kimono} Euro",
                                   style: TextStyle(color: Colors.white),
                                 ),
                                 trailing: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     Text(
                                       cartModel.kimono.toString(),
                                       style: TextStyle(color: Colors.white),
                                     ),
                                     SizedBox(width: 10),
                                     IconButton(
                                         onPressed: cartModel.clearKimono,
                                         icon: Icon(
                                             Icons.delete,
                                             color: Colors.white
                                         )
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             )
     );
   }
 }
