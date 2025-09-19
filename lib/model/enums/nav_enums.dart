import 'package:flutter/material.dart';

enum NavEnums { home, about, experience, services, contact }

extension NavEnumsExtension on NavEnums {
  String get label {
    switch (this) {
      case NavEnums.home:
        return "Home";
      case NavEnums.about:
        return "About";
      case NavEnums.experience:
        return "Experience";
      case NavEnums.services:
        return "Services";
      case NavEnums.contact:
        return "Contact";
    }
  }

  IconData icon({bool selected = false}) {
    if (!selected) {
      switch (this) {
        case NavEnums.home:
          return Icons.home_outlined;
        case NavEnums.about:
          return Icons.person_outlined;
        case NavEnums.experience:
          return Icons.folder_outlined;
        case NavEnums.services:
          return Icons.assignment_outlined;
        case NavEnums.contact:
          return Icons.mail_outlined;
      }
    } else {
      switch (this) {
        case NavEnums.home:
          return Icons.home;
        case NavEnums.about:
          return Icons.person;
        case NavEnums.experience:
          return Icons.folder;
        case NavEnums.services:
          return Icons.assignment;
        case NavEnums.contact:
          return Icons.mail;
      }
    }
  }
}
