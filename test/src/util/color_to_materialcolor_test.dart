import 'package:djalmautil/djalmautil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group("ColorToMaterialColor Test", (){

    test("should return a MaterialColor", (){

      expect(colorToMaterialColor("000000"), isA<MaterialColor>());

    });

  });

}