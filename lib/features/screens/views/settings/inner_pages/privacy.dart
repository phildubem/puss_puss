import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: Msizes.xs, horizontal: Msizes.xxl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      text:
                          "Pusspuss and its affiliates (“we”, “our”, “us”, “the Company”) are dedicated to safeguarding the privacy and security of the information we collect and maintaining transparency regarding the methods by which we collect and process your information."
                          "This statement (the “Privacy Policy”) delineates our policies and procedures for managing the information we collect from or about you. It pertains to the Pusspuss app and online services operated by us and linked to this Privacy Policy."
                          "\nIt is imperative that you peruse this Privacy Policy alongside any additional notices we may furnish on specific occasions when we collect or process your personal data. This ensures your awareness of how and why we employ such personal data and"
                          "elucidates your rights under the relevant data protection laws."
                          "\n\n● COLLECTION OF PERSONAL DATA"
                          "\nIn this notification, “personal data” denotes any information about an identified or identifiable individual. We process the following categories of personal data from you when you utilize our Services:"
                          '\n- Contact information, such as your email address.'
                          "\n- Registration information, including authentication tokens issued by third party platforms through which you log in to sign up for the Pusspuss app (Google, Apple) and access the Services via their respective mobile apps, as well as your name and"
                          "technical information (e.g., browser type, OS, device type, IP address)."
                          "\n- Information for handling user inquiries and complaints, such as email address or name and information pertinent to user issues."
                          "\nWe obtain the above categories of information directly from you or from other sources, including users of our Services and third-party services and organizations (e.g., Google, Apple). Omission of this information hinders our ability to provide you"
                          "with all requested services, and any discrepancies in services are attributed to information omission."
                          "\nWe do not gather sensitive information (i.e., data comprising racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, genetic data, biometric data, data concerning health, or data concerning a"
                          "natural person's sex life or sexual orientation) or any data pertaining to criminal convictions and offences from you."
                          "\n\n● USE OF PERSONAL DATA"
                          '\nWe will utilize your personal data for the following purposes:'
                          "\n- To provide you with the Services. This involves opening and maintaining user accounts, facilitating the functionality of our Services, customizing the Services, and providing forum and community features."
                          "\n- To enhance the quality of our Services. This encompasses maintaining, improving, and administering our Services, including troubleshooting, data analytics, and testing."
                          "\n- To ensure the safety of our Services and users. This includes detecting users illegally utilizing our programs and otherwise preventing and responding to fraud, abuse, security risks, and technical issues."
                          "\n- To dispatch electronic correspondence. This entails sending you emails or otherwise communicating with you to manage inquiries and requests from you or to communicate about your use of the Services."
                          "\n- To comply with applicable laws and regulations. This involves using your information to ensure compliance with legal obligations (such as recordkeeping obligations), resolve disputes, enforce our contractual agreements, and establish, exercise, or defend legal claims."
                          "\n\nWe will employ your personal data based on the legal bases described in Appendix I:"
                          "\n- To perform a contract we have entered into with you;"
                          "\n- To comply with a legal obligation; or"
                          "\n- Where it is necessary for our legitimate interests (or those of a third party) and your interests and fundamental rights do not override those interests."
                          "\n\nWe may also utilize your personal data based on the following less common legal bases:"
                          "\n- To protect your interests (or someone else’s interests)."
                          "\n- Where your consent is given; or"
                          "\n- Where it is required to defend or pursue legal claims."
                          "\n\n● AUTOMATED DECISION-MAKING AND PROFILING"
                          "\nWe do not engage in profiling or other automated decision-making processes in the course of our relationship with you."
                          "\n\n● DISCLOSURE OF PERSONAL DATA"
                          "\nWe may share your personal data with third parties in the following contexts:"
                          "\n-	Disclosure to our service providers and external controllers: We may enlist third-party vendors and service providers (or “data processors”) to process your personal information for the aforementioned purposes. Our data processors operate solely in accordance with our instructions, pursuant to this policy, and are subject to appropriate confidentiality and security obligations."
                          "\n- Disclosure to external controllers: We may disclose your information to external controllers to process your personal information for the aforementioned purposes."
                          "\n- Disclosure pursuant to business transfers: We may share your information in connection with significant corporate transactions, such as the sale of a website, a merger, consolidation, asset sale, initial public offering, or in the unlikely event of bankruptcy."
                          "\n- Disclosure for legal purposes: We may also transfer your personal data to law enforcement agencies, governmental authorities, legal counsel, and external consultants in compliance with applicable data protection laws. - Disclosure with your consent: Lastly, we may share information about you with third parties when you have provided consent."
                          "\nOur services enable you to upload and share messages and other content with others. Should you choose to engage in public activities on the Services, please be advised that any information you share there can be read, collected, or utilized by other users of these areas."
                          "Exercise discretion and caution when disclosing information while participating in these areas. We are not liable for the information you opt to submit in these public areas."
                          "\nIf a recipient of your personal data is situated outside of the EU and the European Economic Area (“EEA”) in a country not recognized by the European Commission as ensuring an adequate level of data protection, we will implement appropriate measures to ensure the protection"
                          "and security of your personal data when transferred outside of your home country, in accordance with applicable data protection and privacy laws. These safeguards include data transfer agreements implementing the European Commission's Standard Contractual Clauses (a form of data"
                          "transfer agreement pre-approved by the European Commission as providing adequate safeguards for personal data). You may request a copy of such appropriate measures by contacting the company specified in the policy."
                          "\n\n● CHILDREN"
                          "\nOur services are not intended for individuals under the age of 18. We do not knowingly collect or sell any information from children, as defined by applicable law, without parental consent or as otherwise permitted by applicable law."
                          "\n\n● DATA SECURITY"
                          "\nWe have implemented appropriate security measures to prevent your personal data from being accidentally lost, used or accessed in an unauthorized manner, altered, or disclosed. Furthermore, we restrict access to your personal data to only those employees, agents, contractors,"
                          "and other third parties who necessitate such access for business purposes. We have established procedures to address any suspected data security breaches and will notify you and any relevant regulator of a suspected breach where legally required to do so."
                          "\n\n● DATA RETENTION"
                          "\nWe will only retain your personal data for as long as necessary to fulfil the purposes set out above, including for the purposes of satisfying any legal, accounting, or reporting requirements."
                          "To determine the appropriate retention period for personal data, we consider the amount, nature, and sensitivity of the personal data, the potential risk of harm from unauthorised use or disclosure"
                          "of your personal data, the purposes for which we process your personal data and whether we can achieve those purposes through other means, and the applicable legal requirements."
                          "\nBroadly, most of your data will be deleted immediately upon termination of our relationship with you. But in the following circumstances, your personal data will be retained for different set periods:"
                          "\n- Information of users with activity history and/or transaction history and/or remaining Puss in the pusspuss app - 5 years"
                          "\n- Information related to inquiries submitted to customer support - 3 years"
                          "\n- Information of users with incomplete pusspuss account creation - up to 60 days"
                          "\nNotwithstanding the above, we may keep your personal data as long as required to comply with legal or regulatory obligations to which we are subject."
                          "\n\n● YOUR DUTY AND RIGHTS IN RELATION TO YOUR PERSONAL DATA"
                          "\nYour duty to inform us of changes"
                          "\nIt is important that the personal data we hold about you is accurate and current. If you become aware of changes or inaccuracies in your information, you should inform us of such changes so that the information may be updated or corrected."
                          "\nYour rights in connection with personal data"
                          "\nYou may be entitled, in accordance with applicable law, to the following rights to:"
                          "\nRequest access to your personal data. This enables you to receive a copy of the personal data we hold about you and to check that we are lawfully processing it;"
                          "\nRequest correction and/or deletion of your personal data;"
                          "\nRequest the restriction of the processing of your personal data;"
                          "\nRequest receipt or transmission to another organization, in a machine readable form, of the personal data that you have provided to us; Object, at any time, to the processing of your personal data by us; or"
                          "\nWithdraw your consent."
                          "\nTo exercise any of your rights, please contact us by using the contact details at the end of this policy. We may need to request specific personal data from you to help us verify your identity and confirm"
                          "your right to access the personal data (or to exercise any of your other rights). This is another appropriate security measure to ensure, for example, that personal data is not disclosed to any person who has"
                          "no right to receive it.In the event that you wish to make a complaint about how we process your personal data, please contact us and we will endeavor to handle your request as soon as possible. You may lodge"
                          "a complaint with a supervisory authority if you believe our processing of your information is unlawful. If you are in the EU, you can find the supervisory authority for your country and how to contact them in"
                          "https://edpb.europa.eu/about-edpb/board/members_en. If you are in the UK, the supervisory authority is the Information Commissioner’s Office, who you can contact in https://ico.org.uk/make-a-complaint/your-personalinformation-concerns"
                          "\n\n● DATA CONTROLLER AND CONTACT DETAILS"
                          "\nThe Company is the data controller for the purposes of the EU GDPR, the UK GDPR and other applicable data protection laws. If you have any questions about this notice or wish to contact the Company regarding your personal data or concerns, you have about this notice."
                          "\ncontact@pusspusscoin.com"
                          "\n[DPO contact information]"
                          "\n\n● CHANGES TO THIS POLICY"
                          "\nWe will update this policy to reflect changes in our practices and services, and take appropriate measures to notify you of any significant changes in accordance with applicable data protection laws. When we post changes to this policy, we will revise the 'Last Updated' date at the top of this policy "
                          "\n\nAPPENDIX I"
                          "\nPurposes for Processing USER Data",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '\n',
                      style: Theme.of(context).textTheme.headlineSmall),
                ]),
              ),
              DataTable(
                showCheckboxColumn: false,
                columnSpacing: 13,
                horizontalMargin: 1,
                dataRowMinHeight: 45,
                dataRowMaxHeight: 150,
                dataTextStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 12.5),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Purpose \nof use ',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Categories of \nPersonal Data',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Basis for \nProcessing',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Providing products and services')),
                      DataCell(Text(
                          'Customer data, Identifiers, Network information, Device information, Usage data, Status of your consent, (when necessary) Information pertaining to Pusspuss account')),
                      DataCell(Text(
                        'Contract',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Identifying individual users for provision of services')),
                      DataCell(Text(
                          'Customer data, Identifiers, Device information')),
                      DataCell(Text('Contract')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Improve the quality of our service, user experiences and fix bugs')),
                      DataCell(Text(
                          'Network information, Device information, Data of usage')),
                      DataCell(Text(
                        'Our legitimate interests to improve our services',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Detecting and preventing illegal, unjust or unapproved use of service')),
                      DataCell(Text(
                          'Payment information, Identifiers, Network information, Device information')),
                      DataCell(Text(
                        'Our legitimate interests to protect our business rights and services',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                          Text('Managing inquiries and requests from you')),
                      DataCell(Text(
                          'Customer data, Device information, Data of usage, Payment information, Activity data, (when necessary) Information pertaining to pusspuss account, Customer service data')),
                      DataCell(Text(
                        'Contract, if relating to use of our services. Your consent, if another context',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Planning and managing relationship including payment processing')),
                      DataCell(Text('Payment information')),
                      DataCell(Text(
                        'Contract',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                          Text('Ensuring compliance with legal obligations')),
                      DataCell(Text(
                          'Customer data, Identifiers, Network & Device information, Status of your consent, Data of usage, Payment information, User Account Information ')),
                      DataCell(Text(
                        'Legal obligation',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                          'Solving disputes, enforcing agreement, establishing and defense of legal claims')),
                      DataCell(Text(
                          'Customer data, Identifiers, Network & Device information, Status of your consent, Data of usage, Payment information, User Account Information ')),
                      DataCell(Text(
                        'Our legitimate interests to establish, exercise and defend our legal rights',
                      )),
                    ],
                  ),
                ],
              ),
              Divider(),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "\n\nAPPENDIX II"
                        "\nInformation Collected from third parties",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '\n',
                    style: Theme.of(context).textTheme.headlineSmall),
              ])),
              DataTable(
                showCheckboxColumn: false,
                columnSpacing: 15,
                horizontalMargin: 1,
                dataRowMinHeight: 45,
                dataRowMaxHeight: 100,
                dataTextStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 12.5),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Third \nParties',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Purpose of \nUse',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Information \nCollected',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Google LLC')),
                      DataCell(Text(
                          'To set up a new account by using user’s Google account')),
                      DataCell(Text(
                        'Authentication token issued by Google',
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Apple INC')),
                      DataCell(Text(
                          'To set up a new account by using user’s Apple account')),
                      DataCell(Text('Authentication token issued by Apple')),
                    ],
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: Msizes.lg),
            ],
          ),
        ),
      ),
    );
  }
}
