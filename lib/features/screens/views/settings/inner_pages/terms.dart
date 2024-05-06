import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Terms of Service'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: Msizes.xs, horizontal: Msizes.xxl),
          child: Column(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          "This Terms of Service was last updated on 13th February 2024.\n",
                      style: Theme.of(context).textTheme.labelSmall),
                  TextSpan(
                      text: ' \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '1. Objective and Application Scale \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text:
                          '● These Terms of Service aim to define the rights and obligations between the user and the member and the service provider, Pussspuss. '
                          '(hereinafter the “Company”), regarding the entire service (see the Definition '
                          'of Terms in Article 2 Clause 1,hereinafter the “Pussspuss Service”) and '
                          'explain what is applied by using the service of a company provided on a third '
                          '- party website or the platform.\n'
                          '● Members recognise that they are adults with legal ability to use the '
                          'service by using Pussspuss, and they are considered to fully understand the '
                          'terms and conditions of this use and agree to all items in the Terms of '
                          'Service. If a user or member has no legal ability to use Pussspuss Service or '
                          'does not agree with these terms of use, he or she must stop any actions that '
                          'access or use Pussspuss Service. \n'
                          '● The member agree that when using the Pussspuss Service, all '
                          'services may be stopped and changed at any time, depending on the '
                          'blockchain network, technology, environment, and all matters. When using '
                          'the Pussspuss Service or service directly connected to Pussspuss, it is '
                          'considered to be agreed to the contents specified in this document',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' \n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '2. Definition of Terms \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text:
                          '● ”Pussspuss” refers to each services on the following items provided by '
                          'the Pussspuss website (www.pussspuss.org) and Pussspuss app. \nPussspuss is a mobile mining and social application based on blockchain '
                          'technology provided by the company. Please refer to Article 3 Clause 2 for '
                          'details. '
                          '\nWhitepaper: Whitepaper is provided to find information about the services '
                          'offered by the company as well as details about digital assets such as '
                          'Pussscoin etc. \n'
                          '● “Member” refers to a person who linked his/her own Google or Apple '
                          'account with the procedures, making a Nickname, required by the Company '
                          'and using Pussspuss Service.\n'
                          '● “Digital Asset” refers not limited to blockchain technology but all blockchain '
                          'based items or data including cryptocurrency, game token, coin, NFT and '
                          'other derivative digital assets etc.\n'
                          '● “NFT(Non-fungible Token)” refers to any digital asset on blockchain that is '
                          'not mutually interchangeable with other tokens. Within the Service, certain in-app items are provided as NFT.\n'
                          '● “Cryptocurrency” refers to coin (cryptocurrency issued based on '
                          'independent blockchain network mainnet) and token (cryptocurrency issued'
                          'on mainnet such as open public chain without independent blockchain '
                          'network mainnet).\n'
                          '● ”Pusss Coin” is a digital asset issued on the blockchain Mainnet and can be '
                          'used within services based on the blockchain Mainnet of Pussspuss.\n'
                          '● ”Pussspuss app" refers to the integrated blockchain-based services '
                          'provided by Pussspuss, including other future services. Within the Pussspuss '
                          'app, users can engage in various services such as transfer and exchange of '
                          'Pusss Coin, and access to blockchain wallets.\n'
                          '● ”Mnemonic key" refers to a set of 12 words that corresponds 1:1 to the '
                          'wallet address within Pussspuss. It is a crucial element for conducting all '
                          'wallet signatures. As the mnemonic key holds the signing authority, if it is '
                          'exposed to others, they can perform valid signatures such as transferring '
                          'tokens. Therefore, it requires special attention and careful handling',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' \n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '3. Services \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text:
                          'The Company offers a variety of services which may include purchasing, '
                          'trading or exchange contents. To interact with our Services, a user and '
                          'member must have a registered account registered in the Pussspuss app. '
                          'Product information, pricing and availability of products listed in the'
                          'Pussspuss app are subject to change at all times.'
                          '\n\n● Detailed Guide Terms by Services'
                          '\nPrior to using the Pussspuss Service, please read carefully the Detailed '
                          'Guide Terms by Services. Proper use and precaution will be provided when a '
                          'user or member uses the Pussspuss Service. Digital assets may be required '
                          'for use of some services and fees may occur depending on the service use.'
                          'When the user or member uses Pussspuss Service or service directly '
                          'connected to Pussspuss, please be aware that the user or member agrees to '
                          'the precautions, detailed guide terms etc. that the Service provides. Due to '
                          'the characteristics of the blockchain technology, used digital assets etc. such '
                          'as transactions occurred with purchase etc., cannot be returned.'
                          '\n\n● Pussspuss'
                          '\nThe company offers online services for mobile apps, games and social content'
                          'through web or applications based on the blockchain mainnet. to use '
                          'Pussspuss service, information such as google or apple account information,'
                          'mnemonic key, and private key is required. the company does not separately'
                          'save, manage password etc., it is technically impossible for company to '
                          'restore such. therefore, to use Pussspuss service, the user is responsible for'
                          'storing, and managing all information required to use Pussspuss service and '
                          'the company is not liable for restoring if the user lost such information. the'
                          'digital asset management includes but is not limited to store, transfer, '
                          'exchange, trade, financial service and the service may expand through an '
                          'update etc. the company does not guarantee completeness of integrity of '
                          'services that include digital asset storing, sending, exchanging, trading,'
                          'financial services etc. and does not guarantee loss or rewards occurred'
                          'through the service. a member agrees that all services may suspend or '
                          'change at all times depending on the blockchain network, technology, '
                          'environment, and several circumstances. when using the service, it is '
                          'considered to be agreed to the contents specified in this document. the tax'
                          'treatment of digital asset transactions is uncertain, and it is the member’s '
                          'responsibility to determine what taxes, if any, arise from these transactions.'
                          'members are solely responsible for reporting and paying any applicable taxes '
                          'arising from staking through the company service and all related'
                          'transactions, and acknowledge that the company does not provide'
                          'investment, legal, or tax advice to a member in connection with such election '
                          'to participate. a member should conduct their own due diligence and consult '
                          'advisors before making any investment decision including whether to '
                          'participate in service and related transactions.',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' \n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '4. Use of Services \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '● Effect and modification of Terms of Service\n'
                          'The Company, if deemed necessary, can modify these Terms of Service to'
                          'the extent that it does not violate the relevant laws and regulations. Any'
                          'modified contents shall be announced or notified by Company via electronic '
                          'methods, including, but not limited to : email address, electronic notice in the'
                          'Service or pop-up message. Please note that a user or member '
                          'acknowledges and accepts that these Terms of Service and/or the Service '
                          'may be amended, modified, or altered at any time without a notice at '
                          'discretion of the Company. Continued use of the Service after any '
                          'modifications of these Terms of Service shall constitute the user or members '
                          'consent and acceptance of any such changes, modifications, or alterations. If '
                          'a user or member does not agree to the revised Terms of Service, the user or '
                          'member may terminate the Service Agreement through discontinuation of use '
                          'of Service or withdraw membership at any time. The date of the most recent '
                          'modifications will be indicated at the top of these Terms of Service.'
                          '\n\n● Registration\n'
                          'Those who wish to be a Member must complete registration according to the '
                          'Pussspuss Service registration procedure as below to use the service. All '
                          'responsibilities are bound to the User for registering with wrong ID, password '
                          'etc. If a Member mistakenly selects a Google or Apple account for account'
                          'creation, all responsibility lies with the Member. The PIN number and '
                          'mnemonic key entered during account creation are not stored or managed '
                          'separately, and Company cannot provide assistance in case of loss.'
                          '\n\na) Pussspuss Service Registration Procedure'
                          '\n- Install Pussspuss application'
                          '\n- Signup or login with social media account (Google, Apple)'
                          '\n- Enter referral code (optional)'
                          '\n- Set Nickname (minimum 4 characters, maximum 15 characters, alphanumeric)'
                          '\n- Pussspuss Service account created'
                          '\n\nb) Wallet creation process'
                          '\n- Install Pussspuss application'
                          '\n- Created Pussspuss Service account'
                          '\n- [Wallet] - [Create New Wallet or Restore Existing Wallet]'
                          '\n- Issue Mnemonic Key'
                          '\n- Register Mnemonic Key'
                          '\n- Wallet created'
                          '\n\n● User and Member’s Consent and Negligence'
                          'By using the Company’s Service, user or member agree with following '
                          'conditions under the applicable law:'
                          '\n- User or member has all necessary knowledge to deal with digital '
                          'items and/or Blockchain-based systems, have a full understanding of their'
                          'framework, are aware of all the merits, risks and any restrictions associated'
                          'with digital assets.'
                          '\n- User or member will neither use the Service for any illegal activity '
                          'nor shall be engaged in any illegal activity.'
                          '\n- A user or member solely controls their credentials (email address, '
                          'password or other information provided for the purpose of the Service use) '
                          'and does not act on behalf of any third party.'
                          '\n- To ensure a healthy service environment, each member is required '
                          'to use only one account for accessing the service. If a Member is found to be'
                          'using multiple accounts, the Company reserves the right to take measures to '
                          'restrict the service usage on those accounts. Please note that the usage of'
                          'multiple accounts may lead to consequences such as service restrictions or '
                          'other actions taken by the Company. It is important to comply with this policy'
                          'and maintain a fair and equitable service environment for all users.'
                          '\n- To provide better Service, the Company may display in the Service '
                          'Page or send out via email various information including notices, admin '
                          'messages and other advertisements regarding use of the Service. If a user or '
                          'member does not wish to receive such email, please contact our customer'
                          'service at contact@pusspuss.com'
                          '\n\n● Warranty'
                          '\nThe service may contain contents of the company’s partners, vendors, game '
                          'developers, etc. and/or links to third-party websites and services. such '
                          'services and/or links are provided for users’ convenience, and the company'
                          'does not guarantee, suggest or imply the safety of any third-party website or'
                          'the legality or conformity of any such third-party service. the company is not'
                          'responsible for maintaining any materials referenced from another site, and '
                          'makes no warranties, nor endorsement for that site or respective service. the'
                          'company assumes no obligations in the event of any damage or loss, or any '
                          'other impact, directly or indirectly resulting from the use of any content, goods'
                          'or services available on or through any such third-party services and'
                          'resources. please also note that these services may have their own policies.'
                          'the company is not responsible nor liable in any way to you or any third party'
                          'in respect of those policies.'
                          '\n\n● Updates'
                          '\nThe Company may deploy or provide patches, updates, upgrades, content or'
                          'other modifications to the Services for reasonable purposes. These updates'
                          'may result in the Services being temporarily unavailable. In certain'
                          'circumstances, we may suspend, withdraw or disable the Service for longer'
                          'periods while we deploy these updates. Service suspension due to any of the'
                          'causes shall be notified or announced through email or pop-up message from'
                          'the Service. Any causes that the Company is unable to predict, nor control'
                          'shall be an exception of prior notification or announcement. However, even'
                          'for such exceptional causes, the Company shall exert its utmost effort to'
                          'recover the Service at the earliest possible time.'
                          '\n\n● Naming Policy'
                          '\nNaming Policy is applicable to all names selected by users in the Service'
                          'provided by the Company. Generally, all IDs can be created without any'
                          'restriction. However, the names that violate the naming policy shown below'
                          'can be arbitrarily deleted or changed at the sole discretion of the Company.'
                          '\n- Any form of name that is offensive to others (including, but not'
                          'limited to, abuse, slander, criticism, violent words)'
                          '\n- A name that is anti-social and contrary to applicable laws'
                          '\n- A name related to illegal activities'
                          '\n- A name that slanders or defames specific group, race or religion'
                          '\n- A name that may invade the trademark rights of other third parties'
                          '\n- A similar name that impersonates another user'
                          '\n- A name deemed to have advertising intent (including the purpose of'
                          'promotion and profit of a specific organization)'
                          '\n- A name related to Pussspuss and Pussspuss Service etc. (A name'
                          'that may mislead service provision of the Company. Examples include'
                          'Pussspuss Team, Administrator, Operator, assistant and NPC impersonation)'
                          '\n- A name that slanders or defends a specific politician or political party.'
                          '\n- Other names that may impede healthy Service operation.'
                          '\nThe Company may take prompt action in accordance with the Naming Policy'
                          'on names that may not be on the list above, but may cause discomfort to other users'
                          '\n\n● Fraud Policy'
                          '\nFraudulent activity within the service refers to any activity that intentionally'
                          'deceives other users for profit. The Company may restrict fraudulent users to'
                          'create a healthy Pussspuss Service environment. Recovery measures for'
                          'damages incurred by fraudulent activity are not provided, for such damage is'
                          'caused by personal carelessness and negligence.'
                          '\n\n● Account Theft Policy'
                          "\n- Account theft refers to any activity that damages a member's"
                          'account information (including, but not limited to, Pussspuss google or apple'
                          'id, password, email, asset, private key, recovery phrase, mnemonic key etc.)'
                          'by extortion of information registered in the account.'
                          '\n- account theft is a violation of applicable laws and regulations, and'
                          'the company is not responsible for any civil or criminal actions that may occur'
                          'internally or externally to users in such violation. in addition, if it is confirmed'
                          'that the personal information of another user has been used illegally without'
                          'consent of the user, the use of service of all accounts related to account theft'
                          'may be restricted.'
                          '\n- in the case of account theft, recovery measures for incurred'
                          'damages are not provided, for such account theft is fully attributable to the'
                          'user who has failed to fulfil own obligation to protect personal information.'
                          "\n\n● Failure Recovery Policy"
                          '\nDigital assets that have been lost due to technical errors or bugs while using'
                          'the Service will be recovered to the extent to which the Service is not'
                          'overwhelmed, after record confirmation. However, changed data attributed to'
                          "personal carelessness and negligence of the user or member cannot be recovered."
                          "\n\n● Protection and Use of Personal Information"
                          "\nThe Company, pursuant to the related law, strives to protect member’s"
                          "personal information, and complies with the related law and Company’s"
                          "Privacy Policy regarding protection and use of Personal Information. On the"
                          "contrary, excluding the Service provided by the Company, the Company’s"
                          "Privacy Policy does not apply to the linked services and such linked services"
                          "are bound to the service provider’s Privacy Policy. Pursuant to the"
                          "characteristics of the Service, introductory information such as nickname,"
                          "character picture which are irrelevant to the member’s personal information"
                          "may be disclosed. The Company does not provide member’s personal"
                          "information without consent of the account holder unless requested by the"
                          "national institutions to abide by the related law. The Company is not"
                          "responsible for damage done with exposure of personal information due to"
                          "attributable reasons of the member.",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' \n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '5. Obligations of Contracting Parties \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: 'The following activities are prohibited'
                          "\n- Inappropriate or unjustifiably use of other user or member’s account and password."
                          '\n- Actions that disrupt the operation of the service with multiple accounts.'
                          '\n- Violate or infringe other rights of the Company or a third-party including copyright.'
                          '\n- Cause malfunction of equipment, and/or destroy and disrupt information related to the Service.'
                          "\n- Collect, store and/or disclose other member's personal information."
                          '\n- Circulate false information to provide oneself or others with proprietary benefits, or to damage others.'
                          '\n- Publish any information (including computer program) prohibited by the relevant laws and regulations.'
                          "\n- Impersonate any officer or administrator of the Company or Partners, or illegally use another user’s name."
                          '\n- Other Illegal acts or any act that impedes operation of the Service.'
                          '\n- The management and responsibility of protection of the private key,'
                          '  log in account, log in password, private key password, mnemonic key, and,'
                          ' recovery phrase (collectively “generated information”) related to the Service'
                          ' of Pussspuss, such as digital asset transfer, swap etc. is with the user and'
                          " the member. It should not be used by a third party."
                          "\n- If the user or the member’s generated information has been stolen,"
                          " exposed, lost, or damaged, the Company can’t provide any help as per"
                          ' characteristics of decentralised service.'
                          '\n- If the user or the member has lost an access to their Pussscoin or'
                          ' generated information and did not separately save it in the backup and lost'
                          'access to all previously accessed digital asset, the responsibility of such'
                          'result is solely with the user and the member and acknowledge and agree '
                          'that the Company is not responsible for it.'
                          '\n- The lost digital asset can’t be returned.'
                          '\n- Unless a user or member abides by the relevant laws and'
                          ' regulations, these Terms of Service and all policies of the Company, his/her'
                          ' use of the Service and online activities may be investigated; his/her use of the'
                          ' Service may be temporarily or continuously suspended',
                      style: Theme.of(context).textTheme.bodySmall),
                ]),
              ),
              DataTable(
                showCheckboxColumn: false,
                columnSpacing: 13,
                horizontalMargin: 1,
                dataRowMinHeight: 45,
                dataRowMaxHeight: 130,
                dataTextStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 13.5),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Activity ',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Penalty',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Contents Abuse / Use of Bug')),
                      DataCell(Text(
                          'Impacting the system / operations through abusive contents and use of bugs in Pussspuss Service')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Impersonating a member of the Company')),
                      DataCell(Text(
                          'The act of confusing other users or any such attempt through impersonation')),
                      DataCell(Text('Permanent Account Suspension')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Fraudulent Activity')),
                      DataCell(Text(
                          'Any clearly identified attempt to deceive other users to gain improper advantage')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Account Theft')),
                      DataCell(Text(
                          'Accounts that have traded or hold assets reported for account theft')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Multi-account Usage')),
                      DataCell(Text(
                          'Running multiple accounts, disrupting the functioning and operation of the system')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('False Report')),
                      DataCell(Text(
                          'Falsely reporting account theft and fraudulent activity/ defective users with false information')),
                      DataCell(Text(
                        '1st: 10 - 30 days Suspension \n2nd: Permanent Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ID Abuse')),
                      DataCell(Text(
                          'Creating ID that is contrary to the applicable laws and social order, abusive language and obscenity')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                          Text('Use and Dissemination of Illegal Programs')),
                      DataCell(Text(
                          'Impacting Pusspuss service via the use of illegal software/hardware not provided by Pussspuss')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Abnormal Service Access')),
                      DataCell(Text(
                          'Abnormal access confirmed by monitoring and system')),
                      DataCell(Text(
                        'Permanent Account Suspension',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Interfering with Operation and Use of Service')),
                      DataCell(Text(
                          'Disregarding warnings or interferance and any act that deliberately interfers with service use of other users')),
                      DataCell(Text(
                        '1st: 10 - 30 days Suspension \n2nd: Permanent Suspension',
                      )),
                    ],
                  ),
                ],
              ),
              Divider(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          "- The application of the above suspension may be adjusted at the discretion of the Company depending on the nature of each case."
                          '\n- In the case of violations of multiple policies, the highest penalty of the violations, or the aggravation of penalties can be applied.'
                          '\n- Second or higher levels of penalty may be applied to users who are conducting uncivil behaviours in Pussspuss Service or interfering with the order of the Service.'
                          "\n- In cases that are not specifically stated in the above suspension, if an act is determined to cause/possibly cause serious issues in/outside of pussspuss service, the use of the service may be restricted in accordance with the company’s terms of service.",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: "\n\n● User Responsibility"
                          "\nThrough use of the Service, user and member are deemed to have fully agreed that they are solely responsible for the use of login and password of their account, protection of any registration data provided for account creation, and for any actions conducted during account usage. A User and member shall not share generated information such as account related to the Service, password, recovery phrase, mnemonic key, and private key to anyone and shall manage and protect it by him/her self. A user and member hereby agree with the following conditions related to the in-game item and digital asset."
                          "\n-	The Service provided by the Company refers to the inclusive entirety of the Company provided website, wallet and such, which is accessible through PC, tablet, mobile or any electronic device. The Company is not responsible for any in-game and/or digital assets related."
                          "\n- The responsibility of the Company is only with the service operation and management and it does not act as an intermediary of seller or buyer of in-game item and/or digital asset. The user and the member are fully and directly responsible for trade between parties and shared information."
                          "\n-	The Pussspuss WALLET password, mnemonic key, and private key are not saved anywhere and those are information that Member must manage. All transactions are processed by signature by the Member. Thus, mnemonic key, and private key required for transaction signature must be managed by the Member and strengthen its security. Member is responsible for the entire management."
                          "\n\n● Use Restrictions in High-Risk regions"
                          "\n- To prevent illegal activities, including money laundering, while using Pussspuss Services, the Company reserves the right to designate high-risk regions in accordance with international guidelines such as OFAC Sanctioned Countries, and restrict access to Pussspuss Services in those regions. The following regions have been designated as high-risk regions and access to Pussspuss Services is restricted in those regions. This list may be subject to change to comply with international guidelines or regulations."
                          "\n- Cuba, Iran, North Korea, Russia, Syria, regions of Ukraine (Crimea, Donetsk, Luhansk), The Balkans, Belarus, Burma(Myanmar), Central African Republic, Congo, Ethiopia, Iraq, Lebanon, Libya, Sudan, Venezuela, Yemen, Zimbabwe",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '6. Service Termination \n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text:
                          "If a member wishes to terminate the Service, the member may withdraw membership in accordance with procedures set by the Company through membership withdrawal function."
                          '\n- Upon withdrawal, a member cannot sign-in to Pussspuss Service and use of the Service is restricted.'
                          '\n- Upon withdrawal, all information related to Pussspuss Service is deleted and cannot be recovered.'
                          "\n- All Pusspuss coins held by the user will be permanently deleted (burned) upon withdrawal before the on-chain wallet feature is activated."
                          '\n- After the on-chain wallet feature is activated, member will receive Pusspuss coin before withdrawing.'
                          '\n- If there are any pending transactions or activities within Pussspuss, the withdrawal request will not be possible. Please complete all pending transactions before proceeding with the withdrawal.'
                          '\n- Upon withdrawal, you cannot re-register with the same email address.'
                          '\n- Upon completion of termination, a member’s information will be removed from the Service. However, due to technological characteristics of Blockchain, data related to Blockchain cannot be deleted.'
                          '\n- For Pusspuss WALLET that directly manages the mnemonic key and private key, all authorities such as member registration, termination, signature are with the member and a member can terminate the Service by deleting Pusspuss WALLET and mnemonic key and private key without separate termination process.',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '7. Copyright\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '● Property of Copyright'
                          "\nThe copyright and the other intellectual property of the entire Pussspuss"
                          "Service and contents in the Service made by the Company belongs to the Company. The user and the member must not use information belonging as an intellectual property of the Company or a provider acquired during service use provided the Company by replicating⋅transmitting etc. (includes editing, publishing, performing, distributing, broadcasting, writing derivative content etc.) for profit or make other use it without prior consent by the Company or the provider. The Company, with the below methods and conditions, permits the user and the member to use communication, image, sound, and all materials and information (the “User Contents”) including chat texts related to the Service or displayed in the Service uploaded or sent by the member or other user through the Service."
                          '\n- Using, changing in form of editing and modifying such User Contents (can be used in any kind of form such as publication, replicating, performing, transmitting, distributing, broadcasting, writing derivative content etc. and has no restriction of use period or location).'
                          "\n- Shall not do acts such as selling, renting, and transferring User Contents for the purpose of trading without prior consent of the user who created the User Content."
                          "\n- The Company does not use member’s User Contents which are not displayed within the Service or integrated with the Service (e.g. posts uploaded in users’ bulletin) and the User or the member can delete such User Contents anytime."
                          "\n- The Company, with its discretion, can delete or transfer posts uploaded or submitted in the Service by the user or the member without prior notice if it is confirmed as a violation of Article 5 Obligations of Contracting Parties and may reject its application."
                          "\n- The user or the member whose profit has been invaded legally due to posted information in community, bulletin operated by the Company can submit a deletion of such information or refutation to the Company. The Company shall promptly act with necessary action and notify the applicant."
                          '\n\n● Obligation of the User and the Member'
                          "\nThe user and the member cannot replicate, transmit, distribute, use the Service or all materials included without written prior consent of the Company and cannot use the Service or all materials included for the commercial purpose of an individual. Thus, the user and the member cannot lease, sell below license, transfer the Service or inclusive materials. The user and the member is prohibited from deleting, hiding, or editing content, property, intellectual property or any or all rights related to the Service. During use of the service, the user and the member must not display the third party’s product or the Service such as the Company or third service provider’s name, brand, etc. or have the same display with the third party’s business or generate or use similar display."
                          "This article remains in effect during the service operation of the Company and applies constantly after end of service use or termination of the membership.",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '8. Indemnification and Immunity\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '● Indemnification for Damage'
                          "\nThe Company or user and the member have a responsibility to indemnify the damage if one violates the terms and does damages to the other party unless it was intentional or negligence. If the Company signed a partnership with a separate service provider and provides the separate service to the member and the user or the member agrees with the terms and conditions of this separate service and if the separate service provider does damage to the individual with intention or by negligence, the separate service provider has responsibility for the damage occurred."
                          "\n\n● Company’s Immunity"
                          "\nThe Company is not responsible for not being able to provide service due to natural disaster or force majeure of such level. The Company is not responsible for damages caused by other reasons such as remuneration, replacement, regular inspection, and construction of service facilities unless it was the company's intentional or negligence. The Company is not responsible for the failure of using the service due to the intentional or negligence of the user or member unless the user or member has an inevitable or legitimate reason. The Company is not responsible"
                          "regarding the reliability and accuracy of information and data etc. published by the user or member in relation to the service unless intentional or with negligence. The Company is not obliged to intervene in transactions or disputes caused by the user or other members or others, and is not responsible for damages. The Company is not liable for damages incurred to the users or members regarding the use of the services provided. Unless, it is the company's intentional or negligence. The Company is not responsible when users or members did not earn expected profit or loss while using the Service. The Company is not responsible for the price fluctuations of digital assets etc. of the user and the member. The Company is not responsible for issues occurring with personal information management such as Google ID, Apple ID, password, email, mnemonic key, private key, etc. due to negligence of the user or member. The Company is not responsible if the function of the service cannot be used due to changes in electronic devices such as PCs and mobile devices, changes in mobile number, changes in the operating system (OS) version, changes in overseas roaming, and telecommunications company, unless it is the company's intentional or negligence. The Company is not responsible if the user or the member deleted the account information provided by the Company, unless it is the company's intentional or negligence. The Company is not responsible for the loss occurred during the service use by a guest who is not a member, unless it is the company's intentional or negligence.",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '9. Others\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextSpan(
                      text: '● Governing Law and Jurisdiction'
                          "\nThese Terms of Service shall be governed by Republic of Korea law and shall be interpreted, governed and construed accordingly. User and member consent to designate the courts of Republic of Korea as the competent court for any disputes or lawsuits arising in relation to these Terms of Service or Privacy Policy."
                          '\n\n● Language'
                          "\n- User and member agree that even in the event that the translated version of the English Terms of Service is provided, the translated version is provided only for convenience of the user and member, and solely the English Terms of Service shall apply to the relation between the user and the Company."
                          "\n- In the event of discrepancies between the English Terms of Service and any translated version of the Terms of Service, the English Terms of Service shall be prioritized."
                          '\n\n● Possibility of Separation'
                          "\nIf any part of these terms of service is found illegal, invalid, or unprecedented in relevant local laws or jurisdictions of related courts, the relevant provisions are abolished and the remaining terms and conditions are continuously valid.",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
