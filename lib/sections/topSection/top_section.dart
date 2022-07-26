import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveness.dart';
import 'package:my_portfolio/sections/topSection/components/glass_content.dart';
import '../../constants.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      desktop: _buildDesktop(size),
      tablet: _buildMobile(size),
      mobile: _buildMobile(size),
    );
  }

  Container _buildDesktop(Size size) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            const Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobile(Size size) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: size.height),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 0,
              child: IconButton(
                iconSize: size.width * 0.05,
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: GlassContent(size: size),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
