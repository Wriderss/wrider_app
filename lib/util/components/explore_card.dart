import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wride_app/util/components/webview.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(0.6),style: BorderStyle.solid,)
        ),
      // height: MediaQuery.of(context).size.height * 0.5,
      // width: MediaQuery.of(context).size.height * 0.4,
      
      padding: EdgeInsets.all(10),
      child: FittedBox(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(image: 
                DecorationImage(image: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg"),fit: BoxFit.cover,),borderRadius:BorderRadius.all(Radius.circular(10)), ),
                height: 90,
                width: 90,
                
              ),
              SizedBox(height: 5,),
              Text("Mayank"),
              SizedBox(height: 5,),
              Text("Anime content-writer",maxLines: 1,overflow: TextOverflow.fade,),
              SizedBox(height: 5,),
              Text("Blog's written: 3"),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
          
                children: [Text("Followers : 3", ),Text("Following : 6")],),
                SizedBox(height: 5,),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ExploreDeep(),));}, child: Text("Check Profile"),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),
                ElevatedButton(onPressed: (){}, child: Text("Follow"),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),)
          
            ],
          ),
        ),
      ),);
  }
}

class ExploreDeep extends StatelessWidget {
  const ExploreDeep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details",style: TextStyle(color: Colors.black)),backgroundColor:Theme.of(context).scaffoldBackgroundColor,elevation: 0,automaticallyImplyLeading: true,iconTheme: IconThemeData(color: Colors.black),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                      decoration: const BoxDecoration(image: 
                      DecorationImage(image: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg"),fit: BoxFit.cover,),borderRadius:BorderRadius.all(Radius.circular(10)), ),
                      height: 120,
                      width: 120,
                      
                    ),
            ),
                  SizedBox(height: 5,),
                  Text("Mayank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 5,),
                  Text("Anime content-writer",maxLines: 1,overflow: TextOverflow.fade,),
                  SizedBox(height: 5,),
                  Text("Blog's written: 3"),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
              
                    children: [Text("Followers : 3", ),Text("Following : 6")],),
                    SizedBox(height: 5,),
                    Divider(thickness: 2),
                    Text("Articles",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    ListTile(title: Text("Naruto Style to defend and fight monsters"),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsWebView(fct: (){}),));},
                   trailing: Icon(Icons.arrow_forward,),
                    leading: CircleAvatar(
                   backgroundImage: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",),  
                   )
                    ),
                    SizedBox(height: 5,),
                    ListTile(title: Text("Naruto Style to defend and fight monsters"),
                    onTap: (){},
                   trailing: Icon(Icons.arrow_forward,),
                    leading: CircleAvatar(
                   backgroundImage: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",),  
                   )
                    ),
                    SizedBox(height: 5,),
                    ListTile(title: Text("Naruto Style to defend and fight monsters"),
                   onTap: (){},
                   trailing: Icon(Icons.arrow_forward,),
                   leading: CircleAvatar(
                   backgroundImage: NetworkImage("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",),  
                   )
                    ),
                    SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}