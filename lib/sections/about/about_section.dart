import 'package:flutter/material.dart';
import 'package:my_portfolio/responsiveness.dart';
import '../../constants.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
        desktop: _buildMobile(size),
        tablet: _buildMobile(size),
        mobile: _buildMobile(size));
  }

  Widget _buildDesktop(Size size) {
    Icon icon = const Icon(Icons.fiber_manual_record);
    return Container(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Text('Image'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WHO AM I?',
                    style: heading,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "My name is Mirza Aneeb Baig. You can call me Aneeb. Iam currently a student pursuing my bachelors degree in Computer Science from FAST. I like to watch anime and read novels. I am also fond of doing DIY projects related to electric or mechanics. I can play cricket, football and a little bit of badminton, I also excercise to keep my health intact.",
                    style: body,
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Text(
                    'NOW THE TECHNICAL ME',
                    style: heading,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "First of all, I am a technology-hungry human. I love learning about new technologies and creating new solutions with them. This is the reason I chose Flutter as my go-to stack. Flutter is one of the fastest growing frameworks, which piqued my curiosity to see how it works. I have tried to learn flutter inside out from its architecture to its syntax. Not only this, by the end of my graduation I aim to learn many other technologies so I can create more and more solutions myself. I plan to learn Kotlin for Native Android Development ,Swift for Native IOS development, NodeJs for Backend Development. I wish to implement these technologies to create solutions to different world problems in the form of IoT devices, Artificial Intelligent systems and much more.",
                    style: body,
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Text(
                    'NOW THE  REAL QUESTION: WHY ME?',
                    style: heading,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    "I go by the rules. I think a lot before starting to develop a solution, because the best solution is that fulfila all the requirements in an efficient manner. I learn and practice immediately what I just learned so that i do not forget it. Flutter is my strong hand I know Beginner to Advance level stuff about flutter. I stick to best technology practices. I completely avoid spaghetti code because, who would like to read a spaghetti. Its's for eating. I follow a schedule and keep track of time, I even have a peronal goal list and I create evryday TODOS'. I adhere to the rules and I take help with the technology such as Google Notes, Google Tasks and other productivity tools.",
                    style: body,
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Text(
                    'MY STRONG FORTE',
                    style: heading,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: icon,
                        title: Text(
                          'Flutter Mobile and Flutter Web',
                          style: body,
                        ),
                      ),
                      ListTile(
                        leading: icon,
                        title: Text(
                          'Responsiveness and Adaptiveness',
                          style: body,
                        ),
                      ),
                      ListTile(
                        leading: icon,
                        title: Text(
                          'MVVM and MVC Model',
                          style: body,
                        ),
                      ),
                      ListTile(
                        leading: icon,
                        title: Text(
                          'Provider State Management',
                          style: body,
                        ),
                      ),
                      ListTile(
                        leading: icon,
                        title: Text(
                          'Git and Github',
                          style: body,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobile(Size size) {
    return Container(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.black,
            child: const Center(
              child: Text('Image'),
            ),
          ),
          ExpansionPanelList(
            expansionCallback: (i, isExpanded) {
              setState(() {
                isOpen[i] = !isExpanded;
              });
            },
            children: about.map(
              (val) {
                int index = about.indexOf(val);
                return ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: ((context, isExpanded) => Align(
                        alignment: Alignment.center,
                        child: Text(
                          val['question'].toString(),
                          style: heading,
                        ),
                      )),
                  body: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      val['answer'].toString(),
                      style: body,
                    ),
                  ),
                  isExpanded: isOpen[index],
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
