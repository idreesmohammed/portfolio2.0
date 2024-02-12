import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelperClass {
  static const List<String> headerList = [
    "Home",
    "Skills",
    "Projects",
    "Contact Me",
    "View my CV"
  ];
  static const List<IconData> drawerIcons = [
    Icons.home,
    FontAwesomeIcons.code,
    FontAwesomeIcons.filePowerpoint,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.file
  ];
  static const List<Map> skillsAndDescription = [
    {
      "image": "assets/flutt-removebg-preview.png",
      "title": "Flutter",
      "isHover": false
    },
    {
      "image": "assets/dt2-removebg-preview.png",
      "title": "Dart",
      "isHover": true
    },
    {
      "image": "assets/fb-removebg-preview.png",
      "title": "Firebase",
      "isHover": false
    },
    {"image": "assets/blocicon.png", "title": "Bloc", "isHover": false},
    {
      "image": "assets/swiftui-og-removebg-preview.png",
      "title": "Swift UI",
      "isHover": false
    },
    {
      "image": "assets/GitHub-Mark-ea2971cee799-removebg-preview.png",
      "title": "GitHub",
      "isHover": false
    },
    {
      "image": "assets/jira3124-removebg-preview.png",
      "title": "Jira",
      "isHover": false
    },
    {
      "image": "assets/azure-devops1866-removebg-preview.png",
      "title": "Azure DevOps",
      "isHover": false
    }
  ];
  static const List<Map> customDescriptionBack = [
    {
      "description":
          "Flutter is a cross-platform UI toolkit that is designed to allow code reuse across operating systems such as iOS and Android, while also allowing applications to interface directly with underlying platform services.",
      "url": "https://docs.flutter.dev/"
    },
    {
      "description":
          "Dart is a client-optimized language for developing fast apps on any platform. Its goal is to offer the most productive programming language for multi-platform development, paired with a flexible execution runtime platform for app frameworks.",
      "url": "https://dart.dev/guides"
    },
    {
      "description":
          "The Firebase Realtime Database lets you build rich, collaborative applications by allowing secure access to the database directly from client-side code. Data is persisted locally, and even while offline, realtime events continue to fire, giving the end user a responsive experience.",
      "url": "https://firebase.google.com/docs"
    },
    {
      "description":
          "BLoC State Management is a pattern which separates business logic from presentation, allowing for reactive and testable code. It utilizes events, streams, and sinks to manage user actions and update the application state.",
      "url": "https://bloclibrary.dev/#/"
    },
    {
      "description":
          "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code.",
      "url": "https://developer.apple.com/documentation/swiftui/"
    },
    {
      "description":
          "GitHub is a web-based interface that uses Git, the open source version control software that lets multiple people make separate changes to web pages at the same time. As Carpenter notes, because it allows for real-time collaboration, GitHub encourages teams to work together to build and edit their site content.",
      "url": "https://docs.github.com/en"
    },
    {
      "description":
          "Jira is a suite of agile work management solutions that powers collaboration across all teams from concept to customer, empowering you to do the best work of your life, together.",
      "url": "https://confluence.atlassian.com/jira"
    },
    {
      "description":
          "Azure DevOps is an end-to-end software development platform that offers an assortment of capabilities intended to organize and accelerate development efforts across the entire application lifecycle: Requirements management. Project management for both Agile software development and waterfall teams.",
      "url":
          "https://azure.microsoft.com/es-mx/free/search/?ef_id=_k_151640bc156a135eb446257845d7b380_k_&OCID=AIDcmmxotgtm93_SEM__k_151640bc156a135eb446257845d7b380_k_&msclkid=151640bc156a135eb446257845d7b380"
    }
  ];

  static const List<Map> projectDescription = [
    {
      "title": "Distance calculator",
      "description":
          "This application was developed fully responsive in a flutter framework. I had integrated google maps plugin along with google API key. It can be used for calculating distance between our current location and the point which we are choosing will show the distance in Kms.",
      "url": ""
    },
    {
      "title": "Shopping App",
      "description":
          "This application was developed fully responsive in a flutter framework. I have used fake store website free products API to design and implement.",
      "url": ""
    },
    {
      "title": "Food Delivery App",
      "description":
          "This application was developed fully responsive in a flutter framework. Using Firebase login with Email and otp login. Integrated the products with rest API.",
      "url": ""
    },
    {
      "title": "Offline Notes",
      "description":
          "In this Flutter project, I used Hive with CRUD operator for local storage to store as notes for the products.",
      "url": ""
    },
    {
      "title": "Weather App",
      "description":
          "This application was developed fully responsive in a flutter framework, Using the weather API to fetch the weather of your current location",
      "url": ""
    },
    {
      "title": "My Portfolio",
      "description":
          "This Technical Portfolio was designed and developed fully responsive using Flutter Web. Instead of using any third party website to build portfolio this was fully developed on my own.",
      "url": ""
    },
  ];
}
