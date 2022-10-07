import 'package:flutter/material.dart';

getHeight(BuildContext context) => MediaQuery.of(context).size.height;
getWidth(BuildContext context) => MediaQuery.of(context).size.width;
TextTheme  getText(BuildContext context) => Theme.of(context).textTheme;
ColorScheme getColor(BuildContext context)=> Theme.of(context).colorScheme;

class PlotForm extends StatefulWidget {
  const PlotForm({Key? key}) : super(key: key);

  @override
  State<PlotForm> createState() => _PlotFormState();
}

class _PlotFormState extends State<PlotForm> {
  String approvalAuthority='CMDA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 8.0, left: 16.0),
              child: Text(
                'Approval authority',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('CMDA'),
                    ),
                    selected: approvalAuthority == 'CMDA',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'CMDA';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'CMDA' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'CMDA' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('DTCP'),
                    ),
                    selected: approvalAuthority == 'DTCP',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'DTCP';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'DTCP' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'DTCP' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Text('TNHB'),
                    ),
                    selected: approvalAuthority == 'TNHB',
                    onSelected: (value) {
                      if (value == true) {
                        setState(() {
                          approvalAuthority = 'TNHB';
                        });
                      }
                    },
                    backgroundColor: Colors.white,
                    elevation: approvalAuthority == 'TNHB' ? 5 : 1,
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: approvalAuthority == 'TNHB' ? Colors.lightBlue : Colors.grey), borderRadius: BorderRadius.circular(10)),
                  ),
                ),



              ],

            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:12.0),
              child: Row(

                children: [

                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'Plot No',

                  )),
                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'Plot No',

                  ))


                ],

              ),
            ),

            CustomTextFormfield3(title: 'DTCP NO', isMandatory: false),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:12.0),
              child: Row(

                children: [

                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'District',

                  )),
                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'Taluk',

                  ))


                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:12.0),
              child: Row(

                children: [

                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'Village',

                  )),
                  Expanded(child: CustomTextFormfield3(
                    isMandatory: true,

                    title: 'Pincode',

                  ))


                ],

              ),
            ),
            CustomTextFormfield3(
              isMandatory: true,

              title: 'Plot Area',

            ),
            CustomTextFormfield3(
              isMandatory: true,

              title: 'Unit',

            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                child: ElevatedButton(

                    style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all(Colors.lightBlue)

                    ),
                    onPressed: (){}, child: Text('Submit')),
              ),
            )






          ],




        ),
      ),

    );
  }
}



class CustomTextFormfield3 extends StatelessWidget {
  const CustomTextFormfield3({
    Key? key,
    this.controller,
    this.obscure,
    this.keyboardtype,
    this.validator,
    required this.title,
    this.width, required this.isMandatory,
  }) : super(key: key);
  final TextEditingController? controller;
  final bool? obscure;
  final TextInputType? keyboardtype;
  final String? Function(String?)? validator;
  final String title;
  final double? width;
  final bool isMandatory;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListTile(
          title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(text: title, style: getText(context).bodyText1),
                     TextSpan(text: isMandatory?' *':'', style: TextStyle(color: Colors.red))
                  ]))
            /*Text(
              title,
              style: getText(context).bodyText1,
            ),*/
          ),
          subtitle: SizedBox(
            height: getHeight(context) * 0.06,
            width: width,
            child: TextFormField(

              validator: validator,
              controller: controller,
              obscureText: obscure ?? false,
              decoration: InputDecoration(
                  hintStyle:
                  getText(context).bodyText1?.copyWith(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:  Colors.grey.withOpacity(0.7),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:  Colors.grey.withOpacity(0.7),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      color: Colors.grey.withOpacity(0.7),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white38),
              style: getText(context).bodyText1,
              keyboardType: keyboardtype,
            ),
          ),
        ));
  }
}
