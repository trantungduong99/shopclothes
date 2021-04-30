import '../utils/utils.dart';

class Product {
  int id;
  String name;
  List<String> photos;
  List<String> colors;
  int price;
  String brand = "Daniel Wellington";
  int type;

  Product({
    this.id,
    this.name,
    this.price,
    this.photos,
    this.colors,
    this.type,
  });

}

List<Product> products = [
  Product(
    id: 1,
    name: "G-SHOCK MTG-B2000SKZ-1A",
    price: 1499,
    photos: [AppImages.watch10, AppImages.watch11],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 0,
  ),
  Product(
    id: 2,
    name: "G-SHOCK GMW-B5000GD-4",
    price: 899,
    photos: [AppImages.watch20, AppImages.watch21],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 0,
  ),
  Product(
    id: 3,
    name: "PRO TREK PRG-240-1",
    price: 399,
    photos: [AppImages.watch30, AppImages.watch31],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 1,
  ),
  Product(
    id: 4,
    name: "PRO TREK PRW-3510FC-1",
    price: 599,
    photos: [AppImages.watch40, AppImages.watch41],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 1,
  ),
  Product(
    id: 5,
    name: "EDIFICE EF-558DC-1AV",
    price: 649,
    photos: [AppImages.watch50, AppImages.watch51],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 2,
  ),
  Product(
    id: 6,
    name: "EDIFICE EFR-554TR-2A",
    price: 559,
    photos: [AppImages.watch60, AppImages.watch61],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 2,
  ),
  Product(
    id: 7,
    name: "EDIFICE EF-558DC-1AV",
    price: 649,
    photos: [AppImages.watch50, AppImages.watch51],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 2,
  ),
  Product(
    id: 8,
    name: "EDIFICE EFR-554TR-2A",
    price: 559,
    photos: [AppImages.watch60, AppImages.watch61],
    colors: ["#E5AE87", "#C1C1C1"],
    type: 2,
  ),
];