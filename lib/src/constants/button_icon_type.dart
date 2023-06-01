import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIconType {
  static double _iconSize = 35.0;
  static Color _greyBtnColor = CupertinoColors.black;
  static Color _orangeBtnColor = CupertinoColors.white;
  static Color _orangeBtnColorReverse = CupertinoColors.activeOrange;

  static Icon get plusAndMinus => Icon(
        CupertinoIcons.plus_slash_minus,
        size: _iconSize,
        color: _greyBtnColor,
      );

  static Icon get percent => Icon(
        CupertinoIcons.percent,
        size: _iconSize,
        color: _greyBtnColor,
      );

  static Icon get plus => Icon(
        CupertinoIcons.plus,
        size: _iconSize,
        color: _orangeBtnColor,
      );

  static Icon get plusReverse => Icon(
        CupertinoIcons.plus,
        size: _iconSize,
        color: _orangeBtnColorReverse,
      );

  static Icon get minus => Icon(
        CupertinoIcons.minus,
        size: _iconSize,
        color: _orangeBtnColor,
      );

  static Icon get minusReverse => Icon(
        CupertinoIcons.minus,
        size: _iconSize,
        color: _orangeBtnColorReverse,
      );

  static Icon get multiply => Icon(
        CupertinoIcons.multiply,
        size: _iconSize,
        color: _orangeBtnColor,
      );

  static Icon get multiplyReverse => Icon(
        CupertinoIcons.multiply,
        size: _iconSize,
        color: _orangeBtnColorReverse,
      );

  static Icon get divide => Icon(
        CupertinoIcons.divide,
        size: _iconSize,
        color: _orangeBtnColor,
      );

  static Icon get divideReverse => Icon(
        CupertinoIcons.divide,
        size: _iconSize,
        color: _orangeBtnColorReverse,
      );

  static Icon get equal => Icon(
        CupertinoIcons.equal,
        size: _iconSize,
        color: _orangeBtnColor,
      );

  static Text get allClear => const Text(
        'AC',
        style: TextStyle(fontSize: 35, color: CupertinoColors.black),
      );

  static Text get clear => const Text(
        'C',
        style: TextStyle(fontSize: 35, color: CupertinoColors.black),
      );
}
