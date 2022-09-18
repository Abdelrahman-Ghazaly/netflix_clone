import 'package:flutter/material.dart';
import 'package:netflix_flutter/assets.dart';
import 'package:netflix_flutter/models/models.dart';

const Content sintelContent = Content(
  name: 'Sintel',
  posterUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews = [
  const Content(
    name: 'Avatar The Last Airbender',
    posterUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
  ),
  const Content(
    name: 'The Crown',
    posterUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  const Content(
    name: 'The Umbrella Academy',
    posterUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  const Content(
    name: 'Carole and Tuesday',
    posterUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  const Content(
    name: 'Black Mirror',
    posterUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
  const Content(
    name: 'Avatar The Last Airbender',
    posterUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
  ),
  const Content(
    name: 'The Crown',
    posterUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  const Content(
    name: 'The Umbrella Academy',
    posterUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  const Content(
    name: 'Carole and Tuesday',
    posterUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  const Content(
    name: 'Black Mirror',
    posterUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
];

final List<Content> myList = [
  const Content(
    name: 'Violet Evergarden',
    posterUrl: Assets.violetEvergarden,
  ),
  const Content(
    name: 'How to Sell Drugs Online (Fast)',
    posterUrl: Assets.htsdof,
  ),
  const Content(
    name: 'Kakegurui',
    posterUrl: Assets.kakegurui,
  ),
  const Content(
    name: 'Carole and Tuesday',
    posterUrl: Assets.caroleAndTuesday,
  ),
  const Content(
    name: 'Black Mirror',
    posterUrl: Assets.blackMirror,
  ),
  const Content(
    name: 'Violet Evergarden',
    posterUrl: Assets.violetEvergarden,
  ),
  const Content(
    name: 'How to Sell Drugs Online (Fast)',
    posterUrl: Assets.htsdof,
  ),
  const Content(
    name: 'Kakegurui',
    posterUrl: Assets.kakegurui,
  ),
  const Content(
    name: 'Carole and Tuesday',
    posterUrl: Assets.caroleAndTuesday,
  ),
  const Content(
    name: 'Black Mirror',
    posterUrl: Assets.blackMirror,
  ),
];

final List<Content> originals = [
  const Content(name: 'Stranger Things', posterUrl: Assets.strangerThings),
  const Content(name: 'The Witcher', posterUrl: Assets.witcher),
  const Content(
      name: 'The Umbrella Academy', posterUrl: Assets.umbrellaAcademy),
  const Content(name: '13 Reasons Why', posterUrl: Assets.thirteenReasonsWhy),
  const Content(name: 'The End of the F***ing World', posterUrl: Assets.teotfw),
  const Content(name: 'Stranger Things', posterUrl: Assets.strangerThings),
  const Content(name: 'The Witcher', posterUrl: Assets.witcher),
  const Content(
      name: 'The Umbrella Academy', posterUrl: Assets.umbrellaAcademy),
  const Content(name: '13 Reasons Why', posterUrl: Assets.thirteenReasonsWhy),
  const Content(name: 'The End of the F***ing World', posterUrl: Assets.teotfw),
];

final List<Content> trending = [
  const Content(name: 'Explained', posterUrl: Assets.explained),
  const Content(name: 'Avatar The Last Airbender', posterUrl: Assets.atla),
  const Content(name: 'Tiger King', posterUrl: Assets.tigerKing),
  const Content(name: 'The Crown', posterUrl: Assets.crown),
  const Content(name: 'Dogs', posterUrl: Assets.dogs),
  const Content(name: 'Explained', posterUrl: Assets.explained),
  const Content(name: 'Avatar The Last Airbender', posterUrl: Assets.atla),
  const Content(name: 'Tiger King', posterUrl: Assets.tigerKing),
  const Content(name: 'The Crown', posterUrl: Assets.crown),
  const Content(name: 'Dogs', posterUrl: Assets.dogs),
];

final List<Content> comingSoon = [
  const Content(
      name: 'Avatar The Last Airbender',
      posterUrl: Assets.atla,
      color: Colors.orange,
      titleImageUrl: Assets.atlaTitle,
      description:
          'The series is centered around the journey of twelve-year-old Aang, the current Avatar and last survivor of his nation, the Air Nomads, along with his friends Katara, Sokka, and later Toph, as they strive to end the Fire Nation\'s war against the other nations of the world.'),
  const Content(
      name: 'The Umbrella Academy',
      posterUrl: Assets.umbrellaAcademy,
      color: Colors.yellow,
      titleImageUrl: Assets.umbrellaAcademyTitle,
      description:
          'A family of former child heroes, now grown apart, must reunite to continue to protect the world. A family of former child heroes, now grown apart, must reunite to continue to protect the world. A family of former child heroes, now grown apart, must reunite to continue to protect the world.'),
  const Content(
      name: 'Carole and Tuesday',
      posterUrl: Assets.caroleAndTuesday,
      color: Colors.lightBlueAccent,
      titleImageUrl: Assets.caroleAndTuesdayTitle,
      description:
          'Tuesday, the teenaged daughter of the prominent politician Valerie Simmons, runs away from home on terraformed Mars to be able to play music. In Alba City, chance brings her together with Carole, another aspiring young musician who\'s just been fired from her dead-end job. The two decide to make music together.'),
  const Content(
      name: 'Black Mirror',
      posterUrl: Assets.blackMirror,
      color: Colors.green,
      titleImageUrl: Assets.blackMirrorTitle,
      description:
          'This sci-fi anthology series explores a twisted, high-tech near-future where humanity\'s greatest innovations and darkest instincts collide. This cult-favorite series has won six Emmys, including two for Outstanding TV Movie ("USS Callister" and "San Junipero").'),
];

final List<Content> searchItems = [
  const Content(
    name: 'Squid Games',
    posterUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmgNzUSjGoEfFBQevlUZ5OafP9JDep5EiqeQ&usqp=CAU',
  ),
  const Content(
    name: 'OBLIVION',
    posterUrl:
        'https://www.dreamboxgate.com/imgcache/2019/527179_dreambox-sat.com.jpg',
  ),
  const Content(
      name: '1917',
      posterUrl:
          'https://cdn.shopify.com/s/files/1/0969/9128/products/1917_-_Sam_Mendes_WW1_Epic_-_Hollywood_War_Film_Classic_English_Movie_Poster_81a3cd10-0023-439a-b461-c67381a81ecb.jpg'),
  const Content(
      name: 'Avatar',
      posterUrl: 'https://cdn.wallpapersafari.com/76/85/fFsbXB.jpg'),
  const Content(
    name: 'Squid Games',
    posterUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmgNzUSjGoEfFBQevlUZ5OafP9JDep5EiqeQ&usqp=CAU',
  ),
  const Content(
    name: 'OBLIVION',
    posterUrl:
        'https://www.dreamboxgate.com/imgcache/2019/527179_dreambox-sat.com.jpg',
  ),
  const Content(
      name: '1917',
      posterUrl:
          'https://cdn.shopify.com/s/files/1/0969/9128/products/1917_-_Sam_Mendes_WW1_Epic_-_Hollywood_War_Film_Classic_English_Movie_Poster_81a3cd10-0023-439a-b461-c67381a81ecb.jpg'),
  const Content(
      name: 'Avatar',
      posterUrl: 'https://cdn.wallpapersafari.com/76/85/fFsbXB.jpg'),
];
