import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../providers/slider_provider.dart';
import '../utils/constants.dart';

class SliderScreen extends StatefulWidget {
  static const String routeName = '/slider';
  const SliderScreen({super.key});

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Fetching sliders properly
    Future.microtask(() {
      Provider.of<SliderProvider>(context, listen: false).loadSliders();
    });
  }

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFEBEAFF),
      body: Column(
        children: [
          Stack(
            children: [
              sliderProvider.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : sliderProvider.sliders.isEmpty
                  ? const Center(child: Text("No sliders found"))
                  : CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 2.2,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                itemCount: sliderProvider.sliders.length,
                itemBuilder: (context, index, realIndex) {
                  final slider = sliderProvider.sliders[index];
                  String imageUrl = "$imgUrl/sliders/${slider.image}";
                  return Container(
                    key: ValueKey(slider.id),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 14,
                left: 50,
                right: 50,
                child: sliderProvider.sliders.isNotEmpty
                    ? DotsIndicator(
                  dotsCount: sliderProvider.sliders.length,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                    color: Colors.white,
                    activeColor: Colors.redAccent,
                  ),
                )
                    : const SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}