import 'package:flutter/material.dart';

import 'navi_chatting.dart';

class Waitingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WaitingPageState();
}

class WaitingPageState extends State<Waitingpage> {

  var _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column (
        children : <Widget>[
          _pageofTop() ,_pageofBottom(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) { // 하단 네비게이션 바를 눌러 페이지 이동
          setState(() {
            _pageIndex=value;
            if (value==0)
            {
              NaviChatting();
            }
            else if  (value==1)
            {
              NaviChatting();
            }
            else
            {
              NaviChatting();
            }
          });
        },
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'waiting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'more',
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget _pageofTop()
{
  return Center(
      child:  Container(
          color:Colors.black12,
          width:250,
          height:300));
}

Widget _pageofBottom()
{
  return NaviChatting();
}