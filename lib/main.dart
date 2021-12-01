import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const ChatApp(),
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title:const Text("My Trial App"),
        actions:const [
          Icon(Icons.search),Icon(Icons.more),
        ],
      ),
      
   
   body:Column(
     children: [
       chatWidget(
         name: "Sarfowaa",message: "Hello Bebes",time: "08:45",image: "https://scontent.facc6-1.fna.fbcdn.net/v/t1.6435-9/79178745_226435931681629_1205094061489258496_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHS0ITcBPz7DQMiMF_PJIYK87ssPoabvwXzuyw-hpu_Bd62DwQE0ErPpZ04tteT_A-IndaTvdJXlhXh05_5PZQK&_nc_ohc=gI04EMjks44AX-3TsgL&_nc_ht=scontent.facc6-1.fna&oh=66c107435b523fa752517f8af7d104c2&oe=61CC1C74",
       ),
       chatWidget(
         name: "Millash",message: "Have a greate day",time: "12:00",image: "https://scontent.facc6-1.fna.fbcdn.net/v/t1.6435-9/79825491_226436325014923_6021870252973883392_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHc5yPpPIGb8vGAAAOw4ynDSyfdYRIomvlLJ91hEiia-c3I2entwI31IofU6F335yvPCIlAaKNp-fvxXu_lbLA6&_nc_ohc=9USu3atwsPcAX_O1Nrq&_nc_oc=AQm7xXyWbdohQQfIEwBNQM81efWg8uLNjE-lyyXl3xfZllv38Zf2-a8TxL2HOlV_Ikw&_nc_ht=scontent.facc6-1.fna&oh=a2d699bea4916b49f2c1b1512a270645&oe=61CC2870",
       ),
       chatWidget(
         name: "Emilly",message:"Hello Sarfowaa",time: "13:00",image: "https://scontent.facc6-1.fna.fbcdn.net/v/t1.6435-9/78696416_226436151681607_6309064751733276672_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEW3kwKUpblwSAJ5op8itj3hwKYpNLSQtKHApik0tJC0qPZn0mKIP_mhtlC4VLoQUI6oXg9CrkRQzs49aJRlX8y&_nc_ohc=7vo6izX1o4QAX9n9Sp7&tn=C4NYMaNPqU9pv8zC&_nc_ht=scontent.facc6-1.fna&oh=c55c07ec16e1e09ebc551b240f77279a&oe=61CE6614",
       ),
       ]
     ),
     );
  }
}


class chatWidget extends StatelessWidget {
  const chatWidget({
    Key? key,required this.name, required this.message, required this.time,required this.image,
  }) : super(key: key);
  final String name;
  final String message;
  final String time;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.lightBlueAccent,
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage:NetworkImage(image), 
            radius:30,
            ),
            title: Text( name,style: TextStyle(color: Colors.white),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                Text(message,style: TextStyle(color: Colors.white),),
              ],
            ),
             trailing: Text(time,style: TextStyle(color: Colors.white),),
        ),
      )
      ,);
  }
}

