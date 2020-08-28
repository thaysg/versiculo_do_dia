import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:versiculododia/Verse.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.red.withOpacity(0.3), BlendMode.dstATop),
                  image: ExactAssetImage(
                      "images/bible.jpg",
                  )
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Text(
                      "PALAVRAS QUE EDIFICAM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.blue[100],
                                offset: Offset(2.0, 3.0)
                            ),
                          ]
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: AvatarGlow(
                      endRadius: 150,
                      duration: Duration(seconds: 3),
                      glowColor: Colors.blue[100],
                      repeat: true,
                      repeatPauseDuration: Duration(seconds: 1),
                      startDelay: Duration(seconds: 1),

                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.none
                            ),
                            shape: BoxShape.circle
                        ),

                        child: CircleAvatar(

                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Verse(),
                              ));
                            },
                              child: Text(
                                "Gerar Versículo",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900
                                ),
                              )
                          ),
                          radius: 60,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
