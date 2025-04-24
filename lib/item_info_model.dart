class ItemInfoModel {
  String name;
  String color;
  String size;
  String units;
  String price;
  String? imageUrl;
  ItemInfoModel({
    required this.name,
    required this.color,
    required this.size,
    required this.units,
    required this.price,
    this.imageUrl,
  });
}
