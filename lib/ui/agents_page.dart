import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'agents_view.dart';


class AgentsPage extends StatefulWidget {
  const AgentsPage({Key? key}) : super(key: key);

  @override
  State<AgentsPage> createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Get.to(()=>AgentsView());

        },
        child: Icon(Icons.add),
      ),
      //
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     'Agents',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,

            title: Text('Agents',style: TextStyle(color: Colors.black),),
            centerTitle: true,
            bottom: PreferredSize(preferredSize: Size.fromHeight(20), child: // Generated code for this TextField Widget...
            Padding(
              padding: EdgeInsetsDirectional.all(4.0),
              child: TextFormField(

                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Search for Agents...',
                  labelStyle: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF57636C),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF1F4F8),
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Color(0xFF57636C),
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF1D2429),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
              ,),
            pinned: false,
            snap: true,
            floating: true,
            expandedHeight: 100.0,
            // flexibleSpace: const FlexibleSpaceBar(
            //   title: Text('SliverAppBar'),
            //   background: FlutterLogo(),
            // ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(

              (context,index){

                return // Generated code for this Row Widget...
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>AgentsView());
                    },
                    child: // Generated code for this ProPlan Widget...
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: Color(0x32171717),
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.network(index%2==0?
                                  index%3==0?'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60':
                                      'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg'

                                  : 'https://pub-static.fotor.com/assets/projects/pages/bc392b3bd8e3422cbb6118d78e6f77be/fotor-c5d2ed6221aa4d19a6f6866abe6c7a50.jpg'
                                  ,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Albert Swiss',
                                        style:TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                        child: Text(
                                          'albert@companyname.com',
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                    )

                  );


              }

          ))

          

        ],

      )
    );
  }
}
