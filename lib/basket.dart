
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'item.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({super.key});

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
   return Consumer(builder: ((context, Item item, widget) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${item.basket!.length}"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: item.basket!.length,
        itemBuilder: ((context, index) {
          return Container(
                color: Colors.blue,
                width: 100.h,
                height: 8.h,
                margin: EdgeInsets.only(bottom:1.h ),
                padding: EdgeInsets.only(right: 3.w,left: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   ClipRRect(
                    borderRadius: BorderRadius.circular(4.w),
                    child: SizedBox(
                      width: 7.h,
                      height: 7.h,
                      child: Image.network(
                        "${item.basket![index]["image"]}"
                      ),
                    ),
                   ),
                   SizedBox(width: 2.w,),
                   Text("${item.basket![index]["title"]}"),
                    InkWell(
                      onTap: () {
                        item.removeBasket(index);
                      },
                      child: Container(
                        width: 4.h,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(.7.h)
                        ),
                        child: Icon(Icons.remove_shopping_cart_rounded),
                      ),

                    )
                  ],
                ),
              );
        
      })),

    );
     
   }));
  }
}