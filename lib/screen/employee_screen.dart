import 'package:flutter/material.dart';
import 'package:full_course_app/components/custom_app_bar.dart';
import 'package:full_course_app/components/custom_card.dart';

class CardData{
  String name;
  String image;
  CardData({required this.name,required this.image});
}

class EmployeeScreen extends StatefulWidget {
   const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  
  int _selectedIndex = 0;

  final List<String> _tab=["My Dashboard", "My Approval", "Others"];

  Widget _myDashboard(){
    return Center(
      child: Text("My Dashboard"),
    );
  }

  Widget _myApproval(){
    return Center(
      child: Text("My Approval"),
    );
  }

  Widget _getContent(){
    switch(_selectedIndex){
      case 0:
        return _myDashboard();
      case 1:
        return _myApproval();
      default:
        return CardContainer();
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size(double.infinity, 50),
      //   child: CustomAppBar(
      //     name: "Employee Home",
      //     centerTitle: true,
      //     icon1: Icons.notifications_outlined,
      //     isShowIcon1: true,
      //   ),
      // ),
      appBar: AppBar(
        title: Text("Employee Screen"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.purpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://img.freepik.com/free-photo/front-view-business-woman-suit_23-2148603018.jpg?semt=ais_hybrid&w=740&q=80")
                    ),
                    SizedBox(height: 10,),
                    Text("Jane Doe", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("sochetra.hok77@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                    
                  ],
                ),
              ),
              ExpansionTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                children: [
                  ListTile(
                    leading: const Icon(Icons.brightness_6),
                    title: const Text('Theme'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    onTap: () {},
                  ),
                ],
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 0,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 1,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 2,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 3,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 4,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 5,
                iconSufix: Icons.arrow_forward_ios
              ),
              _cardList(
                icon: Icons.dashboard,
                title: "Dashboard",
                index: 6,
                iconSufix: Icons.arrow_forward_ios
              ),
            ],
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",width: 70,height: 70,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jessica Jones",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Flutter developer freelance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color:Colors.grey),),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("View personal profile"),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: List.generate(_tab.length, (index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16, right: 16),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                        color: _selectedIndex == index ? Colors.deepPurple : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _tab[index],
                        style: TextStyle(
                          color: _selectedIndex == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 16),
              _getContent(),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   backgroundColor: Colors.deepPurple,
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.approval),
            label: "Approval"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More"
          ),
        ],
      ),
    );
  }

  Widget _cardList({
    required IconData icon,
    required String title,
    required int index,
    required IconData iconSufix,
  }){
    final isSelected = _selectedIndex == index;
    return ListTile(
      leading: Icon(icon, color: isSelected ? Colors.deepPurple : Colors.grey,),
      title: Text(title, style: TextStyle(color: isSelected ? Colors.deepPurple : Colors.grey),),
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
        // Navigator.pop(context);
        
      },
      trailing: Icon(iconSufix, color: isSelected ? Colors.deepPurple : Colors.grey,),
    );
  }
}


class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<CardData> cardData = [
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test2", image: "https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png"),
    CardData(name: "test3", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test4", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
    CardData(name: "test1", image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Sign-check-icon.png"),
  ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: cardData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12
          ),
          itemBuilder: (context, index) {
            final card = cardData[index];
            return CustomCard(image: NetworkImage(card.image), name: card.name);
          },
        ),
      )
    );
  }
}