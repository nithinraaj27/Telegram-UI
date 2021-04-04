import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        title: Text("Telegram",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search,size: 30,))
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: ExactAssetImage('assets/one.jfif'),
                      ),
                      SizedBox(height: 10,),
                      Text("Alexandra Dardaria",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("+912569874563",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                          Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            tile(msg: "New Group",im: Icons.people),
            tile(msg: "New Seceret Chat",im: Icons.lock),
            tile(msg: "New Broadcast List",im: Icons.speaker_phone_outlined),
            Divider(height: 10,),
            tile(msg: "Contacts",im: Icons.contact_page_sharp),
            tile(msg: "Theming",im: Icons.format_paint),
            tile(msg: "Settings",im: Icons.settings),
            tile(msg: "Telwgram FAQ",im: Icons.question_answer),
          ],
        ),
      ),
      body: Column(
        children: [
          list(url: 'assets/one.jfif',name: "Rose",tym: "11.11pm",desc: "How are u?",msg: "2",isRead: true),
          Divider(height: 0.2,),
          list(url: 'assets/two.jfif',name: "Samanta",tym: "11.11pm",desc: "hi baby",msg: "",isRead: false),
          Divider(height: 0.2,),
          list(url: 'assets/three.jfif',name: "Nadia",tym: "11.11pm",desc: "love u",msg: "2",isRead: true),
          Divider(height: 0.2,),
          list(url: 'assets/four.jfif',name: "Alia",tym: "11.11pm",desc: "miss u <3",msg: "",isRead: false),
          Divider(height: 0.2,),
          list(url: 'assets/five.jfif',name: "Amy",tym: "11.11pm",desc: "baby...",msg: "",isRead: false),
          Divider(height: 0.2,),
          list(url: 'assets/six.jfif',name: "Dani",tym: "11.11pm",desc: "whr r u baby?",msg: "2",isRead: true),
          Divider(height: 0.2,),
          list(url: 'assets/7.jfif',name: "Rose",tym: "11.11pm",desc: "missing u",msg: "",isRead: false),
          Divider(height: 0.2,),
          list(url: 'assets/8.jfif',name: "Anistone",tym: "11.11pm",desc: "hai my love <3",msg: "2",isRead: true),
          Divider(height: 0.2,),
        ],
      ),
    );
  }

  ListTile tile({String msg,IconData im}) {
    return ListTile(
            leading: Icon(im,color: Colors.black54,size: 30,),
            title: Text(msg,style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w800),),
          );
  }

  ListTile list({String url,String name,String tym,String desc,String msg,bool isRead}) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5,left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19
            ),),
            Text(tym,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(desc,style: TextStyle(fontWeight: FontWeight.w500),),
            Container(
                child: Text(msg,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                decoration: BoxDecoration(
                  border: isRead ? Border.all(width: 1) : Border.all(width: 0),
                  borderRadius: BorderRadius.circular(50),
                  color: isRead ? Colors.green : Colors.white,
                ),
            )
          ],
        ),
      ),
    );
  }
}

