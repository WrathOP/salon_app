import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:salon_app/widgets/categories_grid.dart';
import 'package:salon_app/widgets/deals_carousel.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CarouselSliderWidget(),
          Gap(20),
          CategoryGridView(),
        ],
      ),
    );
  }
}
