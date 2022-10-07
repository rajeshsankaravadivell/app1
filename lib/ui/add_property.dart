import 'package:flutter/material.dart';
import 'package:real_estate/ui/forms/house_forms.dart';

import 'forms/plot_form.dart';



class Addproperty extends StatefulWidget {
  const Addproperty({Key? key}) : super(key: key);

  @override
  State<Addproperty> createState() => _AddpropertyState();
}

class _AddpropertyState extends State<Addproperty> with TickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),

        elevation: 0,
        backgroundColor: Colors.white,

        title: Text('Add Property',style: TextStyle(color: Colors.black),),

        bottom: PreferredSize(

          preferredSize: Size.fromHeight(100), child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            GestureDetector(

              onTap: (){

             setState(() {
               _tabController.index=0;
             });

              },

              child: Card(

                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: _tabController.index==0?Colors.lightBlue:Colors.white
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Icon(
                          Icons.house,
                          color: _tabController.index==0?Colors.lightBlue:Colors.black,
                          size: 24,
                        ),
                      ),
                      Text(
                        'House/villa',
                        style: TextStyle(color: _tabController.index==0?Colors.lightBlue:Colors.black),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(

              onTap: (){

            setState(() {
              _tabController.index=1;
            });

              },

              child: Card(

                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: _tabController.index==1?Colors.lightBlue:Colors.white
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Icon(
                          Icons.apartment,
                          color: _tabController.index==1?Colors.lightBlue:Colors.black,
                          size: 24,
                        ),
                      ),
                      Text(
                        'Apartment',
                        style: TextStyle(color: _tabController.index==1?Colors.lightBlue:Colors.black),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(

              onTap: (){

               setState(() {
                 _tabController.index=2;
               });

              },

              child: Card(

                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: _tabController.index==2?Colors.lightBlue:Colors.white
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                        child: Icon(
                          Icons.home_work,
                          color: _tabController.index==2?Colors.lightBlue:Colors.black,
                          size: 24,
                        ),
                      ),
                      Text(
                        'Plot',
                        style: TextStyle(color: _tabController.index==2?Colors.lightBlue:Colors.black),

                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],

        ),


        ),



        actions: [

          SizedBox(
            height: 0,
            width: 0,


            child: TabBar(
              controller: _tabController,
              tabs: [

              Card(

                child: Column(

                  children: [

                    Icon(Icons.house)

                  ],
                ),

              ),
              Card(

                child: Column(

                  children: [

                    Icon(Icons.house)

                  ],
                ),

              ),
              Card(

                child: Column(

                  children: [

                    Icon(Icons.house)

                  ],
                ),

              ),




            ],




            ),
          )

        ],



      ),

      body:  TabBarView(
        controller: _tabController,
        children: <Widget>[
          House(),
          House(),
          PlotForm()
        ],
      ),



    );
  }
}
