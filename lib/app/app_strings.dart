import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

class AppStrings {
  // ========= Cover Section =========
  static const List<String> coverText = [
    'A Front-end Developer',
    'A Flutter App Developer',
    'A Native iOS Developer',
    'A tech nerd and tech geek',
  ];

  // ========= About Section =========

  static const List<AboutDto> aboutItems = [
    AboutDto(
      title: 'Experience',
      content: '10+ Years of Work',
      icon: Icons.work_history_outlined,
    ),
    AboutDto(
      title: 'Clients',
      content: '50+ Worldwide',
      icon: Icons.people_alt_outlined,
    ),
    AboutDto(
      title: 'Projects',
      content: '25+ Completed',
      icon: Icons.fact_check_outlined,
    ),
  ];

  static const String aboutText =
      'I have been working as a software developer for over 10 years. '
      'I mainly developed Flutter applications (Android, iOS, Web Apps), '
      'iOS application using SwiftUI, and websites using WordPress and React. '
      'I have also developed backend using Node.js and Python.'
      '\n\n'
      'Teaching software development is also my side business. '
      'I had held offline and online courses about SwiftUI and iOS app development '
      'in a university in Hong Kong. Feel free to contact me for any teaching collaboration.';

  // ========= Experience Section =========
  static const Map<String, String> frontEndSkills = {
    'Flutter (Dart)': 'Experienced',
    'Swift UI': 'Experienced',
    'HTML/CSS': 'Experienced',
    'JavaScript': 'Experienced',
    'React': 'Intermediate',
  };

  static const Map<String, String> backEndSkills = {
    'NodeJS': 'Intermediate',
    'Python': 'Intermediate',
    'Docker': 'Intermediate',
    'MongoDB': 'Intermediate',
    'PHP': 'Beginner',
  };

  // ========= Project Section =========
  static const List<ProjectDto> projects = [
    ProjectDto(
      tags: ['Flutter', 'iOS', 'Android'],
      images: [],
      projectName: 'Blua Health (HK)',
      projectDescription:
          'Blua Health is Hong Kong’s first one-stop AI-powered health '
          'and wellness mobile app that enables you to assess your health status, '
          'guide your healthy lifestyle and earn points for rewards anytime anywhere.\n\n'
          '<ol>'
          '<li>eBooking - Reserve for multiple medical services</li>'
          '<li>ePharmacy - Enjoy the convenience of having your medications delivered right to your door!</li>'
          '<li>AI Healthshot - Get a quick snapshot of your physical and mental health status</li>'
          '<li>AI Fit PT – Let our AI count your reps and track your progress using your mobile camera</li>'
          '<li>Keep moving - Track your daily steps against your fitness goals</li>'
          '<li>Stay focused - Challenge your maximum productivity</li>'
          '<li>myBUPA integration - Check your insurance plans within the app</li>'
          '</ol>',
      url: 'https://www.bupa.com.hk/en/customer-care/bluahealth/',
    ),
    ProjectDto(
      tags: ['Flutter', 'iOS', 'Android'],
      images: [],
      projectName: 'Namco HK',
      projectDescription:
          'Spend points to save points, accumulate points to exchange for rewards, '
          'latest attraction information, and branch information.\n\n'
          'You can easily save points, redeem limited coupons and gifts, '
          'and quickly get the latest discounts and attraction information.'
          '<ul>'
          '<li>Consumption points - Easily upload receipts to accumulate points and redeem limited gifts</li>'
          '<li>Limited time offer - From time to time, the app will issue exclusive promotional offers</li>'
          '<li>Instant notification -  Push the latest exclusive offers and limited events.</li>'
          '<li>Branch information -  View branch information instantly and find or navigate to nearby branches.</li>'
          '</ul>',
      url: 'https://www.namco.com.hk/',
    ),
    ProjectDto(
      tags: ['Flutter', 'iOS', 'Android'],
      images: [],
      projectName: 'New Yaohan',
      projectDescription:
          'All new membership app for New Yaohan\n\n'
          'An all-new membership programme that allows VIP to explore new exclusive '
          'experiences at the new tier level!\n\n'
          'Instant Earn, Instant Burn：Access and exchange membership '
          'points instantly for privileges, rewards and the new tier level!\n\n'
          '<ul>'
          '<li>Happenings - Stay tuned for the latest happenings and shopping offers.</li>'
          '<li>Shop List - Quickly look up opening hours and floor plans of over 500 worldwide brands</li>'
          '<li>About Us - Receive comprehensive information of New Yaohan</li>'
          '</ul>',
      url: 'https://www.newyaohan.com/zh-hk',
    ),
    ProjectDto(
      tags: ['Video Editing', 'YouTube'],
      images: [],
      projectName: 'HKU Lawlypop',
      projectDescription:
          'This is a YouTube channel that is completely built by me. '
          'From channel graphic design, to video editing are all managed by me.\n\n'
          'LAWLYPOP is a project that aims to inspire current and prospective '
          'law students in career and academic planning through sharings and '
          'reflections by seasoned legal practitioners '
          '(many of whom are HKU Law alumni) or other pop up events.\n\n'
          'This initiative is supported by the HKU Teaching Development '
          'Grant (TDG) and led by Alice Lee (Associate Dean, Faculty of Law) '
          'and Billy Ng, an alumnus of this law school. The team will '
          'first bring to you a series of short interviews with legal professionals.',
      url: 'https://www.youtube.com/c/HKULawlypop1',
    ),
  ];
}
