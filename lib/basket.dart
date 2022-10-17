import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'item.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({super.key});

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,Item item,widgets){
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text("Sepetteki Ürün | ${item.cartCounts} |"),
                 ),
                 InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    item.reset();
                  },
                   child: Container(
                             alignment: Alignment.center,
                               width: 100,
                               height: 50,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.green,
                               ),
                               child: Text("Resetle"),
                 
                           ),
                 )
              ],
            ),
          ),
        ),
      );
  });
  }
}