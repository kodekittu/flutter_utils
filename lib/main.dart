import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.lightBlue),
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController= new TabController(length: 6, vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Utils APP")),
      // WE CAN MAKE THE BOTTOM NAVIGATION BAR ON TOP ALSO
      body: new TabBarView(
        children: <Widget>[
          new Newpage("First"),
          new Newpage("Second"),
          new Newpage("Third"),
          new Newpage("Forth"),
          new Newpage("Fifth"),
          new Newpage("Sixth"),],
        controller: tabController,
      ),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.vpn_key),backgroundColor: Colors.grey,),
      bottomNavigationBar: new Material(
        child: new TabBar(
          controller: tabController,
          tabs: <Widget>[
          new Tab(icon: new Icon(Icons.favorite),),
          new Tab(icon: new Icon(Icons.face),),
            new Tab(icon: new Icon(Icons.all_inclusive),),
            new Tab(icon: new Icon(Icons.whatshot),),
            new Tab(icon: new Icon(Icons.ac_unit),),
            new Tab(icon: new Icon(Icons.apps),)
        ],
        ),
      ),
    );
  }
}
class Newpage extends StatelessWidget {
  final String title;
  Newpage (this.title);
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
        body: new Center(
           child: new Text(title),
         ),
      );
  }
}





// FOR WRITING STEPS VERTICAL OR HORIZONTAL
/* class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
 }

class _HomePageState extends State<HomePage> {
  int current_step = 0;
  List<Step> my_step=[
    new Step(
      title: new Text("Step 1"),
      content: new Text("Step 1 Content"),
      isActive: true
    ),
    new Step(
        title: new Text("Step 2"),
        content: new Text("Step 2 Content"),
        isActive: true
    ),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Step 3 Content"),
        isActive: true
    ),
    new Step(
        title: new Text("Step 4"),
        content: new Text("Step 4 Content"),
        isActive: true
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Utils APP"),),
      body: new Container(
        child: new Stepper(
          steps: my_step,
          currentStep: this.current_step,
          type: StepperType.vertical,
          //type: StepperType.horizontal,
        ),
      )
    );
  }
}
*/


/* class MyBody extends StatelessWidget {
  AlertDialog dialog= new AlertDialog(
    content: new Text("Dialog is UP!!",style: new TextStyle(fontSize: 16.0),),
  );
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:  new Center(
        child: new RaisedButton(
          // MESSAGE IN THE BOTTOM SNACKBAR
        /*  onPressed: ()=> Scaffold.of(context).showSnackBar(
          new SnackBar(content: new Text("YOU clicked ME"),
            duration: new Duration(seconds: 3),),
        )*/
        // FOR DIALOG
        onPressed: ()=> showDialog(context: context,child: dialog) ,
          child: new Text("ClICk mE",style: new TextStyle(color: Colors.black),),
          color: Colors.black12,),
      ),
    );
  }
} */

