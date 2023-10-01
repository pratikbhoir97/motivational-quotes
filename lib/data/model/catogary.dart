import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/configuration.dart';

class Category {
  final List<String> imageList;
  final List<String> nameList;
  final List<LinearGradient> gradients;

  Category(
      {required this.imageList,
      required this.nameList,
      required this.gradients});
}

Category categoryDataList = Category(
  imageList: Configuration.imageList,
  nameList: Configuration.categoryNameList,
  gradients: Configuration.gradientList,
);
