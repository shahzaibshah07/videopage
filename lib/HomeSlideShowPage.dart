import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My App', textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,fontSize: 18 )),
        backgroundColor: Colors.lightBlue,
        leading:
        Builder(builder: (context){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.menu,size: 30,),
              color: Colors.white,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        },),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: IconButton(
                icon: Icon(Icons.person_3_outlined,size: 28),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Here Is my New Page.',
              style: TextStyle(fontSize: 18 ,color: Colors.white,backgroundColor: Colors.blueGrey)),
              const SizedBox(height: 10),
              Text('Press Button',
                  style: TextStyle(fontSize: 15,color: Colors.white,backgroundColor: Colors.blueGrey)),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 30.0,left: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(20.0), // Border radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Button',
                        style: TextStyle(
                            color: Colors.black, fontSize: 20 // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}