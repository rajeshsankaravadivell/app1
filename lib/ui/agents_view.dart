import 'package:flutter/material.dart';
import 'package:real_estate/ui/forms/plot_form.dart';

class AgentsView extends StatefulWidget {
  const AgentsView({Key? key}) : super(key: key);

  @override
  State<AgentsView> createState() => _AgentsViewState();
}

class _AgentsViewState extends State<AgentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agent Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'personal Details',
                    style: getText(context).headline5,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: true,
                      title: 'First Name',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: true,
                      title: 'Pincode',
                    ))
                  ],
                ),
                CustomTextFormfield3(
                  isMandatory: false,
                  title: 'Phone Number',
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Addressline1',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Addressline2',
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Street',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'State',
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Country',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Pincode',
                    ))
                  ],
                ),
                Divider(
                  thickness: 5,
                ),


                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Bank Details',
                    style: getText(context).headline5,
                  ),
                ),

                CustomTextFormfield3(
                  isMandatory: false,
                  title: 'Account Number',
                ),
                CustomTextFormfield3(
                  isMandatory: false,
                  title: 'Account Holder Name',
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Bank Name',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Branch',
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'IFSC code',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'State',
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Country',
                    )),
                    Expanded(
                        child: CustomTextFormfield3(
                      isMandatory: false,
                      title: 'Pincode',
                    ))
                  ],
                ),

                Center(child: ElevatedButton(onPressed: (){}, child: Text('Submit')))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
