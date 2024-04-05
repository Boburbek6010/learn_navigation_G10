import 'dart:ui';
import 'package:flutter/material.dart';

import '../widgets/custom_blur_widget.dart';

class GlassMorphicScreen extends StatefulWidget {
  static const String id = "/glass_morphic_screen";
  const GlassMorphicScreen({super.key});

  @override
  State<GlassMorphicScreen> createState() => _GlassMorphicScreenState();
}

class _GlassMorphicScreenState extends State<GlassMorphicScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.network("https://a.lmcdn.ru/img600x866/R/T/RTLACZ972602_22437258_4_v1.jpg").image
          )
        ),
        child: Center(
          child: BlurContainer(
            radius: 20,
            blur: 10,
            child: MaterialButton(
              onPressed: (){},
              color: Colors.white.withOpacity(0.3),
              hoverColor: Colors.white.withOpacity(0.3),
              focusColor: Colors.white.withOpacity(0.3),
              splashColor: Colors.white.withOpacity(0.6),
              highlightColor: Colors.white.withOpacity(0.3),
              disabledColor: Colors.white.withOpacity(0.3),
              minWidth: MediaQuery.of(context).size.width * 0.8,
              height: 200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

