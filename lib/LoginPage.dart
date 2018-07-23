import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;


  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 1500)
    );

    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black12,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(image: new AssetImage('assets/skyline-background.jpg'),
              fit: BoxFit.cover,
//            color: Colors.black54,
//            colorBlendMode: BlendMode.darken,
            ),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlutterLogo(
                    size: _iconAnimation.value * 100,
                  ),
                  new Form(
                    child: new Theme(
                      data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                          labelStyle:  new TextStyle(
                            color: Colors.tealAccent,
                            fontSize: 18.0
                          )
                        )
                      ),
                      child: new Container(
                        padding: const EdgeInsets.all(40.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Email",

                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Password",
                              ),

                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            new Padding(padding: const EdgeInsets.only(top: 40.0)),
                            new MaterialButton(
                             height: 40.0,
                              minWidth: 100.0,
                              onPressed: ()=>{},
                              color: Colors.blue,
                              child: new Icon(Icons.forward),
                              splashColor: Colors.redAccent,

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ],
        )
    );
  }
}


