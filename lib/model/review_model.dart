class TravelReviewModel {
  String name;
  String content;
  String place;
  String image;

  TravelReviewModel(this.name, this.content, this.place, this.image);
}

List<TravelReviewModel> travelreview = traveldatas
    .map((item) => TravelReviewModel(
          item['name']!,
          item['content']!,
          item['place']!,
          item['image']!,
        ))
    .toList();

var traveldatas = [
  {
    "name": "\"France!\"",
    "content":
        "France was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Paris, France",
    "image": "images/paris.jpg"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Tokyo, Japan",
    "image": "images/tokyo.jpg"
  },
  {
    "name": "\"Spain!\"",
    "content":
        "Spain was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Ibiza, Spain",
    "image": "images/ibiza.jpg"
  },
  {
    "name": "\"Indonesia!\"",
    "content":
        "Indonesia was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Bali, Indonesia",
    "image": "images/bali.jpg"
  },
  {
    "name": "\"North Korea!\"",
    "content":
        "North Korean was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Pyongyang, North Korea",
    "image": "images/pyongyang.jpg"
  },
];
