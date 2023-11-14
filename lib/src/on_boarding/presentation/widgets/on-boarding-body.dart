import 'package:education_app/core/extension/context-extension.dart';
import 'package:education_app/src/on_boarding/domain/entities/page_content.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({required this.pageCount, super.key});

  final PageContent pageCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          pageCount.image,
          height: context.height * .4,
        ),
        SizedBox(
          height: context.height * .3,
        ),
        Padding(
          padding: const EdgeInsets.all(20).copyWith(bottom: 0),
          child: Column(
            children: [
              Text(
                pageCount.title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: context.height * .02,
              ),
              Text(
                pageCount.description,
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }
}
