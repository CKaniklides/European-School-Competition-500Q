import 'package:flutter/material.dart';

double getRelativeSize(BuildContext context, double number) =>
    MediaQuery.of(context).size.width * (number / 100);
