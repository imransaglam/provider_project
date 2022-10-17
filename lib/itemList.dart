class ItemList {
  final int itemName;
  final String itemImage;
  final int itemPrice;

  ItemList(
    {
    required this.itemName,
     required this.itemImage,
    required this.itemPrice,
  });

  factory ItemList.fromJson(Map<String,dynamic> json){
    return ItemList(
      itemName:json['itemName'],
      itemImage:json['itemImage'],
      itemPrice:json['itemPrice']

    );
  }

}