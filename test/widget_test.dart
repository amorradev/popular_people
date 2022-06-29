// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:popularpeople/features/person_info/models/person_info.dart';
import 'package:popularpeople/features/person_info/views/info_card.dart';
import 'package:sizer/sizer.dart';

void main() {
  testWidgets('When person info card is rendered it shows person info', (WidgetTester tester) async {
    PersonInfo personInfo = PersonInfo(
      personId: '276543',
      personName: 'Austin Butler',
      personBirthday: '1991-08-17',
      personBirthPlace: 'Anaheim, California, USA',
      personKnownFor: 'Acting',
      personBiography: "Austin Robert Butler (born August 17, 1991) is an American actor. He began his career on television, and had a guest role in two episodes of the teen show Hannah Montana in 2006 and 2007. He had a recurring role in the television series Switched at Birth (2011–2012) and main roles in The Carrie Diaries (2013–2014) and The Shannara Chronicles (2016–2017). In film, Butler played Tex Watson in Quentin Tarantino's Once Upon a Time in Hollywood (2019). In 2022, he gained critical acclaim for his portrayal of Elvis Presley in Baz Luhrman's musical biopic Elvis.",
      personCredits: null,
      personProfilePictures: null,
    );
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      Sizer(builder: (
          context,
          orientation,
          deviceType,
          ) {
        return MaterialApp(
          home: Scaffold(
            body: PersonInfoCard(
              personInfo: personInfo,
            ),
          ),
        );
      })


        );

    // Verify that our counter starts at 0.
    expect(find.text('Austin Butler'), findsOneWidget);
    expect(find.text('Acting'), findsOneWidget);

  });
}
