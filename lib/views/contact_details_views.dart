import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactDetailsView extends StatelessWidget {
  //final List<Map<String, String>>
  Map<String, dynamic> contactDetails;

 // const ContactDetailsView({Key? key}) : super(key: key);
ContactDetailsView({Key? key, required this.contactDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.teal[50],
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [Icon(Icons.more_vert)],
        bottom: PreferredSize(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                     ("${this.contactDetails['image']}")
                ),
              ),
                  ),
              Text('${this.contactDetails['name']}'),
              SizedBox(
                height: 10,
              ),
              Text('${this.contactDetails['region']}, ${this.contactDetails['country']}'),
              SizedBox(
                height: 5,
              ),
          
              ],
          ),
          preferredSize: Size.fromHeight(150),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8, bottom: 8),
        child: ListView(children: [
          Container(
            
            color: Color(0xffC4C4C4),
            child: Column(children: [
              ListTile(
                title: Text('Mobile', style:TextStyle(color: Colors.black, fontSize: 12),),
                subtitle: Text('${this.contactDetails['phone']}', style:TextStyle(color: Colors.black54, fontSize: 12)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Icon(Icons.message, color: Colors.white,),
                      
                    ),
                    TextButton(
                      onPressed: null,
                      child: Icon(Icons.phone, color: Colors.white,),
                      
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Email', style:TextStyle(color: Colors.black, fontSize: 12),),
                subtitle: Text('${this.contactDetails['email']}', style:TextStyle(color: Colors.black54, fontSize: 12),),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(
                    onPressed: null,
                    child: Icon(Icons.email, color: Colors.white,),
                    
                  ),
                ]),
              ),
              ListTile(
                title: Text('Group', style:TextStyle(color: Colors.black, fontSize: 12),),
                subtitle: Text('Ui friends', style:TextStyle(color: Colors.black54, fontSize: 12),),
              ),
            ]),
          ),
          Padding(
  
            padding: const EdgeInsets.all(22.5),
            child: Text('Account Linked', style: TextStyle(fontSize: 13, color: Colors.black, )),
          ),
          Container(
            color: Color(0xffC4C4C4),
            child: Column(children: [
              ListTile(
                title: Text('Telegram', style:TextStyle(color: Colors.black, fontSize: 12),), 
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(
                    onPressed: null,
                    child: CircleAvatar(
                    radius: 13,
                    backgroundImage: NetworkImage('https://media.istockphoto.com/vectors/white-paper-plane-on-blue-background-vector-illustration-vector-id951164518?k=20&m=951164518&s=612x612&w=0&h=3UdkhpEUQJJjUnWlRwSOtmgmR_B7NT5Ex_i8NSdCX_Q=')
                    ,
                    ),
                  ),
                ]),
                  
              ),
            
            ListTile(
                title: Text('WhatsApp', style:TextStyle(color: Colors.black, fontSize: 12),),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(
                    onPressed: null,
                    child: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/whatsapp-icon-isolated-white-vector-file-included-whatsapp-flat-icon-164609425.jpg')
                    ,
                    ),
                  ),
                ]),

              ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.5),
            child: Text('More Options', style: TextStyle(fontSize: 13, color: Colors.black)),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
           color: Color(0xffC4C4C4),),
            width: 100 ,
            
            child: Column(
              children: [
                ListTile(
                  title: Text('Share Contact', style:TextStyle(color: Colors.black, fontSize: 12)),
                ),
                ListTile(
                  title: Text('QR Code', style:TextStyle(color: Colors.black, fontSize: 12),),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
