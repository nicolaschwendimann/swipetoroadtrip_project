/* body: Column (
  children:
  <Widget>[
    Container(
      Image.assets("assets/titelbild.jpg")
    ),

    Container(
      child: Text('Test Text')
      style: TextStyle(
        color: Colors.deepOrange[300] 
      )),

    Container(
      alignment: Alignment.bottomCenter,
          child: RaisedButton(
            child: Text('START',
            style: TextStyle(
              color: Colors.white, 
            ),
            ),
            color: new Color.fromRGBO(255, 132, 51, 1),
            // Zur nächsten Seite navigieren
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SecondScreen())
              );
          },
        ),
      ),
  ]
), */
