// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// final List<String> imgList = [
//   'https://example.com/banner1.jpg',
//   'https://example.com/banner2.jpg',
//   'https://example.com/banner3.jpg',
// ];

// class BannerCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 189,
//         autoPlay: true,
//         enlargeCenterPage: true,
//         viewportFraction: 0.9,
//         aspectRatio: 16/9,
//       ),
//       items: imgList.map((item) => ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Image.asset(
//           item,
//           fit: BoxFit.cover,
//           width: double.infinity,
//         ),
//       )).toList(),
//     );
//   }
// }
