import 'package:flutter/cupertino.dart';

class Item with ChangeNotifier{
  int _cartCount;

  Item(this._cartCount);

  int get cartCounts => _cartCount;


  set cartCount(int value){
    _cartCount=value;
  }
  void increase(){
    _cartCount++;
    notifyListeners();
  }
  void decrease(){
    _cartCount--;
    notifyListeners();
  }
   void reset(){
    _cartCount=0;
    notifyListeners();
  }
  String get price => "${getPrice().toString()} ₺";
  List? basket=[];
  List? products=[
    {
      "image":"https://cdn.dsmcdn.com/mnresize/400/-/ty513/product/media/images/20220822/16/163937942/117736341/1/1_org_zoom.jpg",
      "title":"Apple Macbook Air 13' M1",
      "description":"M1 8gb 256gb Ssd Altın MGND3TU/A",
      "price":20690
    },
     {
      "image":"https://cdn.dsmcdn.com/mnresize/1200/1800/ty451/product/media/images/20220609/17/123457532/240043854/1/1_org_zoom.jpg",
      "title":"Casper Via E30'",
      "description":"4gb Ram 64 Gb VIA-E30",
      "price":3499
    },
     {
      "image":"https://cdn.dsmcdn.com/mnresize/1200/1800/ty526/product/media/images/20220908/12/170673015/255953863/1/1_org_zoom.jpg",
      "title":"TOZO T6 Bluetooth",
      "description":"Dokunmatik Kontrol Kablosuz Şarj Kutusu Mikrofon Kulak Içi Kulaklık ",
      "price":788
    },
    {
      "image":"https://cdn.dsmcdn.com/mnresize/1200/1800/ty98/product/media/images/20210404/18/1a609f7d/59308114/1/1_org_zoom.jpg",
      "title":"Oral-B D100 Şarj Edilebilir Diş Fırçası",
      "description":"3 Boyutlu Beyazlık Pembe ",
      "price":400
    },
  ];
  void addBasket(Object value){
    basket!.add(value);
    //print(basket.toString());
    notifyListeners();

  }
  void removeBasket(int index){
    basket!.removeAt(index);
    notifyListeners();
  }
  int getPrice(){
    int price=0;
    for(var i=0;i<basket!.length;i++){
      price+=int.parse(basket![i]["price"].toString());
    }
    return price;
  }
}