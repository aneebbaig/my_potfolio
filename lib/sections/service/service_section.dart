import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveness.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/services.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(
        maxWidth: double.infinity * 0.9,
      ),
      child: Column(
        children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          !ResponsiveWidget.isDesktop(context)
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ServiceCard(index: 0),
                        ServiceCard(index: 1),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ServiceCard(index: 2),
                        ServiceCard(index: 3),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      services.length, (index) => ServiceCard(index: index)),
                )
        ],
      ),
    );
  }
}
