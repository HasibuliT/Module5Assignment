import 'package:flutter/material.dart';
import 'package:module5_assignment/page_widget/page1.dart';
import 'package:module5_assignment/page_widget/page2.dart';
import 'package:module5_assignment/page_widget/page3.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
//Items here
  List<Widget> items = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.cases),
              text: 'Page 1',
            ),
            Tab(
              icon: Icon(Icons.cases),
              text: 'Page 2',
            ),
            Tab(
              icon: Icon(Icons.cases),
              text: 'Page 3',
            )
          ]),
        ),



        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (int index){
            if (index ==0){
            }


            if (index ==1){

            }


            if (index ==2){

            }

          },
        ),


        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                //child: Text("Hasibul Islam")
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Hasibul Islam",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("Hasibul@gmail.com",style: TextStyle(color: Colors.black),),
                    decoration: BoxDecoration(color: Colors.green),


                  )
              ),




              ListTile(
                leading: Icon(Icons.cases),
                title: Text("Nav Page 1"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
              ),


              ListTile(
                  leading: Icon(Icons.cases),
                  title: Text("Nav Page 2"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
              ),


              ListTile(leading: Icon(Icons.cases),
                  title: Text("Nav Page 3"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
              ),




            ],
          ),

        ),
        body: TabBarView(children: items),
      ),
    );
  }
}
