import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:ostello/views/widgets/carousel_item.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;
  final int _itemCount = 4;
  final List<String> image = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          controller: _carouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: const Duration(seconds: 2),
            enableInfiniteScroll: true,
            height: 90,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemCount: _itemCount,
          itemBuilder: (ctx, index, current) {
            return CarouselItem(
              image: image[index],
            );
          },
        ),
        const SizedBox(height: 10),
        // Dots under Carousel
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_itemCount, (index) {
            return Container(
              width: _currentIndex == index ? 25 : 6,
              height: 6,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                color: _currentIndex == index ? Colors.black87 : Colors.black26,
              ),
            );
          }),
        ),
      ],
    );
  }
}
