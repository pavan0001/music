import 'package:flutter/material.dart';
import 'package:music/them.dart';


void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "tab",
  home: new HomePage(),
));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {}),
        title: new Text(" "),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {}),
        ],
      ),
      body: new Column(
        children: <Widget>[
          //seekbar
            new Expanded(
                child:new Center(
                  child: new Container(
                    width: 125.0,
                      height: 125.0,

                  ),
                )

            ),


          //visualizer
           new Container(
             width: double.infinity,
             height: 125.0,
           ),



          //songtitle
          new Container(
            color: accentColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 50.0),
              child: new Column(
                children: <Widget>[
                  new RichText(text: new TextSpan(
                    text: "",
                    children: [
                      new TextSpan(
                        text: "song title\n",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4.0,
                          height: 1.5,
                        ),
                      ),
                      new TextSpan(
                          text: "Artist Name",
                        style: new TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 12.0,
                          letterSpacing: 3.0,
                          height: 1.5,
                        )

                      ),
                    ]
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Container()),

                        new IconButton(
                            icon: new Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            onPressed: () {
                              //todo;
                            },
                        ),

                        new Expanded(child: new Container()),

                        new RawMaterialButton(
                          shape: new CircleBorder(),
                          fillColor: Colors.white,
                          splashColor: lightAccentColor,
                          highlightColor: lightAccentColor.withOpacity(0.5),
                          elevation: 10.0,
                          onPressed: (){
                            //todoo;
                          },
                          child: new Padding(padding: const EdgeInsets.all(8.0),
                            child: new Icon(
                              Icons.play_arrow,
                              color: darkAccentColor,
                              size: 35.0,
                            ),

                          ),

                        ),


                        new Expanded(child: new Container()),
                        new IconButton(
                          icon: new Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 35.0,

                          ),
                          onPressed: () {
                            //todo;
                          },
                        ),

                        new Expanded(child: new Container()),







                      ],
                    ),
                  )


                ],
              ),
            ),
          )




        ],
      ),

    );
  }
}
