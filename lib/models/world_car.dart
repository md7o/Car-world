//first list
class WorldCar {
  final String name;
  final String imageUrl;
  final List<Cars> carItems;

  const WorldCar({
    required this.name,
    required this.imageUrl,
    required this.carItems,
  });
}

//first list
//=================
//second list
class Cars {
  final String carImage;
  final String carName;
  final List<Details> details;

  const Cars({
    required this.carImage,
    required this.carName,
    required this.details,
  });
}

//second list
//=================
//third list
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

//third list
//=================
class PopularsCar {
  final String backgroundImg;
  final String title;
  final String selling;

  const PopularsCar({
    required this.backgroundImg,
    required this.title,
    required this.selling,
  });
}
