import 'package:flutter/material.dart';
import 'package:ila/views/addCourseView.dart';
import 'package:ila/views/courseView.dart';
import 'package:ila/views/homeView.dart';
import 'package:ila/views/lectureView.dart';
import 'package:ila/views/loginView.dart';
import 'package:ila/views/registrationView.dart';
import 'package:ila/views/settingsView.dart';
import 'package:ila_swagger/api.dart';

Widget makeRoute(
    {@required BuildContext context,
      @required String routeName,
      Object arguments}) {
  final Widget child =
  _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute({
  @required BuildContext context,
  @required String routeName,
  Object arguments,
}) {
  switch (routeName) {
    case '/home':
      return HomeView();
    case '/login':
      return LoginView();
    case '/registration':
      return RegistrationView();
    case '/settings':
      return SettingsView();
    case '/course':
      Course course = arguments as Course;
      return CourseView(course: course,);
    case '/lecture':
      Lecture lecture = arguments as Lecture;
      return LectureView(lecture: lecture,);
    case '/addCourse':
      return AddCourseView();
    default:
      throw 'Route $routeName is not defined';
  }
}