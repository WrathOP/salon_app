import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/categories_provider.dart';
import '../providers/categories_provider.dart';

class CategoryGridView extends ConsumerWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    return categories.when(
      data: (categoryList) {
        return Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      3, // You can adjust the number of columns as needed
                ),
                itemCount: categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    surfaceTintColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: CachedNetworkImage(
                      imageUrl: categoryList[index]['imageUrl'],
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  );
                }),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const Text('Something went wrong'),
    );
  }
}
