
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/features/shop/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _)=>controller.updatePageIndicator(index)
          ),
          items: const [
            RoundedImage(imageUrl: TImages.promoBanner1),
            RoundedImage(imageUrl: TImages.promoBanner2),
            RoundedImage(imageUrl: TImages.promoBanner3),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < 3; i++) TCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

