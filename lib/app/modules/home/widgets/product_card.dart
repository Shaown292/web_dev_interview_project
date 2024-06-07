import 'package:flutter/material.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  final String? image;
  final String? productName;
  final String? originalPrice;
  final String? discountPrice;
  final int? numberOfStars;


  const ProductCard({
    super.key,
    this.image,
    this.productName,
    this.originalPrice,
    this.discountPrice,
    this.numberOfStars,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image ?? ""), fit: BoxFit.fill),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 30,
                    child: Text(
                      productName ?? "Product Namasdhjashdkjahskjde",
                      style: AppTextStyle.robotoBlackTextW400Size16,
                      overflow: TextOverflow.ellipsis,
                    )),
                Row(
                  children: [
                    Text(
                      productName ?? "\$150",
                      style: AppTextStyle.latoLightGreyTextW400Size15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      productName ?? "\$50",
                      style: AppTextStyle.robotoBlackTextW700Size18,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < numberOfStars! ? Icons.star : Icons.star_border,
                      color: AppColors.starColor,
                      size: 20.0,
                    );
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
