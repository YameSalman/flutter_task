import 'package:flutter/material.dart';

import 'colors_style.dart';

InputBorder enabledBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
    color: blueLogin, // #0000CE
  ),
);
InputBorder errorBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
    color: errorBoarderColor, // #0000CE
  ),
);

InputDecoration normalFormStyle = InputDecoration(
  filled: true, // Fill the background
  fillColor: white,
  enabledBorder: enabledBorderStyle,
  focusedBorder: enabledBorderStyle,
  errorBorder: errorBorderStyle,
  focusedErrorBorder: errorBorderStyle,
);
