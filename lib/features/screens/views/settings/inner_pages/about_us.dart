import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('About Puss Puss'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: Msizes.xs, horizontal: Msizes.xxl),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(children: [
              TextSpan(
                  text:
                      "At Puss Puss, we've embarked on a unique crypto journey that marries the world of cryptocurrency with the playful rivalry between cats and dogs. We are a community-driven project that's all about having fun while making a positive impact on the lives of cats and dogs. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: 'Our Mission \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Our mission is simple yet powerful: to create a cryptocurrency that celebrates the joy of crypto while contributing to animal welfare. We're passionate about giving back and helping those who can't help themselves. That's why a portion of every Puss Puss transaction goes directly to support animal welfare charities. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: 'Community-First \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Puss Puss thrives on our vibrant and supportive community. We're not just crypto enthusiasts; we're cat and dog lovers, meme aficionados, and supporters of charitable causes. Together, we're making a difference while having a great time. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: 'Transparency and Security \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "We take security seriously. Puss Puss operates on a secure blockchain, and your data and privacy are our top priorities. Our transparent approach ensures that you can always track your Puss Puss transactions and contributions to our charity fund. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: 'Join Us \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "We invite you to join the Puss Puss community, whether you're a cat lover, a dog enthusiast, or someone who believes that crypto can be both entertaining and impactful. Together, we're turning your purrs and barks into positive change. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: 'Contact Us \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "If you have questions, ideas, or simply want to connect with our team, don't hesitate to reach out. We're here to make your Puss Puss experience enjoyable and memorable. \n",
                  style: Theme.of(context).textTheme.labelLarge),
            ]),
          ),
        ),
      ),
    );
  }
}
