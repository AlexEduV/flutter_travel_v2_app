class Hotel {

  final String name;
  final String location;
  final String assetSrc;

  final int price;

  final double stars;
  final int reviews;

  final String description;

  final String ownerName;
  final double ownerStars;
  final int ownerReviews;
  final String ownerAssetSrc;

  final String? saleBannerText;

  late bool isFavorite;

  Hotel({
    required this.name,
    required this.location,
    required this.assetSrc,
    required this.price,
    required this.stars,
    required this.reviews,
    required this.description,
    required this.ownerName,
    required this.ownerStars,
    required this.ownerReviews,
    required this.ownerAssetSrc,
    this.saleBannerText,
    this.isFavorite = false,
  });

}
