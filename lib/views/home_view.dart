import 'package:my_contact_app_/views/contact_details_views.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_contact_app_/views/create_contact.dart';

class HomeView extends StatelessWidget {
  // const HomeView({Key? key}) : super(key: key);

//final ScrollControl scrollControl=ScrollController
  final List<Map<String, String>> data = [
    {
      "image":
          "https://images.unsplash.com/photo-1639242585418-448730d4381a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "name": "Reagan Mcknight",
      "phone": "1-565-827-8982",
      "email": "nonummy.ac@outlook.couk",
      "country": "Pakistan",
      "region": "Pays de la Loire",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639346865167-47a6c8cdc5f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "name": "Macy Mcdowell",
      "phone": "434-5712",
      "email": "tempor.diam@aol.edu",
      "country": "Brazil",
      "region": "Huáběi"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639337916961-806d3cbd566b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      "name": "Carissa Savage",
      "phone": "1-567-743-4341",
      "email": "vel@google.com",
      "country": "India",
      "region": "Loreto"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639247011190-79eb2abbe621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "name": "Bruce Cannon",
      "phone": "582-3896",
      "email": "eros.proin.ultrices@hotmail.com",
      "country": "New Zealand",
      "region": "South Island"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639364690765-42c1b3bab048?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      "name": "Aaron Ramos",
      "phone": "674-3271",
      "email": "at.egestas@aol.couk",
      "country": "South Korea",
      "region": "Azad Kashmir"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1633113216164-6469037eafa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "name": "Carlos Harper",
      "phone": "1-238-113-6033",
      "email": "proin.nisl@icloud.org",
      "country": "Russian Federation",
      "region": "Guanacaste"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639244151653-7807947de5a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80",
      "name": "Britanney Dorsey",
      "phone": "871-3241",
      "email": "non@yahoo.couk",
      "country": "Indonesia",
      "region": "Jharkhand"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1504297050568-910d24c426d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "name": "William Ortiz",
      "phone": "1-412-819-7163",
      "email": "molestie.in@yahoo.ca",
      "country": "Vietnam",
      "region": "North Island"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639351516356-8ed2dc90b4ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      "name": "Shellie Merrill",
      "phone": "1-241-690-5206",
      "email": "non@google.couk",
      "country": "Turkey",
      "region": "Gorontalo"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639344967285-d14efb2dcf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      "name": "Clinton Mosley",
      "phone": "1-768-578-0868",
      "email": "sagittis.augue@google.edu",
      "country": "Chile",
      "region": "South Chungcheong"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639351460047-dbccb9303f16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80",
      "name": "Helena Yeboah",
      "phone": "+233240227223",
      "email": "tis.augue@google.edu",
      "country": "Ghana",
      "region": "Accra"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1639355572597-0d2d4c6b7182?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1886&q=80",
      "name": "Catherine Darlington",
      "phone": "+233502874520",
      "email": "cathy.darl@itu.co",
      "country": "Canada",
      "region": "Alberta"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[50],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.menu), color: Colors.black),
        title: Text(
          'All Contacts',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: Color(0xff5C5151),),
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Text(
              'Recently Added',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ContactDetailsView(
                    contactDetails: {
                      "image":
                          "https://images.unsplash.com/photo-1639351460047-dbccb9303f16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80",
                      "name": "Helena Yeboah",
                      "phone": "+233240227223",
                      "email": "tis.augue@google.edu",
                      "country": "Ghana",
                      "region": "Accra"
                    },
                  );
                }),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1639351460047-dbccb9303f16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
            ),
            title: Text(
              'Helena Yeboah',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            subtitle: Text(
              '+233240227223',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            trailing: IconButton(color: Colors.white,
              onPressed: null,
              icon: Icon(Icons.more_horiz,color: Colors.white,),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ContactDetailsView(
                    contactDetails: {
                      "image":
                          "https://images.unsplash.com/photo-1639355572597-0d2d4c6b7182?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1886&q=80",
                      "name": "Catherine Darlington",
                      "phone": "+233502874520",
                      "email": "cathy.darl@itu.co",
                      "country": "Canada",
                      "region": "Alberta"
                    },
                  );
                }),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1639355572597-0d2d4c6b7182?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1886&q=80'),
            ),
            title: Text(
              'Catherine Darlington',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            subtitle: Text(
              '+233502874520',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            trailing: IconButton(color: Colors.white,
              onPressed: null,
              icon: Icon(Icons.more_horiz,color: Colors.white,),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Text(
              'Contacts',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          GroupedListView<Map<String, String>, String>(
            shrinkWrap: true,
            elements: data,
            groupBy: (element) => element['name'].toString().substring(0, 1),
            groupSeparatorBuilder: (String groupByValue) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  groupByValue.substring(0, 1),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18,color: Colors.white),
                ),
              ),
            ),
            itemBuilder: (context, Map<String, String> element) {
              // Contact contact = Contact.fromJson(element);
              return Column(
                children: [
                  ListTile(
                    // onTap: null,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                          contactDetails: element,
                          // contact: contact,
                        );
                      }));
                    },
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage("${element['image']}"),
                    ),
                    title: Text(
                      '${element['name']}',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      '${element['phone']}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz, color: Colors.white,)),
                  ),
                  const Divider(
                    indent: 25,
                    thickness: 2,
                  ),
                ],
              );
            },
            itemComparator: (item1, item2) =>
                item1['name']!.compareTo(item2['name']!), // optional
            useStickyGroupSeparators: true, // optional
            floatingHeader: true, // optional
            order: GroupedListOrder.ASC, // optional
          ),
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return CreateContact();
                  }), 
          
      );},
      child: Icon(Icons.add, color: Colors.black,)
      ),
      ),
    );
  }
}
