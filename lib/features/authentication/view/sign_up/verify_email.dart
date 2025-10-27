import 'package:ecommerce_app/common/widgets/success_screen/success_screen01.dart';
import 'package:ecommerce_app/features/authentication/view/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Images
            Image(
              width: THelperFunctions.screenWidth()* 0.6,
              image: const AssetImage(TImages.verifyEmail)),
            const SizedBox(height: TSizes.spaceBtwSections),
            ///Titles and Subtitles
            Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('Sahil@gmail.com', style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen01(
                image: TImages.emailVerifySuccess,
                title: TTexts.yourAccCreatedTitle,
                subtitle: TTexts.yourAccCreatedSubtitle,
                onPressed: () => Get.to(() => const LoginScreen()),
              )), child: Text(TTexts.tContinue))
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),
            )
          ],
        ),),
      ),
    );
  }
}
