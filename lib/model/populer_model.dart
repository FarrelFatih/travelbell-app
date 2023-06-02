class PopularDestinationModel {
  String name;
  String country;
  String image;

  PopularDestinationModel(this.name, this.country, this.image);
}

List<PopularDestinationModel> populars = popularsData
    .map((item) => PopularDestinationModel(
          item['name']!,
          item['country']!,
          item['image']!,
        ))
    .toList();

var popularsData = [
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "images/bali.jpg",
  },
  {
    "name": "Paris",
    "country": "France",
    "image": "images/paris.jpg",
  },
  {
    "name": "Rome",
    "country": "Italy",
    "image": "images/rome.jpg",
  },
  {
    "name": "Pyongyang",
    "country": "North Korea",
    "image": "images/pyongyang.jpg",
  },
  {
    "name": "Batu",
    "country": "Indonesia",
    "image": "images/batu.jpg",
  },
];
