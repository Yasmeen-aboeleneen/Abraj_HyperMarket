import 'package:abraj_hypermarket/Core/Utils/Constants/Colors.dart';
import 'package:abraj_hypermarket/Views/Widgets/Custom_Category.dart';
import 'package:abraj_hypermarket/Views/Widgets/Custom_Search_TextField.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      color: kveryWhite,
      height: h,
      width: w,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Categories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: h * .02,
          ),
          const CustomSearchTextfield(),
          SizedBox(
            height: h * .02,
          ),
          Container(
            height: h * .69,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(direction: Axis.horizontal, spacing: 10, children: [
                    CustomCategory(
                      color: kSecondary,
                      image:
                          'https://i.pinimg.com/564x/2b/91/bf/2b91bf4e15fb5fa9c80b4b3fd4fa573a.jpg',
                      categoryTitle: 'Meats',
                    ),
                    CustomCategory(
                      color: kRed,
                      image:
                          "https://i.pinimg.com/564x/76/87/57/76875796327ca3810a00f9fb83c096dd.jpg",
                      categoryTitle: 'Bakery',
                    ),
                    CustomCategory(
                      color: kSecondaryLight,
                      image:
                          'https://i.pinimg.com/564x/f3/59/aa/f359aa2dd459117c1abb0c9e2c6eb79d.jpg',
                      categoryTitle: 'Canned food',
                    ),
                    CustomCategory(
                      color: kTertiary,
                      image:
                          'https://i.pinimg.com/564x/79/6c/34/796c34906c9111f02f41a319298a261b.jpg',
                      categoryTitle: 'Drinks',
                    ),
                    CustomCategory(
                      color: kbrown,
                      image:
                          'https://i.pinimg.com/564x/70/a5/43/70a5432f7f8fe40dec7cbf5f25ee1f33.jpg',
                      categoryTitle: 'Fruits',
                    ),
                    CustomCategory(
                      color: kGreyLight,
                      image:
                          'https://i.pinimg.com/564x/9a/32/51/9a3251e176544a068d5d6c9f46d51a8e.jpg',
                      categoryTitle: 'Vegatables',
                    ),
                    CustomCategory(
                      color: kRed,
                      image:
                          'https://i.pinimg.com/564x/62/a8/bb/62a8bb4d75415ae17107c346d56abacc.jpg',
                      categoryTitle: 'Frozen',
                    ),
                    CustomCategory(
                      color: kSecondaryLight,
                      image:
                          'https://i.pinimg.com/564x/c5/d0/00/c5d0004d6b0516122a8bb508678e0caf.jpg',
                      categoryTitle: 'Sea food',
                    ),
                    CustomCategory(
                      color: kGrey,
                      image:
                          'https://i.pinimg.com/564x/43/31/26/433126de0f6e345bab5d1ab733bf5064.jpg',
                      categoryTitle: 'Grocery',
                    ),
                     CustomCategory(
                      color: kbrown,
                      image:
                          'https://i.pinimg.com/564x/9d/25/93/9d2593780fe22eba7acf1ea6e9e57110.jpg',
                      categoryTitle: 'desserts',
                    ),
                    CustomCategory(
                      color: kPrimaryLight,
                      image:
                          'https://i.pinimg.com/736x/05/16/f6/0516f63459fb057f63f666ee3c0c97e0.jpg',
                      categoryTitle: 'Snacks',
                    ),
                    CustomCategory(
                      color: kTertiary,
                      image:
                          'https://i.pinimg.com/564x/e4/c7/77/e4c7779567bdd86532aae01eefbac6a8.jpg',
                      categoryTitle: 'Home care',
                    ),
                    
                     
                  ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
