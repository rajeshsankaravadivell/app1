// import 'package:flutter/material.dart';
// import 'package:real_estate/notification.dart';
// import 'package:real_estate/ui/agents_page.dart';
// import 'package:real_estate/ui/home_page.dart';
// import 'package:real_estate/ui/profile_page.dart';
//
// import 'earning_page.dart';
//
//
// class BottomRouter extends StatefulWidget {
//   const BottomRouter({Key? key}) : super(key: key);
//
//   @override
//   State<BottomRouter> createState() => _BottomRouterState();
// }
//
// class _BottomRouterState extends State<BottomRouter> with TickerProviderStateMixin{
//
//
//   late  TabController _tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     _tabController=TabController(length: 5, vsync: this);
//     super.initState();
//
//   }
//   int _selectedIdex=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       bottomNavigationBar: BottomNavigationBar(
//         showUnselectedLabels: true,
//         unselectedItemColor: Colors.black,
//         unselectedIconTheme: IconThemeData(
//           color: Colors.black
//         ),
//         currentIndex: _tabController.index,
//         onTap: (index){
//          setState(() {
//            _tabController.index=index;
//
//          });
//           // _selectedIdex=index;
//         }
//         ,
//         selectedItemColor: Colors.lightBlue,
//         items:<BottomNavigationBarItem> [
//
//           BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: 'Agents'),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
//           BottomNavigationBarItem(icon: Icon(Icons.attach_money),label: 'Earnings'),
//           BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
//
//
//         ],
//       ),
//
//
//       body: TabBarView(
//         physics: NeverScrollableScrollPhysics(),
//         controller: _tabController,
//         children: [
//
//           HomePage(),
//           AgentsPage(),
//           NotificationPage(),
//           EarningPage(),
//           ProfilePage()
//
//
//
//
//
//         ],
//       ),
//
//
//
//     );
//   }
// }
