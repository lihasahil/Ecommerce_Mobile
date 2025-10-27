import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../../styles/spacing_styles.dart';

class SuccessScreen01 extends StatelessWidget {
  const SuccessScreen01({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
  final String image, title,subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              ///Image
              Image(image: AssetImage(image),
              width: THelperFunctions.screenWidth() *0.6),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Title and Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(subtitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
