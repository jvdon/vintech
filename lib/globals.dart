import 'package:flutter/material.dart';

final bd_color = fromHex("#e53d5b");

final bg_color = fromHex("#2b2e40");

final fg_color = fromHex("#edf2f4");

final scheme = ColorScheme.fromSeed(
  seedColor: bd_color,
  brightness: Brightness.dark,
  background: bg_color,
  surface: fromHex("#334057"),
);

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
