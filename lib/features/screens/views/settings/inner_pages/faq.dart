import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('FAQ'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: Msizes.xs, horizontal: Msizes.xxl),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(children: [
              TextSpan(
                  text: '1. What is Puss Puss \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Puss is a cryptocurrency created to celebrate the playful rivalry between cats and dogs. It provides a fun and community-driven space for cryptocurrency enthusiasts and animal lovers. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '2. How can I get puss? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "You can acquire puss by mining on your mobile device for free.disclaimer puss is not free money. this is only at the early stage which 20% would be distributed to early users. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '3. Can I use puss for everyday transactions? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Absolutely! Puss is designed for everyday use with fast transaction times and low fees, making it suitable for micro-transactions and daily spending. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '4. How does puss support animal welfare charities? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "A portion of transaction fees goes directly to our charity fund, which supports animal welfare organizations. By using puss, you're making a positive impact on the lives of cats and dogs. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '5. What is the long-term vision for puss? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Our long-term vision is to continue fostering a lively and competitive community while expanding the real-world applications of puss. We're exploring the development of a payment platform for businesses and other exciting use cases. \n",
                  style: Theme.of(context).textTheme.labelLarge),
              TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '6. How secure is puss? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Puss takes security seriously. We implement robust security measures to protect both our network and our users, ensuring a safe and enjoyable experience. \n",
                  style: Theme.of(context).textTheme.labelLarge),
                  TextSpan(
                  text: ' \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text: '7. Is puss just a meme or a serious cryptocurrency? \n',
                  style: Theme.of(context).textTheme.headlineSmall),
              TextSpan(
                  text:
                      "Puss embraces a playful and meme-inspired theme, but it's also a serious cryptocurrency with real-world utility. We're dedicated to providing a cryptocurrency that's both fun and functional. \n",
                  style: Theme.of(context).textTheme.labelLarge),
            ]),
          ),
        ),
      ),
    );
  }
}
