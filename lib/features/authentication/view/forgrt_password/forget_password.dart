import 'package:ecommerce_app/features/authentication/view/forgrt_password/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Headings
          Text(TTexts.forgotPassword,
            style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(TTexts.forgotPasswordSubtitle,
          style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: TSizes.spaceBtwSections * 2),

          ///TextFields
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct_right)
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          ///SubmitButton
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(TTexts.submit)),
            ),
          ],
      )
        ,),
    );
  }
}
