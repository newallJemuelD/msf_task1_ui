import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 221, 218, 218),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        const Text('Watchlist'),
                        const Spacer(),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.message)),
                      ],
                    ),
                  ),//row with title and icon
                  Container(
                    height: 35,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 8,
                          width: 80,
                          decoration: BoxDecoration(
                             color: Colors.black45,
                             borderRadius: BorderRadius.circular(10),
                          ),
                         
                        );
                      },
                    ),
                  ),//horizontal listview with categories 
                ],
              ),
            ), //Top bar widget with the categories 
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    width: 300,
                    color: Colors.black12,
                    child: Column(
                      children: [],
                    ),                   
                  );
                }
                ),
            ), ),//main listview builder of details
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
             const BottomNavigationBarItem(
              icon: Icon(Icons.verified_user,
              size: 23,
              ),
              label: 'Profile',
            ),
             const BottomNavigationBarItem(
              icon:  Icon(
                Icons.business,
              ),
              label: 'Business',
            ),
             const BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
             const BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}