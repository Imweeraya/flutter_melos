
import 'dart:async';

import 'package:flutter/cupertino.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}
class _ImageSliderState extends State<ImageSlider> {
  final List<String> imageUrls = [
    "https://img.freepik.com/premium-psd/3d-objects-laptop-black-friday_129606-66.jpg?w=826",
    "https://i.pinimg.com/564x/b8/3f/6c/b83f6c2bb10b0bfe7cf4ab07e3e35b41.jpg" ,
    "https://i.pinimg.com/564x/ae/34/aa/ae34aa3903570ed58d1a8fcc831c3ab3.jpg",
    "https://i.pinimg.com/564x/8c/00/91/8c00914f41d0d7fec49c3a9431c5b417.jpg"
  ];

  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return _buildImage(index);
      },
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
    );
  }

  Widget _buildImage(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        imageUrls[index],
        fit: BoxFit.cover,
      ),
    );
  }
}
