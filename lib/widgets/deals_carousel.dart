import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:salon_app/widgets/card_item.dart';

import '../providers/deals_provider.dart';

class CarouselSliderWidget extends ConsumerStatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  ConsumerState<CarouselSliderWidget> createState() =>
      _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends ConsumerState<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    final dealsnapshot = ref.watch(dealsProvider);
    return dealsnapshot.when(
      data: (data) {
        return CarouselSlider(
          items: data.docs.map<Widget>((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;

            return CardItem(imageUrl: data['imageUrl'], title: data['name'], price: data['price']);
          }).toList(),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.3,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            pageSnapping: true,
            animateToClosest: true,
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const Text('Something went wrong'),
    );
  }
}
