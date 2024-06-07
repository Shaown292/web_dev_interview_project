import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';
import 'package:web_dev_interview_project/app/modules/home/widgets/product_card.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';
import 'package:web_dev_interview_project/constant/static_text.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://via.placeholder.com/150', // Add your image URLs here
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ];
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          StaticText.productList,
          style: AppTextStyle.robotoBlueTextW700Size22,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
              child: Image.asset("assets/images/search_button.png")),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Filter bar
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF395AB8).withOpacity(0.1), //color of shadow
                      spreadRadius: 0, //spread radius
                      blurRadius: 4, // blur radius
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/filer_icon.png", scale: 4,),
                          const SizedBox(width: 10,),
                          Text(StaticText.filter, style: AppTextStyle.latoGreyTextW400Size15,),
                        ],
                      ),
                       Row(
                        children: [
                          Text(StaticText.sortBy, style: AppTextStyle.latoGreyTextW400Size15,),
                          const SizedBox(width: 5,),
                          Image.asset("assets/images/down_arrow.png", ),
                          const SizedBox(width: 20,),
                          Image.asset("assets/images/three_line.png",),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),
              /// Product show

              SizedBox(
                height: Get.height - 100,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return ProductCard(image: imageUrls[index],);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
