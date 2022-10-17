import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/basket.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
   return Consumer(builder:(context,Item item,widget)
   {
     return Scaffold(
      appBar: AppBar(
        title: Text("Sepetteki Ürün | ${item.cartCounts} |"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80.h,
            width: 100.w,
            child: ListView.builder(
              itemCount: 5,
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
                    Text("Ürün"),
                    InkWell(
                      onTap: () {
                        item.increase();
                      },
                      child: Container(
                        width: 4.h,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(.7.h)
                        ),
                        child: Icon(Icons.add_shopping_cart_rounded),
                      ),

                    )
                  ],
                ),
              );
            })),
          ),
          GestureDetector(
            onTap: (){
              Route route=MaterialPageRoute(builder: (context){
                return MyBasket();
              });
              Navigator.push(context, route);
            },
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              
              child: Text("Sepetim"),
            ),
          ),
          
        ],
      ),
    );
   });
  }
}