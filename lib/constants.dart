import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
TextStyle heading = GoogleFonts.raleway(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

TextStyle body = GoogleFonts.lato(
  fontSize: 18,
  fontStyle: FontStyle.italic,
);

List<Map<String, String>> about = [
  {
    'question': 'WHO AM I?',
    'answer':
        "My name is Mirza Aneeb Baig. You can call me Aneeb. Iam currently a student pursuing my bachelors degree in Computer Science from FAST. I like to watch anime and read novels. I am also fond of doing DIY projects related to electric or mechanics. I can play cricket, football and a little bit of badminton, I also excercise to keep my health intact.",
  },
  {
    'question': 'THE TECHNICAL ME:',
    'answer':
        "First of all, I am a technology-hungry human. I love learning about new technologies and creating new solutions with them. This is the reason I chose Flutter as my go-to stack. Flutter is one of the fastest growing frameworks, which piqued my curiosity to see how it works. I have tried to learn flutter inside out from its architecture to its syntax. Not only this, by the end of my graduation I aim to learn many other technologies so I can create more and more solutions myself. I plan to learn Kotlin for Native Android Development ,Swift for Native IOS development, NodeJs for Backend Development. I wish to implement these technologies to create solutions to different world problems in the form of IoT devices, Artificial Intelligent systems and much more.",
  },
  {
    'question': 'NOW THE  REAL QUESTION: WHY ME?',
    'answer':
        "I go by the rules. I think a lot before starting to develop a solution, because the best solution is that fulfila all the requirements in an efficient manner. I learn and practice immediately what I just learned so that i do not forget it. Flutter is my strong hand I know Beginner to Advance level stuff about flutter. I stick to best technology practices. I completely avoid spaghetti code because, who would like to read a spaghetti. Its's for eating. I follow a schedule and keep track of time, I even have a peronal goal list and I create evryday TODOS'. I adhere to the rules and I take help with the technology such as Google Notes, Google Tasks and other productivity tools.",
  }
];

List<bool> isOpen = [false, false, false];
