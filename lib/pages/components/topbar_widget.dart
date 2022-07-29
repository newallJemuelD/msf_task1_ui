import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 221, 218, 218),
      padding: const EdgeInsets.fromLTRB(15, 15, 20, 40),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                const Text(
                  'Watchlist',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Color.fromARGB(255, 68, 2, 126),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Color.fromARGB(255, 68, 2, 126),
                    )),
              ],
            ),
          ), //row with title and icon
          SizedBox(
            height: 10,
          ),
          Container(
            height: 35,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  height: 8,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text('My list ${index + 1}')),
                );
              },
            ),
          ), //horizontal listview with categories
        ],
      ),
    );
  }
}
