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
          padding: EdgeInsets.symmetric(vertical: Msizes.xxs),
          child: Column(
            children: [
              ExpansionTile(
                title: Text('1. What is Puss Puss?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "Puss Puss is a cryptocurrency created to celebrate the playful rivalry between cats and dogs. It provides a fun and community-driven space for cryptocurrency enthusiasts and animal lovers. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('2. How can I get Puss Puss?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "You can acquire Puss Puss by mining on your mobile device for free. Disclaimer - Puss Puss is not free money and this is only at the early stage, of which 20% of total supply would be distributed to early users. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title:
                    Text('3. Can I use Puss Puss for everyday transactions?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "Absolutely! Puss Puss is designed for everyday use with fast transaction times and low fees, making it suitable for micro-transactions and daily spending. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    '4. How does Puss Puss support animal welfare charities?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "A portion of transaction fees goes directly to our charity fund, which supports animal welfare organizations. By using Puss Puss, you're making a positive impact on the lives of cats and dogs. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('5. What is the long term vision for Puss Puss?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "Our long term vision is to continue fostering a lively and competitive community while expanding the real-world applications of Puss Puss. We're exploring the development of a payment platform for businesses and other exciting use cases. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('6. How secured is Puss Puss?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "Puss Puss takes security seriously. We've implemented robust security measures to protect both our network and our users, ensuring a safe and enjoyable experience. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    '7. Is Puss Puss just a meme or a serious cryptocurrency?'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Msizes.sm),
                    child: Text(
                      "Puss Puss embraces a playful and meme-inspired theme, but it's also a serious cryptocurrency with real-world utility. We're dedicated to providing a cryptocurrency that's both fun and functional. \n",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Msizes.sm),
            ],
          ),
        ),
      ),
    );
  }
}
