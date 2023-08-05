class Assortment {
  final String carImage;
  final String carName;
  final List<Sliding> slideAblum;
  final List<Details> details;
  const Assortment({
    required this.carImage,
    required this.carName,
    required this.details,
    required this.slideAblum,
  });
}

///////// Inside Assortment //////////
class Sliding {
  final String sliding;

  const Sliding({
    required this.sliding,
  });
}

class Details {
  final String detailPhoto;
  final String detailName;
  final String detailInfo;

  const Details({
    required this.detailPhoto,
    required this.detailName,
    required this.detailInfo,
  });
}
///////// Inside Assortment //////////

class Car {
  const Car({
    required this.id,
    required this.categories,
    required this.title,
    required this.imgAssets,
    required this.assortment,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imgAssets;
  final List<Assortment> assortment;
}
