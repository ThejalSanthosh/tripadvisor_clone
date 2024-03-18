class HotelResultModel {
  List<String> image;
  bool bestSeller;
  String name;
  int circleCount;
  String reviewsCount;
  String spotDest;
  String price;

  HotelResultModel(
      {required this.image,
      required this.bestSeller,
      required this.name,
      required this.circleCount,
      required this.reviewsCount,
      required this.spotDest,
      required this.price});
}
