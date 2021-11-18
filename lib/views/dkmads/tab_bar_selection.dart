import 'package:flutter/material.dart';
class TabBarSelection extends StatelessWidget{
  Widget build(BuildContext context){
    return _tabSelection(context);
  }
}

 Widget _tabSelection(BuildContext context){
  return DefaultTabController(length: 5, child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Container(
        child: TabBar(
          isScrollable: true,
            tabs:[
          Tab(child:Text('Daily',style: TextStyle(color: Colors.grey),)),
          Tab(child: Text('Calendar',style: TextStyle(color: Colors.grey),),),
          Tab(child: Text('Weekly',style: TextStyle(color: Colors.grey),),),
          Tab(child: Text('Monthly',style: TextStyle(color: Colors.grey),),),
          Tab(child: Text('Summary',style: TextStyle(color: Colors.grey),),)
        ]),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        child: TabBarView(children: [
          Container(
            child: Text("HomeBody"),
          ),
          Container(
            child: Text("Article View"),
          ),
          Container(
            child: Text("User Body"),
          ),
          Container(
            child: Text("Article View"),
          ),
          Container(
            child: Text("User Body"),
          )
        ],),
      )
    ],
  ));
}
// class TabBarSelection extends StatefulWidget{
//   _TabBarSelection createState() => _TabBarSelection();
// }
// class _TabBarSelection extends State<TabBarSelection> with SingleTickerProviderStateMixin{
//   @override
//   void initState(){
//     super.initState();
//   }
//   @override
//   void dispose(){
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context){
//     return DefaultTabController(
//         length: 3,
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 50,),
//             Container(
//               constraints: BoxConstraints.expand(height: 50),
//               child: TabBar(tabs: [
//                 Tab(
//
//                   child: Text("16/7",style: TextStyle(color: Colors.blue),),
//
//                 ),
//                 Tab(
//                   child: Text("16/7",style: TextStyle(color: Colors.blue),),),
//                 Tab(
//                   child: Text("16/7",style: TextStyle(color: Colors.blue),),
//                 ),
//               ]),
//             ),
//             Expanded(
//               child: Container(
//                 child: TabBarView(children: [
//                   Container(
//                     child: Text("Home Body"),
//                   ),
//                   Container(
//                     child: Text("Articles Body"),
//                   ),
//                   Container(
//                     child: Text("User Body"),
//                   ),
//                 ]),
//               ),
//             )
//           ],
//         ),
//       );
//
//   }
// }