import 'package:flutter/material.dart';


class NaviChatting extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => NaviChattingSatate();
}

class NaviChattingSatate extends State<NaviChatting>
{
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            _chatlist(),
          ],
        );
  }
}

Widget _chatlist() {

  final items = List.generate(15, (i) {
    var num = i + 1;
    return ListTile(
      leading: Icon(Icons.notifications),
      title: Text('$num번째 ListTile'),
    );
  });

  return ListView(
    physics: NeverScrollableScrollPhysics(), // 해당 리스트의 스크롤 금지
    shrinkWrap: true, // 상위 리스트 위젯이 별도로 있다면 true 로 설정해야 스크롤이 가능
    children: items,
  );

}