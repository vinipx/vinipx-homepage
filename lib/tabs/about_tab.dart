import 'dart:html' as html;

import 'package:adityagurjar/config/assets.dart';
import 'package:adityagurjar/config/constants.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 202,
                backgroundColor: Colors.white70,
                child: CircleAvatar(
                  radius:200,
                  child: CircleAvatar(
                    radius: 193,
                    backgroundImage: Image.asset(Assets.avatar3).image,
                ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Hi ! I\'m Vini ',
                style: TextStyle(fontFamily: "Pacificao"),
                textScaleFactor: 6,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '... I like testing, agile, and people',
                style: TextStyle(fontFamily: "Pacificao", fontWeight: FontWeight.w100),
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github', style: TextStyle(fontFamily: "Pacificao"), textScaleFactor: 2),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'vinipx'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter',textAlign: TextAlign.left ,style: TextStyle(fontFamily: "Pacificao"), textScaleFactor: 2),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'imvinipx'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram ',style: TextStyle(fontFamily: "Pacificao"), textScaleFactor: 2),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'vinipxf'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin ', style: TextStyle(fontFamily: "Pacificao"), textScaleFactor: 2),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'vinícius-fagundes-301b2429'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
