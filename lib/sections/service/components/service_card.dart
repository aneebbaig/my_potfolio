import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveness.dart';
import '../../../models/services.dart';

import '../../../constants.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        height: ResponsiveWidget.isMobile(context) ? size.width * 0.3 : 256,
        width: ResponsiveWidget.isMobile(context) ? size.width * 0.3 : 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              //padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height:
                  ResponsiveWidget.isMobile(context) ? size.width * 0.15 : 120,
              width:
                  ResponsiveWidget.isMobile(context) ? size.width * 0.15 : 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              services[widget.index].title,
              style: TextStyle(
                fontSize: size.height * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
